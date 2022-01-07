
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {int flags; } ;


 int SCHED_FLAG_SUGOV ;
 int unlikely (int) ;

__attribute__((used)) static inline bool dl_entity_is_special(struct sched_dl_entity *dl_se)
{



 return 0;

}
