
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int dummy; } ;
struct gfs2_inode {scalar_t__ i_height; } ;


 int __fillup_metapath (struct gfs2_inode*,struct metapath*,int ,scalar_t__) ;

__attribute__((used)) static int lookup_metapath(struct gfs2_inode *ip, struct metapath *mp)
{
 return __fillup_metapath(ip, mp, 0, ip->i_height - 1);
}
