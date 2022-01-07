
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int timeout; } ;


 scalar_t__ del_timer (int *) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 int nf_ct_unlink_expect (struct nf_conntrack_expect*) ;

bool nf_ct_remove_expect(struct nf_conntrack_expect *exp)
{
 if (del_timer(&exp->timeout)) {
  nf_ct_unlink_expect(exp);
  nf_ct_expect_put(exp);
  return 1;
 }
 return 0;
}
