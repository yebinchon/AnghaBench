
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int smt_possible(void)
{
 char buf[16];
 FILE *f;
 bool res = 1;

 f = fopen("/sys/devices/system/cpu/smt/control", "r");
 if (f) {
  if (fread(buf, sizeof(*buf), sizeof(buf), f) > 0) {
   if (!strncmp(buf, "forceoff", 8) ||
       !strncmp(buf, "notsupported", 12))
    res = 0;
  }
  fclose(f);
 }

 return res;
}
