
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 scalar_t__ EINTR ;
 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 scalar_t__ errno ;
 void* mmap (int *,int,int ,int ,int,int) ;
 int munmap (void*,int) ;
 int page_size ;
 scalar_t__ pwrite (int,void*,int,int) ;

int copyfile_offset(int ifd, loff_t off_in, int ofd, loff_t off_out, u64 size)
{
 void *ptr;
 loff_t pgoff;

 pgoff = off_in & ~(page_size - 1);
 off_in -= pgoff;

 ptr = mmap(((void*)0), off_in + size, PROT_READ, MAP_PRIVATE, ifd, pgoff);
 if (ptr == MAP_FAILED)
  return -1;

 while (size) {
  ssize_t ret = pwrite(ofd, ptr + off_in, size, off_out);
  if (ret < 0 && errno == EINTR)
   continue;
  if (ret <= 0)
   break;

  size -= ret;
  off_in += ret;
  off_out += ret;
 }
 munmap(ptr, off_in + size);

 return size ? -1 : 0;
}
