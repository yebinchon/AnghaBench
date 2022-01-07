
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xdr_netobj {scalar_t__ len; int data; } ;
struct TYPE_4__ {scalar_t__ len; int * data; } ;
struct nlm_share {int s_mode; int s_access; struct nlm_share* s_next; TYPE_2__ s_owner; struct nlm_host* s_host; struct nlm_file* s_file; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {struct nlm_share* f_shares; } ;
struct TYPE_3__ {struct xdr_netobj oh; } ;
struct nlm_args {int fsm_access; int fsm_mode; TYPE_1__ lock; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 struct nlm_share* kmalloc (scalar_t__,int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 scalar_t__ nlm_cmp_owner (struct nlm_share*,struct xdr_netobj*) ;
 int nlm_granted ;
 int nlm_lck_denied ;
 int nlm_lck_denied_nolocks ;

__be32
nlmsvc_share_file(struct nlm_host *host, struct nlm_file *file,
   struct nlm_args *argp)
{
 struct nlm_share *share;
 struct xdr_netobj *oh = &argp->lock.oh;
 u8 *ohdata;

 for (share = file->f_shares; share; share = share->s_next) {
  if (share->s_host == host && nlm_cmp_owner(share, oh))
   goto update;
  if ((argp->fsm_access & share->s_mode)
   || (argp->fsm_mode & share->s_access ))
   return nlm_lck_denied;
 }

 share = kmalloc(sizeof(*share) + oh->len,
      GFP_KERNEL);
 if (share == ((void*)0))
  return nlm_lck_denied_nolocks;


 ohdata = (u8 *) (share + 1);
 memcpy(ohdata, oh->data, oh->len);

 share->s_file = file;
 share->s_host = host;
 share->s_owner.data = ohdata;
 share->s_owner.len = oh->len;
 share->s_next = file->f_shares;
 file->f_shares = share;

update:
 share->s_access = argp->fsm_access;
 share->s_mode = argp->fsm_mode;
 return nlm_granted;
}
