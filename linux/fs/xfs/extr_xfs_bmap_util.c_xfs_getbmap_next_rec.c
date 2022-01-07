
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; scalar_t__ br_startblock; } ;


 scalar_t__ DELAYSTARTBLOCK ;
 int isnullstartblock (scalar_t__) ;

__attribute__((used)) static bool
xfs_getbmap_next_rec(
 struct xfs_bmbt_irec *rec,
 xfs_fileoff_t total_end)
{
 xfs_fileoff_t end = rec->br_startoff + rec->br_blockcount;

 if (end == total_end)
  return 0;

 rec->br_startoff += rec->br_blockcount;
 if (!isnullstartblock(rec->br_startblock) &&
     rec->br_startblock != DELAYSTARTBLOCK)
  rec->br_startblock += rec->br_blockcount;
 rec->br_blockcount = total_end - end;
 return 1;
}
