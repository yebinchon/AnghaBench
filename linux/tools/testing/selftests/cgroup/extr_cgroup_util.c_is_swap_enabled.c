
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PAGE_SIZE ;
 scalar_t__ read_text (char*,char*,int) ;
 char* strtok (char*,char const*) ;

int is_swap_enabled(void)
{
 char buf[PAGE_SIZE];
 const char delim[] = "\n";
 int cnt = 0;
 char *line;

 if (read_text("/proc/swaps", buf, sizeof(buf)) <= 0)
  return -1;

 for (line = strtok(buf, delim); line; line = strtok(((void*)0), delim))
  cnt++;

 return cnt > 1;
}
