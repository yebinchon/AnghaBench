
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_defact {int tcfd_defdata; } ;
struct nlattr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SIMP_MAX_DATA ;
 int kzalloc (int ,int ) ;
 int nla_strlcpy (int ,struct nlattr const*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int alloc_defdata(struct tcf_defact *d, const struct nlattr *defdata)
{
 d->tcfd_defdata = kzalloc(SIMP_MAX_DATA, GFP_KERNEL);
 if (unlikely(!d->tcfd_defdata))
  return -ENOMEM;
 nla_strlcpy(d->tcfd_defdata, defdata, SIMP_MAX_DATA);
 return 0;
}
