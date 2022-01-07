
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int ns; } ;
struct aa_ns {int dummy; } ;


 struct aa_profile* __first_profile (struct aa_ns*,int ) ;
 int __next_ns (struct aa_ns*,int ) ;
 struct aa_profile* __next_profile (struct aa_profile*) ;

__attribute__((used)) static struct aa_profile *next_profile(struct aa_ns *root,
           struct aa_profile *profile)
{
 struct aa_profile *next = __next_profile(profile);
 if (next)
  return next;


 return __first_profile(root, __next_ns(root, profile->ns));
}
