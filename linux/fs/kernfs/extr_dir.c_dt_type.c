
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int mode; } ;



__attribute__((used)) static inline unsigned char dt_type(struct kernfs_node *kn)
{
 return (kn->mode >> 12) & 15;
}
