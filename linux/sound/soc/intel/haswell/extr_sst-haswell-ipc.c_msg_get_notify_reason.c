
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPC_STG_TYPE_MASK ;
 int IPC_STG_TYPE_SHIFT ;

__attribute__((used)) static inline u32 msg_get_notify_reason(u32 msg)
{
 return (msg & IPC_STG_TYPE_MASK) >> IPC_STG_TYPE_SHIFT;
}
