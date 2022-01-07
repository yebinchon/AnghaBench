
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_entry {int dummy; } ;
struct dentry {scalar_t__ d_fsdata; } ;



__attribute__((used)) static inline struct ovl_entry *OVL_E(struct dentry *dentry)
{
 return (struct ovl_entry *) dentry->d_fsdata;
}
