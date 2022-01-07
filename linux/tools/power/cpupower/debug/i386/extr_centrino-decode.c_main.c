
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MCPU ;
 int decode (unsigned int) ;
 int decode_live (unsigned int) ;
 unsigned int strtoul (char*,int *,int ) ;

int main (int argc, char **argv)
{
 unsigned int cpu, mode = 0;

 if (argc < 2)
  cpu = 0;
 else {
  cpu = strtoul(argv[1], ((void*)0), 0);
  if (cpu >= MCPU)
   mode = 1;
 }

 if (mode)
  decode(cpu);
 else
  decode_live(cpu);

 return 0;
}
