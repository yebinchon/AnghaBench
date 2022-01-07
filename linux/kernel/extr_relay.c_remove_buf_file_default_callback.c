
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int remove_buf_file_default_callback(struct dentry *dentry)
{
 return -EINVAL;
}
