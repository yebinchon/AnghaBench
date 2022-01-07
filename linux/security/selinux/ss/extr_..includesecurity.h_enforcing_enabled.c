
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_state {int dummy; } ;



__attribute__((used)) static inline bool enforcing_enabled(struct selinux_state *state)
{
 return 1;
}
