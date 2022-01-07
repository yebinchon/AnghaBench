
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int ns; int name; int hash; } ;


 int kernfs_name_compare (int ,int ,int ,struct kernfs_node const*) ;

__attribute__((used)) static int kernfs_sd_compare(const struct kernfs_node *left,
        const struct kernfs_node *right)
{
 return kernfs_name_compare(left->hash, left->name, left->ns, right);
}
