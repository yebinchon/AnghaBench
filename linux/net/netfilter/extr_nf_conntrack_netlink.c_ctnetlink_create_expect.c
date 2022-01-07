
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conntrack_expect {int dummy; } ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;


 size_t CTA_EXPECT_HELP_NAME ;
 int CTA_EXPECT_MASK ;
 int CTA_EXPECT_MASTER ;
 int CTA_EXPECT_TUPLE ;
 int EAGAIN ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct nf_conntrack_expect*) ;
 int PTR_ERR (struct nf_conntrack_expect*) ;
 struct nf_conntrack_helper* __nf_conntrack_helper_find (char const*,int ,int ) ;
 struct nf_conntrack_expect* ctnetlink_alloc_expect (struct nlattr const* const*,struct nf_conn*,struct nf_conntrack_helper*,struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,int ,int ,int *) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple*) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 int nf_ct_expect_related_report (struct nf_conntrack_expect*,int ,int,int ) ;
 int nf_ct_protonum (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 char* nla_data (struct nlattr const* const) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ request_module (char*,char const*) ;

__attribute__((used)) static int
ctnetlink_create_expect(struct net *net,
   const struct nf_conntrack_zone *zone,
   const struct nlattr * const cda[],
   u_int8_t u3, u32 portid, int report)
{
 struct nf_conntrack_tuple tuple, mask, master_tuple;
 struct nf_conntrack_tuple_hash *h = ((void*)0);
 struct nf_conntrack_helper *helper = ((void*)0);
 struct nf_conntrack_expect *exp;
 struct nf_conn *ct;
 int err;


 err = ctnetlink_parse_tuple(cda, &tuple, CTA_EXPECT_TUPLE,
        u3, ((void*)0));
 if (err < 0)
  return err;
 err = ctnetlink_parse_tuple(cda, &mask, CTA_EXPECT_MASK,
        u3, ((void*)0));
 if (err < 0)
  return err;
 err = ctnetlink_parse_tuple(cda, &master_tuple, CTA_EXPECT_MASTER,
        u3, ((void*)0));
 if (err < 0)
  return err;


 h = nf_conntrack_find_get(net, zone, &master_tuple);
 if (!h)
  return -ENOENT;
 ct = nf_ct_tuplehash_to_ctrack(h);

 rcu_read_lock();
 if (cda[CTA_EXPECT_HELP_NAME]) {
  const char *helpname = nla_data(cda[CTA_EXPECT_HELP_NAME]);

  helper = __nf_conntrack_helper_find(helpname, u3,
          nf_ct_protonum(ct));
  if (helper == ((void*)0)) {
   rcu_read_unlock();
   err = -EOPNOTSUPP;
   goto err_ct;
  }
 }

 exp = ctnetlink_alloc_expect(cda, ct, helper, &tuple, &mask);
 if (IS_ERR(exp)) {
  err = PTR_ERR(exp);
  goto err_rcu;
 }

 err = nf_ct_expect_related_report(exp, portid, report, 0);
 nf_ct_expect_put(exp);
err_rcu:
 rcu_read_unlock();
err_ct:
 nf_ct_put(ct);
 return err;
}
