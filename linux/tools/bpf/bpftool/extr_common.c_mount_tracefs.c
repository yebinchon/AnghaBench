
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_MAX_LEN ;
 int mnt_fs (char const*,char*,char*,int) ;
 int p_err (char*,char*) ;

int mount_tracefs(const char *target)
{
 char err_str[ERR_MAX_LEN];
 int err;

 err = mnt_fs(target, "tracefs", err_str, ERR_MAX_LEN);
 if (err) {
  err_str[ERR_MAX_LEN - 1] = '\0';
  p_err("can't mount tracefs: %s", err_str);
 }

 return err;
}
