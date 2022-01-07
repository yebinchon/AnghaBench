
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kimage {unsigned long nr_segments; scalar_t__ type; TYPE_1__* segment; } ;
struct TYPE_4__ {int end; int start; } ;
struct TYPE_3__ {unsigned long mem; unsigned long memsz; scalar_t__ bufsz; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 unsigned long KEXEC_DESTINATION_MEMORY_LIMIT ;
 scalar_t__ KEXEC_TYPE_CRASH ;
 unsigned long PAGE_COUNT (scalar_t__) ;
 unsigned long PAGE_MASK ;
 TYPE_2__ crashk_res ;
 unsigned long phys_to_boot_phys (int ) ;
 unsigned long totalram_pages () ;

int sanity_check_segment_list(struct kimage *image)
{
 int i;
 unsigned long nr_segments = image->nr_segments;
 unsigned long total_pages = 0;
 unsigned long nr_pages = totalram_pages();
 for (i = 0; i < nr_segments; i++) {
  unsigned long mstart, mend;

  mstart = image->segment[i].mem;
  mend = mstart + image->segment[i].memsz;
  if (mstart > mend)
   return -EADDRNOTAVAIL;
  if ((mstart & ~PAGE_MASK) || (mend & ~PAGE_MASK))
   return -EADDRNOTAVAIL;
  if (mend >= KEXEC_DESTINATION_MEMORY_LIMIT)
   return -EADDRNOTAVAIL;
 }






 for (i = 0; i < nr_segments; i++) {
  unsigned long mstart, mend;
  unsigned long j;

  mstart = image->segment[i].mem;
  mend = mstart + image->segment[i].memsz;
  for (j = 0; j < i; j++) {
   unsigned long pstart, pend;

   pstart = image->segment[j].mem;
   pend = pstart + image->segment[j].memsz;

   if ((mend > pstart) && (mstart < pend))
    return -EINVAL;
  }
 }






 for (i = 0; i < nr_segments; i++) {
  if (image->segment[i].bufsz > image->segment[i].memsz)
   return -EINVAL;
 }






 for (i = 0; i < nr_segments; i++) {
  if (PAGE_COUNT(image->segment[i].memsz) > nr_pages / 2)
   return -EINVAL;

  total_pages += PAGE_COUNT(image->segment[i].memsz);
 }

 if (total_pages > nr_pages / 2)
  return -EINVAL;
 if (image->type == KEXEC_TYPE_CRASH) {
  for (i = 0; i < nr_segments; i++) {
   unsigned long mstart, mend;

   mstart = image->segment[i].mem;
   mend = mstart + image->segment[i].memsz - 1;

   if ((mstart < phys_to_boot_phys(crashk_res.start)) ||
       (mend > phys_to_boot_phys(crashk_res.end)))
    return -EADDRNOTAVAIL;
  }
 }

 return 0;
}
