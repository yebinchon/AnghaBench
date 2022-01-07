
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trigger {int state; } ;


 int TRIGGER_HIT ;
 int TRIGGER_READY ;
 int TRIGGER_WARN_ONCE (struct trigger*,int ) ;
 int trigger_is_available (struct trigger*) ;

__attribute__((used)) static inline void trigger_hit(struct trigger *t)
{
 if (!trigger_is_available(t))
  return;
 TRIGGER_WARN_ONCE(t, TRIGGER_READY);
 t->state = TRIGGER_HIT;
}
