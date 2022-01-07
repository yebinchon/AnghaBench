
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;
typedef int FILE ;


 char* bpf_log_buf ;
 scalar_t__ load_bpf_file (char*) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;

int main(int argc, char **argv)
{
 FILE *f;
 char filename[256];
 char command[256];
 int ret;

 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 if (load_bpf_file(filename)) {
  printf("%s", bpf_log_buf);
  return 1;
 }

 snprintf(command, 256, "mount %s tmpmnt/", argv[1]);
 f = popen(command, "r");
 ret = pclose(f);

 return ret ? 0 : 1;
}
