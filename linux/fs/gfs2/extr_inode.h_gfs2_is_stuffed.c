
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_height; } ;



__attribute__((used)) static inline int gfs2_is_stuffed(const struct gfs2_inode *ip)
{
 return !ip->i_height;
}
