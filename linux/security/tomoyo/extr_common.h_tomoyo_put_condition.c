
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int users; } ;
struct tomoyo_condition {TYPE_1__ head; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void tomoyo_put_condition(struct tomoyo_condition *cond)
{
 if (cond)
  atomic_dec(&cond->head.users);
}
