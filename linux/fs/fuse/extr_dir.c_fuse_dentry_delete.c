
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int fuse_dentry_time (struct dentry const*) ;
 int get_jiffies_64 () ;
 int time_before64 (int ,int ) ;

__attribute__((used)) static int fuse_dentry_delete(const struct dentry *dentry)
{
 return time_before64(fuse_dentry_time(dentry), get_jiffies_64());
}
