
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCFS2_FILECHECK_ARGS_LEN ;
 scalar_t__ kstrtoul (char*,int ,unsigned long*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
ocfs2_filecheck_args_get_long(const char *buf, size_t count,
         unsigned long *val)
{
 char buffer[OCFS2_FILECHECK_ARGS_LEN];

 memcpy(buffer, buf, count);
 buffer[count] = '\0';

 if (kstrtoul(buffer, 0, val))
  return 1;

 return 0;
}
