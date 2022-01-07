
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct xdp_mem_allocator {TYPE_1__ mem; } ;
struct rhashtable_compare_arg {scalar_t__ key; } ;



__attribute__((used)) static int xdp_mem_id_cmp(struct rhashtable_compare_arg *arg,
     const void *ptr)
{
 const struct xdp_mem_allocator *xa = ptr;
 u32 mem_id = *(u32 *)arg->key;

 return xa->mem.id != mem_id;
}
