
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 char* dynamic_dname (struct dentry*,char*,int,char*,int ) ;

__attribute__((used)) static char *anon_inodefs_dname(struct dentry *dentry, char *buffer, int buflen)
{
 return dynamic_dname(dentry, buffer, buflen, "anon_inode:%s",
    dentry->d_name.name);
}
