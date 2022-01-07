
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPC_MODULE_OPERATION_MASK ;
 int IPC_MODULE_OPERATION_SHIFT ;

__attribute__((used)) static inline u32 msg_get_module_operation(u32 msg)
{
 return (msg & IPC_MODULE_OPERATION_MASK) >> IPC_MODULE_OPERATION_SHIFT;
}
