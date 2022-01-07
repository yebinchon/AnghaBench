
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef scalar_t__ u8 ;
struct xfrm_address_filter {int dplen; int splen; int family; int daddr; int saddr; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_x_filter {int sadb_x_filter_dplen; int sadb_x_filter_splen; int sadb_x_filter_family; int sadb_x_filter_daddr; int sadb_x_filter_saddr; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_version; int sadb_msg_satype; } ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ u; int done; int * dump; int msg_portid; int msg_version; } ;
struct pfkey_sock {int dump_lock; TYPE_2__ dump; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SADB_X_EXT_FILTER ;
 struct xfrm_address_filter* kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pfkey_do_dump (struct pfkey_sock*) ;
 int * pfkey_dump_sa ;
 int pfkey_dump_sa_done ;
 scalar_t__ pfkey_satype2proto (int ) ;
 struct pfkey_sock* pfkey_sk (struct sock*) ;
 int xfrm_state_walk_init (int *,scalar_t__,struct xfrm_address_filter*) ;

__attribute__((used)) static int pfkey_dump(struct sock *sk, struct sk_buff *skb, const struct sadb_msg *hdr, void * const *ext_hdrs)
{
 u8 proto;
 struct xfrm_address_filter *filter = ((void*)0);
 struct pfkey_sock *pfk = pfkey_sk(sk);

 mutex_lock(&pfk->dump_lock);
 if (pfk->dump.dump != ((void*)0)) {
  mutex_unlock(&pfk->dump_lock);
  return -EBUSY;
 }

 proto = pfkey_satype2proto(hdr->sadb_msg_satype);
 if (proto == 0) {
  mutex_unlock(&pfk->dump_lock);
  return -EINVAL;
 }

 if (ext_hdrs[SADB_X_EXT_FILTER - 1]) {
  struct sadb_x_filter *xfilter = ext_hdrs[SADB_X_EXT_FILTER - 1];

  filter = kmalloc(sizeof(*filter), GFP_KERNEL);
  if (filter == ((void*)0)) {
   mutex_unlock(&pfk->dump_lock);
   return -ENOMEM;
  }

  memcpy(&filter->saddr, &xfilter->sadb_x_filter_saddr,
         sizeof(xfrm_address_t));
  memcpy(&filter->daddr, &xfilter->sadb_x_filter_daddr,
         sizeof(xfrm_address_t));
  filter->family = xfilter->sadb_x_filter_family;
  filter->splen = xfilter->sadb_x_filter_splen;
  filter->dplen = xfilter->sadb_x_filter_dplen;
 }

 pfk->dump.msg_version = hdr->sadb_msg_version;
 pfk->dump.msg_portid = hdr->sadb_msg_pid;
 pfk->dump.dump = pfkey_dump_sa;
 pfk->dump.done = pfkey_dump_sa_done;
 xfrm_state_walk_init(&pfk->dump.u.state, proto, filter);
 mutex_unlock(&pfk->dump_lock);

 return pfkey_do_dump(pfk);
}
