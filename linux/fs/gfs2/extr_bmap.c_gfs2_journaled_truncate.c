
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
struct inode {int dummy; } ;
struct gfs2_trans {int tr_flags; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct TYPE_4__ {struct gfs2_trans* journal_info; } ;
struct TYPE_3__ {unsigned int s_blocksize; } ;


 unsigned int GFS2_JTRUNC_REVOKES ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SIZE ;
 int RES_DINODE ;
 int TR_TOUCHED ;
 TYPE_2__* current ;
 int gfs2_trans_begin (struct gfs2_sbd*,int ,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int test_bit (int ,int *) ;
 int truncate_pagecache (struct inode*,unsigned int) ;

__attribute__((used)) static int gfs2_journaled_truncate(struct inode *inode, u64 oldsize, u64 newsize)
{
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 u64 max_chunk = GFS2_JTRUNC_REVOKES * sdp->sd_vfs->s_blocksize;
 u64 chunk;
 int error;

 while (oldsize != newsize) {
  struct gfs2_trans *tr;
  unsigned int offs;

  chunk = oldsize - newsize;
  if (chunk > max_chunk)
   chunk = max_chunk;

  offs = oldsize & ~PAGE_MASK;
  if (offs && chunk > PAGE_SIZE)
   chunk = offs + ((chunk - offs) & PAGE_MASK);

  truncate_pagecache(inode, oldsize - chunk);
  oldsize -= chunk;

  tr = current->journal_info;
  if (!test_bit(TR_TOUCHED, &tr->tr_flags))
   continue;

  gfs2_trans_end(sdp);
  error = gfs2_trans_begin(sdp, RES_DINODE, GFS2_JTRUNC_REVOKES);
  if (error)
   return error;
 }

 return 0;
}
