
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPC_GLB_TYPE_MASK ;
 int IPC_GLB_TYPE_SHIFT ;

__attribute__((used)) static inline u32 msg_get_global_type(u32 msg)
{
 return (msg & IPC_GLB_TYPE_MASK) >> IPC_GLB_TYPE_SHIFT;
}
