
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tick_broadcast_state { ____Placeholder_tick_broadcast_state } tick_broadcast_state ;


 int EBUSY ;

__attribute__((used)) static inline int
__tick_broadcast_oneshot_control(enum tick_broadcast_state state)
{
 return -EBUSY;
}
