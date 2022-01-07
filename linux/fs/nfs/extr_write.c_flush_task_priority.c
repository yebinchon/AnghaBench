
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_PRIORITY_HIGH ;
 int RPC_PRIORITY_LOW ;
 int RPC_PRIORITY_NORMAL ;

__attribute__((used)) static int flush_task_priority(int how)
{
 switch (how & (129|128)) {
  case 129:
   return RPC_PRIORITY_HIGH;
  case 128:
   return RPC_PRIORITY_LOW;
 }
 return RPC_PRIORITY_NORMAL;
}
