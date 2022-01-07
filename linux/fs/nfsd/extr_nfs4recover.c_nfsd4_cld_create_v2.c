
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct xdr_netobj {int * data; scalar_t__ len; } ;
struct nfsd_net {struct cld_net* cld_net; } ;
struct TYPE_15__ {char* cr_raw_principal; char* cr_principal; } ;
struct TYPE_14__ {scalar_t__ len; int * data; } ;
struct nfs4_client {int cl_flags; TYPE_4__ cl_cred; TYPE_3__ cl_name; int net; } ;
struct crypto_shash {int dummy; } ;
struct TYPE_16__ {scalar_t__ cp_len; int cp_data; } ;
struct TYPE_13__ {int cn_id; scalar_t__ cn_len; } ;
struct TYPE_17__ {TYPE_5__ cc_princhash; TYPE_2__ cc_name; } ;
struct TYPE_18__ {TYPE_6__ cm_clntinfo; } ;
struct cld_msg_v2 {int cm_status; TYPE_7__ cm_u; int cm_cmd; } ;
struct TYPE_12__ {struct cld_msg_v2 cu_msg_v2; } ;
struct cld_upcall {TYPE_1__ cu_u; } ;
struct cld_net {int cn_pipe; struct crypto_shash* cn_tfm; } ;
struct TYPE_19__ {struct crypto_shash* tfm; } ;


 int Cld_Create ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NFSD4_CLIENT_STABLE ;
 int SHASH_DESC_ON_STACK (TYPE_8__*,struct crypto_shash*) ;
 struct cld_upcall* alloc_cld_upcall (struct nfsd_net*) ;
 int cld_pipe_upcall (int ,struct cld_msg_v2*) ;
 int crypto_shash_digest (TYPE_8__*,char*,int ,int *) ;
 scalar_t__ crypto_shash_digestsize (struct crypto_shash*) ;
 TYPE_8__* desc ;
 int free_cld_upcall (struct cld_upcall*) ;
 int kfree (int *) ;
 int * kmalloc (scalar_t__,int ) ;
 int memcpy (int ,int *,scalar_t__) ;
 struct nfsd_net* net_generic (int ,int ) ;
 int nfsd_net_id ;
 int pr_err (char*,int) ;
 int set_bit (int ,int *) ;
 int shash_desc_zero (TYPE_8__*) ;
 int strlen (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
nfsd4_cld_create_v2(struct nfs4_client *clp)
{
 int ret;
 struct cld_upcall *cup;
 struct nfsd_net *nn = net_generic(clp->net, nfsd_net_id);
 struct cld_net *cn = nn->cld_net;
 struct cld_msg_v2 *cmsg;
 struct crypto_shash *tfm = cn->cn_tfm;
 struct xdr_netobj cksum;
 char *principal = ((void*)0);
 SHASH_DESC_ON_STACK(desc, tfm);


 if (test_bit(NFSD4_CLIENT_STABLE, &clp->cl_flags))
  return;

 cup = alloc_cld_upcall(nn);
 if (!cup) {
  ret = -ENOMEM;
  goto out_err;
 }

 cmsg = &cup->cu_u.cu_msg_v2;
 cmsg->cm_cmd = Cld_Create;
 cmsg->cm_u.cm_clntinfo.cc_name.cn_len = clp->cl_name.len;
 memcpy(cmsg->cm_u.cm_clntinfo.cc_name.cn_id, clp->cl_name.data,
   clp->cl_name.len);
 if (clp->cl_cred.cr_raw_principal)
  principal = clp->cl_cred.cr_raw_principal;
 else if (clp->cl_cred.cr_principal)
  principal = clp->cl_cred.cr_principal;
 if (principal) {
  desc->tfm = tfm;
  cksum.len = crypto_shash_digestsize(tfm);
  cksum.data = kmalloc(cksum.len, GFP_KERNEL);
  if (cksum.data == ((void*)0)) {
   ret = -ENOMEM;
   goto out;
  }
  ret = crypto_shash_digest(desc, principal, strlen(principal),
       cksum.data);
  shash_desc_zero(desc);
  if (ret) {
   kfree(cksum.data);
   goto out;
  }
  cmsg->cm_u.cm_clntinfo.cc_princhash.cp_len = cksum.len;
  memcpy(cmsg->cm_u.cm_clntinfo.cc_princhash.cp_data,
         cksum.data, cksum.len);
  kfree(cksum.data);
 } else
  cmsg->cm_u.cm_clntinfo.cc_princhash.cp_len = 0;

 ret = cld_pipe_upcall(cn->cn_pipe, cmsg);
 if (!ret) {
  ret = cmsg->cm_status;
  set_bit(NFSD4_CLIENT_STABLE, &clp->cl_flags);
 }

out:
 free_cld_upcall(cup);
out_err:
 if (ret)
  pr_err("NFSD: Unable to create client record on stable storage: %d\n",
    ret);
}
