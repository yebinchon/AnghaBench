
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_genocide_kill ;
 int d_walk (struct dentry*,struct dentry*,int ) ;

void d_genocide(struct dentry *parent)
{
 d_walk(parent, parent, d_genocide_kill);
}
