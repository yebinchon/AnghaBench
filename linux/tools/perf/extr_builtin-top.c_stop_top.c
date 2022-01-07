
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done ;
 int session_done ;

__attribute__((used)) static void stop_top(void)
{
 session_done = 1;
 done = 1;
}
