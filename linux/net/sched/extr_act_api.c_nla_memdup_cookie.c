
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cookie {int len; int data; } ;
struct nlattr {int dummy; } ;


 int GFP_KERNEL ;
 size_t TCA_ACT_COOKIE ;
 int kfree (struct tc_cookie*) ;
 struct tc_cookie* kzalloc (int,int ) ;
 int nla_len (struct nlattr*) ;
 int nla_memdup (struct nlattr*,int ) ;

__attribute__((used)) static struct tc_cookie *nla_memdup_cookie(struct nlattr **tb)
{
 struct tc_cookie *c = kzalloc(sizeof(*c), GFP_KERNEL);
 if (!c)
  return ((void*)0);

 c->data = nla_memdup(tb[TCA_ACT_COOKIE], GFP_KERNEL);
 if (!c->data) {
  kfree(c);
  return ((void*)0);
 }
 c->len = nla_len(tb[TCA_ACT_COOKIE]);

 return c;
}
