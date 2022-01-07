
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VDSO__MAP_NAME ;
 scalar_t__ fflush (int ) ;
 scalar_t__ find_map (void**,void**,int ) ;
 size_t fwrite (void*,int,size_t,int ) ;
 int stdout ;

int main(void)
{
 void *start, *end;
 size_t size, written;

 if (find_map(&start, &end, VDSO__MAP_NAME))
  return 1;

 size = end - start;

 while (size) {
  written = fwrite(start, 1, size, stdout);
  if (!written)
   return 1;
  start += written;
  size -= written;
 }

 if (fflush(stdout))
  return 1;

 return 0;
}
