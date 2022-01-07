
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class {int dummy; } ;



__attribute__((used)) static inline unsigned long
lockdep_count_backward_deps(struct lock_class *class)
{
 return 0;
}
