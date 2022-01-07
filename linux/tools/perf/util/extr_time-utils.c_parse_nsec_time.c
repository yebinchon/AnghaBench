
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NSEC_PER_SEC ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 int strtoul (char const*,char**,int) ;

int parse_nsec_time(const char *str, u64 *ptime)
{
 u64 time_sec, time_nsec;
 char *end;

 time_sec = strtoul(str, &end, 10);
 if (*end != '.' && *end != '\0')
  return -1;

 if (*end == '.') {
  int i;
  char nsec_buf[10];

  if (strlen(++end) > 9)
   return -1;

  strncpy(nsec_buf, end, 9);
  nsec_buf[9] = '\0';


  for (i = strlen(nsec_buf); i < 9; i++)
   nsec_buf[i] = '0';

  time_nsec = strtoul(nsec_buf, &end, 10);
  if (*end != '\0')
   return -1;
 } else
  time_nsec = 0;

 *ptime = time_sec * NSEC_PER_SEC + time_nsec;
 return 0;
}
