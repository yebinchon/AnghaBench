
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NODE_HTABLE_SIZE ;

__attribute__((used)) static inline unsigned int tipc_hashfn(u32 addr)
{
 return addr & (NODE_HTABLE_SIZE - 1);
}
