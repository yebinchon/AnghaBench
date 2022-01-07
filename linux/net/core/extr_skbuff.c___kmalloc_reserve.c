
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_NOMEMALLOC ;
 int __GFP_NOWARN ;
 int gfp_pfmemalloc_allowed (int) ;
 void* kmalloc_node_track_caller (size_t,int,int) ;

__attribute__((used)) static void *__kmalloc_reserve(size_t size, gfp_t flags, int node,
          unsigned long ip, bool *pfmemalloc)
{
 void *obj;
 bool ret_pfmemalloc = 0;





 obj = kmalloc_node_track_caller(size,
     flags | __GFP_NOMEMALLOC | __GFP_NOWARN,
     node);
 if (obj || !(gfp_pfmemalloc_allowed(flags)))
  goto out;


 ret_pfmemalloc = 1;
 obj = kmalloc_node_track_caller(size, flags, node);

out:
 if (pfmemalloc)
  *pfmemalloc = ret_pfmemalloc;

 return obj;
}
