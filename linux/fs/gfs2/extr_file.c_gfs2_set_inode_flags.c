
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_flags; int i_mode; } ;
struct gfs2_inode {scalar_t__ i_eattr; int i_diskflags; } ;


 int GFS2_DIF_APPENDONLY ;
 int GFS2_DIF_IMMUTABLE ;
 int GFS2_DIF_NOATIME ;
 int GFS2_DIF_SYNC ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 unsigned int S_APPEND ;
 unsigned int S_DIRSYNC ;
 unsigned int S_IMMUTABLE ;
 unsigned int S_NOATIME ;
 unsigned int S_NOSEC ;
 unsigned int S_SYNC ;
 int is_sxid (int ) ;

void gfs2_set_inode_flags(struct inode *inode)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 unsigned int flags = inode->i_flags;

 flags &= ~(S_SYNC|S_APPEND|S_IMMUTABLE|S_NOATIME|S_DIRSYNC|S_NOSEC);
 if ((ip->i_eattr == 0) && !is_sxid(inode->i_mode))
  flags |= S_NOSEC;
 if (ip->i_diskflags & GFS2_DIF_IMMUTABLE)
  flags |= S_IMMUTABLE;
 if (ip->i_diskflags & GFS2_DIF_APPENDONLY)
  flags |= S_APPEND;
 if (ip->i_diskflags & GFS2_DIF_NOATIME)
  flags |= S_NOATIME;
 if (ip->i_diskflags & GFS2_DIF_SYNC)
  flags |= S_SYNC;
 inode->i_flags = flags;
}
