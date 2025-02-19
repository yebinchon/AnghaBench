
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_KERNEL ;
 int __GFP_FS ;
 int __GFP_IO ;
 void* kvmalloc (size_t,int) ;
 int memalloc_nofs_restore (unsigned int) ;
 unsigned int memalloc_nofs_save () ;
 int memalloc_noio_restore (unsigned int) ;
 unsigned int memalloc_noio_save () ;

void *ceph_kvmalloc(size_t size, gfp_t flags)
{
 void *p;

 if ((flags & (__GFP_IO | __GFP_FS)) == (__GFP_IO | __GFP_FS)) {
  p = kvmalloc(size, flags);
 } else if ((flags & (__GFP_IO | __GFP_FS)) == __GFP_IO) {
  unsigned int nofs_flag = memalloc_nofs_save();
  p = kvmalloc(size, GFP_KERNEL);
  memalloc_nofs_restore(nofs_flag);
 } else {
  unsigned int noio_flag = memalloc_noio_save();
  p = kvmalloc(size, GFP_KERNEL);
  memalloc_noio_restore(noio_flag);
 }

 return p;
}
