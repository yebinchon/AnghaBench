
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linebuf ;
typedef enum idlestate_value { ____Placeholder_idlestate_value } idlestate_value ;


 scalar_t__ ERANGE ;
 int MAX_IDLESTATE_VALUE_FILES ;
 int MAX_LINE_LEN ;
 scalar_t__ errno ;
 int * idlestate_value_files ;
 unsigned long long strtoull (char*,char**,int ) ;
 unsigned int sysfs_idlestate_read_file (unsigned int,unsigned int,int ,char*,int) ;

__attribute__((used)) static unsigned long long sysfs_idlestate_get_one_value(unsigned int cpu,
           unsigned int idlestate,
           enum idlestate_value which)
{
 unsigned long long value;
 unsigned int len;
 char linebuf[MAX_LINE_LEN];
 char *endp;

 if (which >= MAX_IDLESTATE_VALUE_FILES)
  return 0;

 len = sysfs_idlestate_read_file(cpu, idlestate,
     idlestate_value_files[which],
     linebuf, sizeof(linebuf));
 if (len == 0)
  return 0;

 value = strtoull(linebuf, &endp, 0);

 if (endp == linebuf || errno == ERANGE)
  return 0;

 return value;
}
