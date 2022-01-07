
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int fs_kobj ;
 int gfs2_kset ;
 int gfs2_uevent_ops ;
 int kset_create_and_add (char*,int *,int ) ;

int gfs2_sys_init(void)
{
 gfs2_kset = kset_create_and_add("gfs2", &gfs2_uevent_ops, fs_kobj);
 if (!gfs2_kset)
  return -ENOMEM;
 return 0;
}
