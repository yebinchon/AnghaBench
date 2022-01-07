
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int pr_debug (char*) ;
 int read (int,void*,int) ;
 scalar_t__ repipe ;
 int write (int ,void*,int) ;

__attribute__((used)) static int __do_read(int fd, void *buf, int size)
{
 int rsize = size;

 while (size) {
  int ret = read(fd, buf, size);

  if (ret <= 0)
   return -1;

  if (repipe) {
   int retw = write(STDOUT_FILENO, buf, ret);

   if (retw <= 0 || retw != ret) {
    pr_debug("repiping input file");
    return -1;
   }
  }

  size -= ret;
  buf += ret;
 }

 return rsize;
}
