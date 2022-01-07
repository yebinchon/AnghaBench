
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct metapath {scalar_t__ mp_fheight; scalar_t__ mp_aheight; scalar_t__* mp_list; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {unsigned int sd_inptrs; unsigned int sd_diptrs; } ;
struct gfs2_inode {scalar_t__ i_height; } ;
typedef scalar_t__ __be64 ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 scalar_t__* metaend (scalar_t__,struct metapath*) ;
 scalar_t__* metapointer (scalar_t__,struct metapath*) ;

__attribute__((used)) static u64 gfs2_alloc_size(struct inode *inode, struct metapath *mp, u64 size)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 const __be64 *first, *ptr, *end;
 if (gfs2_is_stuffed(ip) || mp->mp_fheight != mp->mp_aheight) {
  unsigned int maxsize = mp->mp_fheight > 1 ?
   sdp->sd_inptrs : sdp->sd_diptrs;
  maxsize -= mp->mp_list[mp->mp_fheight - 1];
  if (size > maxsize)
   size = maxsize;
  return size;
 }

 first = metapointer(ip->i_height - 1, mp);
 end = metaend(ip->i_height - 1, mp);
 if (end - first > size)
  end = first + size;
 for (ptr = first; ptr < end; ptr++) {
  if (*ptr)
   break;
 }
 return ptr - first;
}
