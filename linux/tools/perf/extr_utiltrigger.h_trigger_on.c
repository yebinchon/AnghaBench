
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trigger {int state; } ;


 int TRIGGER_OFF ;
 int TRIGGER_ON ;
 int TRIGGER_WARN_ONCE (struct trigger*,int ) ;

__attribute__((used)) static inline void trigger_on(struct trigger *t)
{
 TRIGGER_WARN_ONCE(t, TRIGGER_OFF);
 t->state = TRIGGER_ON;
}
