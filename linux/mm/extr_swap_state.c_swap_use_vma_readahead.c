
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ READ_ONCE (int ) ;
 int atomic_read (int *) ;
 int enable_vma_readahead ;
 int nr_rotate_swap ;

__attribute__((used)) static inline bool swap_use_vma_readahead(void)
{
 return READ_ONCE(enable_vma_readahead) && !atomic_read(&nr_rotate_swap);
}
