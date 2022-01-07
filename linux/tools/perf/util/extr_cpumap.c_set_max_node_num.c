
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int get_max_num (char*,int*) ;
 int max_node_num ;
 int pr_err (char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 char* sysfs__mountpoint () ;

__attribute__((used)) static void set_max_node_num(void)
{
 const char *mnt;
 char path[PATH_MAX];
 int ret = -1;


 max_node_num = 8;

 mnt = sysfs__mountpoint();
 if (!mnt)
  goto out;


 ret = snprintf(path, PATH_MAX, "%s/devices/system/node/possible", mnt);
 if (ret == PATH_MAX) {
  pr_err("sysfs path crossed PATH_MAX(%d) size\n", PATH_MAX);
  goto out;
 }

 ret = get_max_num(path, &max_node_num);

out:
 if (ret)
  pr_err("Failed to read max nodes, using default of %d\n", max_node_num);
}
