
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int buff ;
typedef int FILE ;


 int assert (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int getpid () ;
 int hex2bin (int *,char*,int ) ;
 int snprintf (char*,int,char*,int,int) ;
 scalar_t__ strncmp (char*,char*,int const) ;

__attribute__((used)) static void tag_from_fdinfo(int fd_prog, uint8_t *tag, uint32_t len)
{
 const int prefix_len = sizeof("prog_tag:\t") - 1;
 char buff[256];
 int ret = -1;
 FILE *fp;

 snprintf(buff, sizeof(buff), "/proc/%d/fdinfo/%d", getpid(),
   fd_prog);
 fp = fopen(buff, "r");
 assert(fp);

 while (fgets(buff, sizeof(buff), fp)) {
  if (strncmp(buff, "prog_tag:\t", prefix_len))
   continue;
  ret = hex2bin(tag, buff + prefix_len, len);
  break;
 }

 fclose(fp);
 assert(!ret);
}
