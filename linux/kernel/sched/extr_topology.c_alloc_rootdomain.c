
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_domain {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ init_rootdomain (struct root_domain*) ;
 int kfree (struct root_domain*) ;
 struct root_domain* kzalloc (int,int ) ;

__attribute__((used)) static struct root_domain *alloc_rootdomain(void)
{
 struct root_domain *rd;

 rd = kzalloc(sizeof(*rd), GFP_KERNEL);
 if (!rd)
  return ((void*)0);

 if (init_rootdomain(rd) != 0) {
  kfree(rd);
  return ((void*)0);
 }

 return rd;
}
