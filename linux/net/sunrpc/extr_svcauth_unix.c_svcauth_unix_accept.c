
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct user_namespace {int dummy; } ;
struct svc_cred {int cr_flavor; TYPE_5__* cr_group_info; void* cr_gid; int cr_uid; } ;
struct TYPE_8__ {struct kvec* head; } ;
struct TYPE_7__ {struct kvec* head; } ;
struct svc_rqst {struct svc_cred rq_cred; TYPE_4__* rq_xprt; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct kvec {int iov_len; void* iov_base; } ;
typedef void* kgid_t ;
typedef int __be32 ;
struct TYPE_11__ {void** gid; } ;
struct TYPE_10__ {TYPE_3__* xpt_cred; } ;
struct TYPE_9__ {struct user_namespace* user_ns; } ;


 int RPC_AUTH_NULL ;
 int RPC_AUTH_UNIX ;
 int SVC_CLOSE ;
 int SVC_DENIED ;
 int SVC_GARBAGE ;
 int SVC_OK ;
 int UNX_NGROUPS ;
 int XDR_QUADLEN (int) ;
 TYPE_5__* groups_alloc (int) ;
 int groups_sort (TYPE_5__*) ;
 scalar_t__ htonl (int ) ;
 struct user_namespace init_user_ns ;
 void* make_kgid (struct user_namespace*,int) ;
 int make_kuid (struct user_namespace*,int) ;
 int rpc_autherr_badcred ;
 int rpc_autherr_badverf ;
 int svc_getnl (struct kvec*) ;
 scalar_t__ svc_getu32 (struct kvec*) ;
 int svc_putnl (struct kvec*,int ) ;

__attribute__((used)) static int
svcauth_unix_accept(struct svc_rqst *rqstp, __be32 *authp)
{
 struct kvec *argv = &rqstp->rq_arg.head[0];
 struct kvec *resv = &rqstp->rq_res.head[0];
 struct svc_cred *cred = &rqstp->rq_cred;
 struct user_namespace *userns;
 u32 slen, i;
 int len = argv->iov_len;

 if ((len -= 3*4) < 0)
  return SVC_GARBAGE;

 svc_getu32(argv);
 svc_getu32(argv);
 slen = XDR_QUADLEN(svc_getnl(argv));
 if (slen > 64 || (len -= (slen + 3)*4) < 0)
  goto badcred;
 argv->iov_base = (void*)((__be32*)argv->iov_base + slen);
 argv->iov_len -= slen*4;







 userns = (rqstp->rq_xprt && rqstp->rq_xprt->xpt_cred) ?
  rqstp->rq_xprt->xpt_cred->user_ns : &init_user_ns;
 cred->cr_uid = make_kuid(userns, svc_getnl(argv));
 cred->cr_gid = make_kgid(userns, svc_getnl(argv));
 slen = svc_getnl(argv);
 if (slen > UNX_NGROUPS || (len -= (slen + 2)*4) < 0)
  goto badcred;
 cred->cr_group_info = groups_alloc(slen);
 if (cred->cr_group_info == ((void*)0))
  return SVC_CLOSE;
 for (i = 0; i < slen; i++) {
  kgid_t kgid = make_kgid(userns, svc_getnl(argv));
  cred->cr_group_info->gid[i] = kgid;
 }
 groups_sort(cred->cr_group_info);
 if (svc_getu32(argv) != htonl(RPC_AUTH_NULL) || svc_getu32(argv) != 0) {
  *authp = rpc_autherr_badverf;
  return SVC_DENIED;
 }


 svc_putnl(resv, RPC_AUTH_NULL);
 svc_putnl(resv, 0);

 rqstp->rq_cred.cr_flavor = RPC_AUTH_UNIX;
 return SVC_OK;

badcred:
 *authp = rpc_autherr_badcred;
 return SVC_DENIED;
}
