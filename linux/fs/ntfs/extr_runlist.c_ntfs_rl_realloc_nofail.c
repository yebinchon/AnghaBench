
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int runlist_element ;


 int BUG_ON (int) ;
 int PAGE_ALIGN (int) ;
 scalar_t__ likely (int ) ;
 int memcpy (int *,int *,int) ;
 int ntfs_free (int *) ;
 int * ntfs_malloc_nofs_nofail (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline runlist_element *ntfs_rl_realloc_nofail(runlist_element *rl,
  int old_size, int new_size)
{
 runlist_element *new_rl;

 old_size = PAGE_ALIGN(old_size * sizeof(*rl));
 new_size = PAGE_ALIGN(new_size * sizeof(*rl));
 if (old_size == new_size)
  return rl;

 new_rl = ntfs_malloc_nofs_nofail(new_size);
 BUG_ON(!new_rl);

 if (likely(rl != ((void*)0))) {
  if (unlikely(old_size > new_size))
   old_size = new_size;
  memcpy(new_rl, rl, old_size);
  ntfs_free(rl);
 }
 return new_rl;
}
