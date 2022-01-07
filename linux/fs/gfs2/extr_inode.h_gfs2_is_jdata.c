
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_diskflags; } ;


 int GFS2_DIF_JDATA ;

__attribute__((used)) static inline int gfs2_is_jdata(const struct gfs2_inode *ip)
{
 return ip->i_diskflags & GFS2_DIF_JDATA;
}
