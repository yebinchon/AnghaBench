
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {char* name; } ;


 int EACCES ;
 int ENOENT ;
 int UMH_WAIT_EXEC ;
 int call_usermodehelper (char*,char**,char**,int ) ;
 char* nfs_cache_getent_prog ;

int nfs_cache_upcall(struct cache_detail *cd, char *entry_name)
{
 static char *envp[] = { "HOME=/",
  "TERM=linux",
  "PATH=/sbin:/usr/sbin:/bin:/usr/bin",
  ((void*)0)
 };
 char *argv[] = {
  nfs_cache_getent_prog,
  cd->name,
  entry_name,
  ((void*)0)
 };
 int ret = -EACCES;

 if (nfs_cache_getent_prog[0] == '\0')
  goto out;
 ret = call_usermodehelper(argv[0], argv, envp, UMH_WAIT_EXEC);






 if (ret == -ENOENT || ret == -EACCES)
  nfs_cache_getent_prog[0] = '\0';
out:
 return ret > 0 ? 0 : ret;
}
