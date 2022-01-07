
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linebuf ;
typedef enum idlestate_string { ____Placeholder_idlestate_string } idlestate_string ;


 int MAX_IDLESTATE_STRING_FILES ;
 int MAX_LINE_LEN ;
 int * idlestate_string_files ;
 char* strdup (char*) ;
 int strlen (char*) ;
 unsigned int sysfs_idlestate_read_file (unsigned int,unsigned int,int ,char*,int) ;

__attribute__((used)) static char *sysfs_idlestate_get_one_string(unsigned int cpu,
     unsigned int idlestate,
     enum idlestate_string which)
{
 char linebuf[MAX_LINE_LEN];
 char *result;
 unsigned int len;

 if (which >= MAX_IDLESTATE_STRING_FILES)
  return ((void*)0);

 len = sysfs_idlestate_read_file(cpu, idlestate,
     idlestate_string_files[which],
     linebuf, sizeof(linebuf));
 if (len == 0)
  return ((void*)0);

 result = strdup(linebuf);
 if (result == ((void*)0))
  return ((void*)0);

 if (result[strlen(result) - 1] == '\n')
  result[strlen(result) - 1] = '\0';

 return result;
}
