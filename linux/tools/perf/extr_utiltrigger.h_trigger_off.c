
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trigger {int state; } ;


 int TRIGGER_OFF ;
 int trigger_is_available (struct trigger*) ;

__attribute__((used)) static inline void trigger_off(struct trigger *t)
{
 if (!trigger_is_available(t))
  return;
 t->state = TRIGGER_OFF;
}
