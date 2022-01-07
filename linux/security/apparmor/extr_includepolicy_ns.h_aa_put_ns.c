
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int unconfined; } ;


 int aa_put_profile (int ) ;

__attribute__((used)) static inline void aa_put_ns(struct aa_ns *ns)
{
 if (ns)
  aa_put_profile(ns->unconfined);
}
