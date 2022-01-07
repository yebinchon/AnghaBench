
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_extlen_t ;
typedef scalar_t__ xfs_agnumber_t ;
struct xfs_perag {scalar_t__ pagf_freeblks; int pagf_metadata; int pagf_init; } ;
struct TYPE_3__ {int sb_agblocks; scalar_t__ sb_agcount; } ;
struct xfs_mount {int m_filestream; TYPE_1__ m_sb; } ;
struct xfs_inode {int i_ino; struct xfs_mount* i_mount; } ;
struct xfs_fstrm_item {int mru; scalar_t__ ag; } ;
struct TYPE_4__ {int i_mode; } ;


 int ASSERT (int ) ;
 int EEXIST ;
 int ENOMEM ;
 int KM_MAYFAIL ;
 scalar_t__ NULLAGNUMBER ;
 int S_ISDIR (int ) ;
 TYPE_2__* VFS_I (struct xfs_inode*) ;
 int XFS_AG_RESV_NONE ;
 int XFS_ALLOC_FLAG_TRYLOCK ;
 int XFS_PICK_LOWSPACE ;
 int XFS_PICK_USERDATA ;
 struct xfs_fstrm_item* kmem_alloc (int,int ) ;
 int kmem_free (struct xfs_fstrm_item*) ;
 int trace_xfs_filestream_pick (struct xfs_inode*,scalar_t__,scalar_t__,int) ;
 int trace_xfs_filestream_scan (struct xfs_mount*,int ,scalar_t__) ;
 int xfs_ag_resv_needed (struct xfs_perag*,int ) ;
 scalar_t__ xfs_alloc_longest_free_extent (struct xfs_perag*,int ,int ) ;
 int xfs_alloc_min_freelist (struct xfs_mount*,struct xfs_perag*) ;
 int xfs_alloc_pagf_init (struct xfs_mount*,int *,scalar_t__,int) ;
 int xfs_filestream_get_ag (struct xfs_mount*,scalar_t__) ;
 int xfs_filestream_put_ag (struct xfs_mount*,scalar_t__) ;
 int xfs_mru_cache_insert (int ,int ,int *) ;
 struct xfs_perag* xfs_perag_get (struct xfs_mount*,scalar_t__) ;
 int xfs_perag_put (struct xfs_perag*) ;

__attribute__((used)) static int
xfs_filestream_pick_ag(
 struct xfs_inode *ip,
 xfs_agnumber_t startag,
 xfs_agnumber_t *agp,
 int flags,
 xfs_extlen_t minlen)
{
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_fstrm_item *item;
 struct xfs_perag *pag;
 xfs_extlen_t longest, free = 0, minfree, maxfree = 0;
 xfs_agnumber_t ag, max_ag = NULLAGNUMBER;
 int err, trylock, nscan;

 ASSERT(S_ISDIR(VFS_I(ip)->i_mode));


 minfree = mp->m_sb.sb_agblocks / 50;

 ag = startag;
 *agp = NULLAGNUMBER;


 trylock = XFS_ALLOC_FLAG_TRYLOCK;

 for (nscan = 0; 1; nscan++) {
  trace_xfs_filestream_scan(mp, ip->i_ino, ag);

  pag = xfs_perag_get(mp, ag);

  if (!pag->pagf_init) {
   err = xfs_alloc_pagf_init(mp, ((void*)0), ag, trylock);
   if (err && !trylock) {
    xfs_perag_put(pag);
    return err;
   }
  }


  if (!pag->pagf_init)
   goto next_ag;


  if (pag->pagf_freeblks > maxfree) {
   maxfree = pag->pagf_freeblks;
   max_ag = ag;
  }







  if (xfs_filestream_get_ag(mp, ag) > 1) {
   xfs_filestream_put_ag(mp, ag);
   goto next_ag;
  }

  longest = xfs_alloc_longest_free_extent(pag,
    xfs_alloc_min_freelist(mp, pag),
    xfs_ag_resv_needed(pag, XFS_AG_RESV_NONE));
  if (((minlen && longest >= minlen) ||
       (!minlen && pag->pagf_freeblks >= minfree)) &&
      (!pag->pagf_metadata || !(flags & XFS_PICK_USERDATA) ||
       (flags & XFS_PICK_LOWSPACE))) {


   free = pag->pagf_freeblks;
   xfs_perag_put(pag);
   *agp = ag;
   break;
  }


  xfs_filestream_put_ag(mp, ag);
next_ag:
  xfs_perag_put(pag);

  if (++ag >= mp->m_sb.sb_agcount)
   ag = 0;


  if (ag != startag)
   continue;


  if (trylock != 0) {
   trylock = 0;
   continue;
  }


  if (!(flags & XFS_PICK_LOWSPACE)) {
   flags |= XFS_PICK_LOWSPACE;
   continue;
  }





  if (max_ag != NULLAGNUMBER) {
   xfs_filestream_get_ag(mp, max_ag);
   free = maxfree;
   *agp = max_ag;
   break;
  }


  trace_xfs_filestream_pick(ip, *agp, free, nscan);
  *agp = 0;
  return 0;
 }

 trace_xfs_filestream_pick(ip, *agp, free, nscan);

 if (*agp == NULLAGNUMBER)
  return 0;

 err = -ENOMEM;
 item = kmem_alloc(sizeof(*item), KM_MAYFAIL);
 if (!item)
  goto out_put_ag;

 item->ag = *agp;

 err = xfs_mru_cache_insert(mp->m_filestream, ip->i_ino, &item->mru);
 if (err) {
  if (err == -EEXIST)
   err = 0;
  goto out_free_item;
 }

 return 0;

out_free_item:
 kmem_free(item);
out_put_ag:
 xfs_filestream_put_ag(mp, *agp);
 return err;
}
