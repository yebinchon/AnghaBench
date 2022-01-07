
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oom_control {int order; } ;



__attribute__((used)) static inline bool is_sysrq_oom(struct oom_control *oc)
{
 return oc->order == -1;
}
