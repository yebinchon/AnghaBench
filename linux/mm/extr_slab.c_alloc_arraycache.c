
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array_cache {int dummy; } ;
typedef int gfp_t ;


 int init_arraycache (struct array_cache*,int,int) ;
 struct array_cache* kmalloc_node (size_t,int ,int) ;
 int kmemleak_no_scan (struct array_cache*) ;

__attribute__((used)) static struct array_cache *alloc_arraycache(int node, int entries,
         int batchcount, gfp_t gfp)
{
 size_t memsize = sizeof(void *) * entries + sizeof(struct array_cache);
 struct array_cache *ac = ((void*)0);

 ac = kmalloc_node(memsize, gfp, node);







 kmemleak_no_scan(ac);
 init_arraycache(ac, entries, batchcount);
 return ac;
}
