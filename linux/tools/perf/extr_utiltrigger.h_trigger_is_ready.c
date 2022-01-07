
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trigger {scalar_t__ state; } ;


 scalar_t__ TRIGGER_READY ;

__attribute__((used)) static inline bool trigger_is_ready(struct trigger *t)
{
 return t->state == TRIGGER_READY;
}
