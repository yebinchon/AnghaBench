
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_helper {char* name; int (* from_nlattr ) (struct nlattr*,struct nf_conn*) ;} ;
struct nf_conn_help {struct nf_conntrack_helper* helper; } ;
struct nf_conn {scalar_t__ master; } ;


 size_t CTA_HELP ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int RCU_INIT_POINTER (struct nf_conntrack_helper*,int *) ;
 struct nf_conntrack_helper* __nf_conntrack_helper_find (char*,int ,int ) ;
 int ctnetlink_parse_help (struct nlattr const* const,char**,struct nlattr**) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int nf_ct_protonum (struct nf_conn*) ;
 int nf_ct_remove_expectations (struct nf_conn*) ;
 struct nf_conn_help* nfct_help (struct nf_conn*) ;
 struct nf_conntrack_helper* rcu_dereference (struct nf_conntrack_helper*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int strcmp (char*,char*) ;
 int stub1 (struct nlattr*,struct nf_conn*) ;

__attribute__((used)) static int ctnetlink_change_helper(struct nf_conn *ct,
       const struct nlattr * const cda[])
{
 struct nf_conntrack_helper *helper;
 struct nf_conn_help *help = nfct_help(ct);
 char *helpname = ((void*)0);
 struct nlattr *helpinfo = ((void*)0);
 int err;

 err = ctnetlink_parse_help(cda[CTA_HELP], &helpname, &helpinfo);
 if (err < 0)
  return err;


 if (ct->master) {




  err = -EBUSY;
  if (help) {
   rcu_read_lock();
   helper = rcu_dereference(help->helper);
   if (helper && !strcmp(helper->name, helpname))
    err = 0;
   rcu_read_unlock();
  }

  return err;
 }

 if (!strcmp(helpname, "")) {
  if (help && help->helper) {

   nf_ct_remove_expectations(ct);
   RCU_INIT_POINTER(help->helper, ((void*)0));
  }

  return 0;
 }

 rcu_read_lock();
 helper = __nf_conntrack_helper_find(helpname, nf_ct_l3num(ct),
         nf_ct_protonum(ct));
 if (helper == ((void*)0)) {
  rcu_read_unlock();
  return -EOPNOTSUPP;
 }

 if (help) {
  if (help->helper == helper) {

   if (helper->from_nlattr)
    helper->from_nlattr(helpinfo, ct);
   err = 0;
  } else
   err = -EBUSY;
 } else {

  err = -EOPNOTSUPP;
 }

 rcu_read_unlock();
 return err;
}
