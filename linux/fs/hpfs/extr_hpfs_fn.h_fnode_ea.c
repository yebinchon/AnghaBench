
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnode {int acl_size_s; int ea_offs; } ;
struct extended_attribute {int dummy; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline struct extended_attribute *fnode_ea(struct fnode *fnode)
{
 return (struct extended_attribute *)((char *)fnode + le16_to_cpu(fnode->ea_offs) + le16_to_cpu(fnode->acl_size_s));
}
