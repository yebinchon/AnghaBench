
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int i_ino; } ;


 TYPE_1__* d_inode (struct dentry*) ;
 char* dynamic_dname (struct dentry*,char*,int,char*,int ) ;

__attribute__((used)) static char *sockfs_dname(struct dentry *dentry, char *buffer, int buflen)
{
 return dynamic_dname(dentry, buffer, buflen, "socket:[%lu]",
    d_inode(dentry)->i_ino);
}
