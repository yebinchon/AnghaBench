
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {void* d_fsdata; } ;


 int HZ ;
 int jiffies ;
 int orangefs_dcache_timeout_msecs ;

__attribute__((used)) static inline void orangefs_set_timeout(struct dentry *dentry)
{
 unsigned long time = jiffies + orangefs_dcache_timeout_msecs*HZ/1000;

 dentry->d_fsdata = (void *) time;
}
