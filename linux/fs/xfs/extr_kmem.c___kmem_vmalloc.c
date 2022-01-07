
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;
typedef int gfp_t ;


 int KM_NOFS ;
 int PAGE_KERNEL ;
 void* __vmalloc (size_t,int ,int ) ;
 int kmem_flags_convert (int) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;

__attribute__((used)) static void *
__kmem_vmalloc(size_t size, xfs_km_flags_t flags)
{
 unsigned nofs_flag = 0;
 void *ptr;
 gfp_t lflags = kmem_flags_convert(flags);

 if (flags & KM_NOFS)
  nofs_flag = memalloc_nofs_save();

 ptr = __vmalloc(size, lflags, PAGE_KERNEL);

 if (flags & KM_NOFS)
  memalloc_nofs_restore(nofs_flag);

 return ptr;
}
