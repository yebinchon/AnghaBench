
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int * a_ops; int i_mmap_writable; int i_pages; } ;


 unsigned int DIV_ROUND_UP (unsigned long,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SWAP_ADDRESS_SPACE_PAGES ;
 int XA_FLAGS_LOCK_IRQ ;
 int atomic_set (int *,int ) ;
 struct address_space* kvcalloc (unsigned int,int,int ) ;
 int mapping_set_no_writeback_tags (struct address_space*) ;
 unsigned int* nr_swapper_spaces ;
 int swap_aops ;
 struct address_space** swapper_spaces ;
 int xa_init_flags (int *,int ) ;

int init_swap_address_space(unsigned int type, unsigned long nr_pages)
{
 struct address_space *spaces, *space;
 unsigned int i, nr;

 nr = DIV_ROUND_UP(nr_pages, SWAP_ADDRESS_SPACE_PAGES);
 spaces = kvcalloc(nr, sizeof(struct address_space), GFP_KERNEL);
 if (!spaces)
  return -ENOMEM;
 for (i = 0; i < nr; i++) {
  space = spaces + i;
  xa_init_flags(&space->i_pages, XA_FLAGS_LOCK_IRQ);
  atomic_set(&space->i_mmap_writable, 0);
  space->a_ops = &swap_aops;

  mapping_set_no_writeback_tags(space);
 }
 nr_swapper_spaces[type] = nr;
 swapper_spaces[type] = spaces;

 return 0;
}
