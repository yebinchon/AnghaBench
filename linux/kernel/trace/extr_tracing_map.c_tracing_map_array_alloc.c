
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map_array {int entry_size_shift; int entries_per_page; unsigned int n_pages; int entry_shift; int entry_mask; void** pages; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 void* fls (unsigned int) ;
 scalar_t__ get_zeroed_page (int ) ;
 void** kcalloc (int,int,int ) ;
 struct tracing_map_array* kzalloc (int,int ) ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 int tracing_map_array_free (struct tracing_map_array*) ;

struct tracing_map_array *tracing_map_array_alloc(unsigned int n_elts,
        unsigned int entry_size)
{
 struct tracing_map_array *a;
 unsigned int i;

 a = kzalloc(sizeof(*a), GFP_KERNEL);
 if (!a)
  return ((void*)0);

 a->entry_size_shift = fls(roundup_pow_of_two(entry_size) - 1);
 a->entries_per_page = PAGE_SIZE / (1 << a->entry_size_shift);
 a->n_pages = n_elts / a->entries_per_page;
 if (!a->n_pages)
  a->n_pages = 1;
 a->entry_shift = fls(a->entries_per_page) - 1;
 a->entry_mask = (1 << a->entry_shift) - 1;

 a->pages = kcalloc(a->n_pages, sizeof(void *), GFP_KERNEL);
 if (!a->pages)
  goto free;

 for (i = 0; i < a->n_pages; i++) {
  a->pages[i] = (void *)get_zeroed_page(GFP_KERNEL);
  if (!a->pages[i])
   goto free;
 }
 out:
 return a;
 free:
 tracing_map_array_free(a);
 a = ((void*)0);

 goto out;
}
