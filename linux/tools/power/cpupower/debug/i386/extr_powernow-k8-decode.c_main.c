
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int exit (int) ;
 int find_freq_from_fid (int ) ;
 int find_millivolts_from_vid (int ) ;
 int get_fidvid (int,int *,int *) ;
 int printf (char*,...) ;
 int strtoul (char*,int *,int ) ;

int main (int argc, char *argv[])
{
 int err;
 int cpu;
 uint32_t fid, vid;

 if (argc < 2)
  cpu = 0;
 else
  cpu = strtoul(argv[1], ((void*)0), 0);

 err = get_fidvid(cpu, &fid, &vid);

 if (err) {
  printf("can't get fid, vid from MSR\n");
  printf("Possible trouble: you don't run a powernow-k8 capable cpu\n");
  printf("or you are not root, or the msr driver is not present\n");
  exit(1);
 }


 printf("cpu %d currently at %d MHz and %d mV\n",
   cpu,
   find_freq_from_fid(fid),
   find_millivolts_from_vid(vid));

 return 0;
}
