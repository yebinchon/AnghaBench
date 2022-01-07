
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dummy_tracepoint_args {int sock; } ;


 int TCP_ESTATS_TX_RESET ;
 int send_basic_event (int ,int ) ;

int _dummy_tracepoint(struct dummy_tracepoint_args *arg)
{
 if (!arg->sock)
  return 0;

 send_basic_event(arg->sock, TCP_ESTATS_TX_RESET);
 return 0;
}
