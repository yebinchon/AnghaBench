
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ xfs_fileoff_t ;
struct xfs_inode {int dummy; } ;
struct xfs_bmbt_irec {scalar_t__ br_startoff; scalar_t__ br_blockcount; } ;


 int xfs_bmap_last_extent (int *,struct xfs_inode*,int,struct xfs_bmbt_irec*,int*) ;

int
xfs_bmap_eof(
 struct xfs_inode *ip,
 xfs_fileoff_t endoff,
 int whichfork,
 int *eof)
{
 struct xfs_bmbt_irec rec;
 int error;

 error = xfs_bmap_last_extent(((void*)0), ip, whichfork, &rec, eof);
 if (error || *eof)
  return error;

 *eof = endoff >= rec.br_startoff + rec.br_blockcount;
 return 0;
}
