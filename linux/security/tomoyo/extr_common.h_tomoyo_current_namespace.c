
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_policy_namespace {int dummy; } ;
struct TYPE_2__ {struct tomoyo_policy_namespace* ns; } ;


 TYPE_1__* tomoyo_domain () ;

__attribute__((used)) static inline struct tomoyo_policy_namespace *tomoyo_current_namespace(void)
{
 return tomoyo_domain()->ns;
}
