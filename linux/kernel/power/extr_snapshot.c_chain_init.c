
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chain_allocator {int safe_needed; int gfp_mask; int used_space; int * chain; } ;
typedef int gfp_t ;


 int LINKED_PAGE_DATA_SIZE ;

__attribute__((used)) static void chain_init(struct chain_allocator *ca, gfp_t gfp_mask,
         int safe_needed)
{
 ca->chain = ((void*)0);
 ca->used_space = LINKED_PAGE_DATA_SIZE;
 ca->gfp_mask = gfp_mask;
 ca->safe_needed = safe_needed;
}
