
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOHANDLES_MAX ;
 int getopt (int,char**,char*) ;
 int hammer_device (char const*,unsigned int*,int,unsigned int) ;
 char* optarg ;
 int print_usage () ;
 unsigned int strtoul (char*,int *,int) ;

int main(int argc, char **argv)
{
 const char *device_name = ((void*)0);
 unsigned int lines[GPIOHANDLES_MAX];
 unsigned int loops = 0;
 int nlines;
 int c;
 int i;

 i = 0;
 while ((c = getopt(argc, argv, "c:n:o:?")) != -1) {
  switch (c) {
  case 'c':
   loops = strtoul(optarg, ((void*)0), 10);
   break;
  case 'n':
   device_name = optarg;
   break;
  case 'o':
   lines[i] = strtoul(optarg, ((void*)0), 10);
   i++;
   break;
  case '?':
   print_usage();
   return -1;
  }
 }
 nlines = i;

 if (!device_name || !nlines) {
  print_usage();
  return -1;
 }
 return hammer_device(device_name, lines, nlines, loops);
}
