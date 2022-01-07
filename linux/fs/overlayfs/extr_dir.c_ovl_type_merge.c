
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_TYPE_MERGE (int ) ;
 int ovl_path_type (struct dentry*) ;

__attribute__((used)) static bool ovl_type_merge(struct dentry *dentry)
{
 return OVL_TYPE_MERGE(ovl_path_type(dentry));
}
