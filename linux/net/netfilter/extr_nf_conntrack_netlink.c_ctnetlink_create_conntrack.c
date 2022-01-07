
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_helper {int (* from_nlattr ) (struct nlattr*,struct nf_conn*) ;} ;
struct nf_conn_tstamp {int start; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {struct nf_conn* master; int status; int proto; scalar_t__ timeout; } ;
struct net {int dummy; } ;


 size_t CTA_HELP ;
 size_t CTA_MARK ;
 size_t CTA_PROTOINFO ;
 size_t CTA_SEQ_ADJ_ORIG ;
 size_t CTA_SEQ_ADJ_REPLY ;
 size_t CTA_STATUS ;
 size_t CTA_SYNPROXY ;
 size_t CTA_TIMEOUT ;
 size_t CTA_TUPLE_MASTER ;
 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct nf_conn* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int HZ ;
 int INT_MAX ;
 int IPS_CONFIRMED ;
 int IPS_EXPECTED_BIT ;
 scalar_t__ IS_ERR (struct nf_conn*) ;
 int RCU_INIT_POINTER (int ,struct nf_conntrack_helper*) ;
 struct nf_conntrack_helper* __nf_conntrack_helper_find (char*,int ,int ) ;
 int __nf_ct_try_assign_helper (struct nf_conn*,int *,int ) ;
 int __set_bit (int ,int *) ;
 int ctnetlink_change_mark (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_protoinfo (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_seq_adj (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_status (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_synproxy (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_parse_help (struct nlattr const* const,char**,struct nlattr**) ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int ,int *) ;
 int ctnetlink_setup_nat (struct nf_conn*,struct nlattr const* const*) ;
 int ktime_get_real_ns () ;
 int memset (int *,int ,int) ;
 struct nf_conn_tstamp* nf_conn_tstamp_find (struct nf_conn*) ;
 struct nf_conn* nf_conntrack_alloc (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,int ) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ;
 int nf_conntrack_free (struct nf_conn*) ;
 int nf_conntrack_hash_check_insert (struct nf_conn*) ;
 int nf_ct_acct_ext_add (struct nf_conn*,int ) ;
 int nf_ct_ecache_ext_add (struct nf_conn*,int ,int ,int ) ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int nf_ct_labels_ext_add (struct nf_conn*) ;
 int nf_ct_protonum (struct nf_conn*) ;
 int nf_ct_tstamp_ext_add (struct nf_conn*,int ) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 int nfct_seqadj_ext_add (struct nf_conn*) ;
 int nfct_synproxy_ext_add (struct nf_conn*) ;
 scalar_t__ nfct_time_stamp ;
 int nla_get_be32 (struct nlattr const* const) ;
 scalar_t__ ntohl (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ request_module (char*,char*) ;
 int stub1 (struct nlattr*,struct nf_conn*) ;

__attribute__((used)) static struct nf_conn *
ctnetlink_create_conntrack(struct net *net,
      const struct nf_conntrack_zone *zone,
      const struct nlattr * const cda[],
      struct nf_conntrack_tuple *otuple,
      struct nf_conntrack_tuple *rtuple,
      u8 u3)
{
 struct nf_conn *ct;
 int err = -EINVAL;
 struct nf_conntrack_helper *helper;
 struct nf_conn_tstamp *tstamp;
 u64 timeout;

 ct = nf_conntrack_alloc(net, zone, otuple, rtuple, GFP_ATOMIC);
 if (IS_ERR(ct))
  return ERR_PTR(-ENOMEM);

 if (!cda[CTA_TIMEOUT])
  goto err1;

 timeout = (u64)ntohl(nla_get_be32(cda[CTA_TIMEOUT])) * HZ;
 if (timeout > INT_MAX)
  timeout = INT_MAX;
 ct->timeout = (u32)timeout + nfct_time_stamp;

 rcu_read_lock();
  if (cda[CTA_HELP]) {
  char *helpname = ((void*)0);
  struct nlattr *helpinfo = ((void*)0);

  err = ctnetlink_parse_help(cda[CTA_HELP], &helpname, &helpinfo);
   if (err < 0)
   goto err2;

  helper = __nf_conntrack_helper_find(helpname, nf_ct_l3num(ct),
          nf_ct_protonum(ct));
  if (helper == ((void*)0)) {
   rcu_read_unlock();
   err = -EOPNOTSUPP;
   goto err1;
  } else {
   struct nf_conn_help *help;

   help = nf_ct_helper_ext_add(ct, GFP_ATOMIC);
   if (help == ((void*)0)) {
    err = -ENOMEM;
    goto err2;
   }

   if (helper->from_nlattr)
    helper->from_nlattr(helpinfo, ct);


   RCU_INIT_POINTER(help->helper, helper);
  }
 } else {

  err = __nf_ct_try_assign_helper(ct, ((void*)0), GFP_ATOMIC);
  if (err < 0)
   goto err2;
 }

 err = ctnetlink_setup_nat(ct, cda);
 if (err < 0)
  goto err2;

 nf_ct_acct_ext_add(ct, GFP_ATOMIC);
 nf_ct_tstamp_ext_add(ct, GFP_ATOMIC);
 nf_ct_ecache_ext_add(ct, 0, 0, GFP_ATOMIC);
 nf_ct_labels_ext_add(ct);
 nfct_seqadj_ext_add(ct);
 nfct_synproxy_ext_add(ct);


 ct->status |= IPS_CONFIRMED;

 if (cda[CTA_STATUS]) {
  err = ctnetlink_change_status(ct, cda);
  if (err < 0)
   goto err2;
 }

 if (cda[CTA_SEQ_ADJ_ORIG] || cda[CTA_SEQ_ADJ_REPLY]) {
  err = ctnetlink_change_seq_adj(ct, cda);
  if (err < 0)
   goto err2;
 }

 memset(&ct->proto, 0, sizeof(ct->proto));
 if (cda[CTA_PROTOINFO]) {
  err = ctnetlink_change_protoinfo(ct, cda);
  if (err < 0)
   goto err2;
 }

 if (cda[CTA_SYNPROXY]) {
  err = ctnetlink_change_synproxy(ct, cda);
  if (err < 0)
   goto err2;
 }







 if (cda[CTA_TUPLE_MASTER]) {
  struct nf_conntrack_tuple master;
  struct nf_conntrack_tuple_hash *master_h;
  struct nf_conn *master_ct;

  err = ctnetlink_parse_tuple(cda, &master, CTA_TUPLE_MASTER,
         u3, ((void*)0));
  if (err < 0)
   goto err2;

  master_h = nf_conntrack_find_get(net, zone, &master);
  if (master_h == ((void*)0)) {
   err = -ENOENT;
   goto err2;
  }
  master_ct = nf_ct_tuplehash_to_ctrack(master_h);
  __set_bit(IPS_EXPECTED_BIT, &ct->status);
  ct->master = master_ct;
 }
 tstamp = nf_conn_tstamp_find(ct);
 if (tstamp)
  tstamp->start = ktime_get_real_ns();

 err = nf_conntrack_hash_check_insert(ct);
 if (err < 0)
  goto err2;

 rcu_read_unlock();

 return ct;

err2:
 rcu_read_unlock();
err1:
 nf_conntrack_free(ct);
 return ERR_PTR(err);
}
