
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int css; int flags; } ;


 int CS_ONLINE ;
 int css_is_dying (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool is_cpuset_online(struct cpuset *cs)
{
 return test_bit(CS_ONLINE, &cs->flags) && !css_is_dying(&cs->css);
}
