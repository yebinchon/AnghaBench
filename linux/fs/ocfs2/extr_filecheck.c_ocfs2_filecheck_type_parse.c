
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int OCFS2_FILECHECK_TYPE_CHK ;
 unsigned int OCFS2_FILECHECK_TYPE_FIX ;
 unsigned int OCFS2_FILECHECK_TYPE_SET ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int
ocfs2_filecheck_type_parse(const char *name, unsigned int *type)
{
 if (!strncmp(name, "fix", 4))
  *type = OCFS2_FILECHECK_TYPE_FIX;
 else if (!strncmp(name, "check", 6))
  *type = OCFS2_FILECHECK_TYPE_CHK;
 else if (!strncmp(name, "set", 4))
  *type = OCFS2_FILECHECK_TYPE_SET;
 else
  return 1;

 return 0;
}
