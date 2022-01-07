
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int MAX_BUFSIZE ;
 int MAX_CATCH_RADIUS ;
 int MIN_BUFFERS ;
 int MIN_BUFSIZE ;
 int catchRadius ;
 char* get_options (char*,int ,int*) ;
 int numWriteBufs ;
 int printk (char*,...) ;
 int writeBufSize ;

__attribute__((used)) static int dmasound_setup(char *str)
{
 int ints[6], size;

 str = get_options(str, ARRAY_SIZE(ints), ints);







 switch (ints[0]) {
 case 3:
  if ((ints[3] < 0) || (ints[3] > MAX_CATCH_RADIUS))
   printk("dmasound_setup: invalid catch radius, using default = %d\n", catchRadius);
  else
   catchRadius = ints[3];

 case 2:
  if (ints[1] < MIN_BUFFERS)
   printk("dmasound_setup: invalid number of buffers, using default = %d\n", numWriteBufs);
  else
   numWriteBufs = ints[1];

 case 1:
  if ((size = ints[2]) < 256)
   size <<= 10 ;
                if (size < MIN_BUFSIZE || size > MAX_BUFSIZE)
                        printk("dmasound_setup: invalid write buffer size, using default = %d\n", writeBufSize);
                else
                        writeBufSize = size;
 case 0:
  break;
 default:
  printk("dmasound_setup: invalid number of arguments\n");
  return 0;
 }
 return 1;
}
