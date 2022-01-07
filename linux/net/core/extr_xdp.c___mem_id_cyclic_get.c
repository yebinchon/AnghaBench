
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int ENOSPC ;
 int MEM_ID_MAX ;
 int MEM_ID_MIN ;
 int ida_simple_get (int *,int,int ,int ) ;
 int mem_id_next ;
 int mem_id_pool ;

__attribute__((used)) static int __mem_id_cyclic_get(gfp_t gfp)
{
 int retries = 1;
 int id;

again:
 id = ida_simple_get(&mem_id_pool, mem_id_next, MEM_ID_MAX, gfp);
 if (id < 0) {
  if (id == -ENOSPC) {

   if (retries--) {
    mem_id_next = MEM_ID_MIN;
    goto again;
   }
  }
  return id;
 }
 mem_id_next = id + 1;

 return id;
}
