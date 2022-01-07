
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int OCFS2_FILECHECK_ERR_END ;
 int OCFS2_FILECHECK_ERR_START ;
 char const** ocfs2_filecheck_errs ;

__attribute__((used)) static const char *
ocfs2_filecheck_error(int errno)
{
 if (!errno)
  return ocfs2_filecheck_errs[errno];

 BUG_ON(errno < OCFS2_FILECHECK_ERR_START ||
        errno > OCFS2_FILECHECK_ERR_END);
 return ocfs2_filecheck_errs[errno - OCFS2_FILECHECK_ERR_START + 1];
}
