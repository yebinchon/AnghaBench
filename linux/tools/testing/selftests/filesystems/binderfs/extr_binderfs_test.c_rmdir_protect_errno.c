
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int rmdir (char const*) ;

__attribute__((used)) static void rmdir_protect_errno(const char *dir)
{
 int saved_errno = errno;
 (void)rmdir(dir);
 errno = saved_errno;
}
