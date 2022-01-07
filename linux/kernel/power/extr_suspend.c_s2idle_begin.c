
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S2IDLE_STATE_NONE ;
 int s2idle_state ;

__attribute__((used)) static void s2idle_begin(void)
{
 s2idle_state = S2IDLE_STATE_NONE;
}
