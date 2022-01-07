
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int pag_ici_reclaim_lock; int pag_state_lock; int pagb_tree; scalar_t__ pagb_count; int pagb_lock; int pagb_wait; int pag_ici_root; int pag_ici_lock; TYPE_2__* pag_mount; scalar_t__ pag_agno; } ;
typedef TYPE_1__ xfs_perag_t ;
struct TYPE_18__ {int m_perag_tree; int m_ag_prealloc_blocks; int m_perag_lock; } ;
typedef TYPE_2__ xfs_mount_t ;
typedef scalar_t__ xfs_agnumber_t ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_NOFS ;
 int INIT_RADIX_TREE (int *,int ) ;
 int KM_MAYFAIL ;
 scalar_t__ NULLAGNUMBER ;
 int RB_ROOT ;
 int WARN_ON_ONCE (int) ;
 int init_waitqueue_head (int *) ;
 int kmem_free (TYPE_1__*) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 TYPE_1__* radix_tree_delete (int *,scalar_t__) ;
 scalar_t__ radix_tree_insert (int *,scalar_t__,TYPE_1__*) ;
 scalar_t__ radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int xfs_buf_hash_destroy (TYPE_1__*) ;
 scalar_t__ xfs_buf_hash_init (TYPE_1__*) ;
 int xfs_iunlink_destroy (TYPE_1__*) ;
 int xfs_iunlink_init (TYPE_1__*) ;
 TYPE_1__* xfs_perag_get (TYPE_2__*,scalar_t__) ;
 int xfs_perag_put (TYPE_1__*) ;
 int xfs_prealloc_blocks (TYPE_2__*) ;
 scalar_t__ xfs_set_inode_alloc (TYPE_2__*,scalar_t__) ;

int
xfs_initialize_perag(
 xfs_mount_t *mp,
 xfs_agnumber_t agcount,
 xfs_agnumber_t *maxagi)
{
 xfs_agnumber_t index;
 xfs_agnumber_t first_initialised = NULLAGNUMBER;
 xfs_perag_t *pag;
 int error = -ENOMEM;






 for (index = 0; index < agcount; index++) {
  pag = xfs_perag_get(mp, index);
  if (pag) {
   xfs_perag_put(pag);
   continue;
  }

  pag = kmem_zalloc(sizeof(*pag), KM_MAYFAIL);
  if (!pag)
   goto out_unwind_new_pags;
  pag->pag_agno = index;
  pag->pag_mount = mp;
  spin_lock_init(&pag->pag_ici_lock);
  mutex_init(&pag->pag_ici_reclaim_lock);
  INIT_RADIX_TREE(&pag->pag_ici_root, GFP_ATOMIC);
  if (xfs_buf_hash_init(pag))
   goto out_free_pag;
  init_waitqueue_head(&pag->pagb_wait);
  spin_lock_init(&pag->pagb_lock);
  pag->pagb_count = 0;
  pag->pagb_tree = RB_ROOT;

  if (radix_tree_preload(GFP_NOFS))
   goto out_hash_destroy;

  spin_lock(&mp->m_perag_lock);
  if (radix_tree_insert(&mp->m_perag_tree, index, pag)) {
   WARN_ON_ONCE(1);
   spin_unlock(&mp->m_perag_lock);
   radix_tree_preload_end();
   error = -EEXIST;
   goto out_hash_destroy;
  }
  spin_unlock(&mp->m_perag_lock);
  radix_tree_preload_end();

  if (first_initialised == NULLAGNUMBER)
   first_initialised = index;
  error = xfs_iunlink_init(pag);
  if (error)
   goto out_hash_destroy;
  spin_lock_init(&pag->pag_state_lock);
 }

 index = xfs_set_inode_alloc(mp, agcount);

 if (maxagi)
  *maxagi = index;

 mp->m_ag_prealloc_blocks = xfs_prealloc_blocks(mp);
 return 0;

out_hash_destroy:
 xfs_buf_hash_destroy(pag);
out_free_pag:
 mutex_destroy(&pag->pag_ici_reclaim_lock);
 kmem_free(pag);
out_unwind_new_pags:

 for (index = first_initialised; index < agcount; index++) {
  pag = radix_tree_delete(&mp->m_perag_tree, index);
  if (!pag)
   break;
  xfs_buf_hash_destroy(pag);
  xfs_iunlink_destroy(pag);
  mutex_destroy(&pag->pag_ici_reclaim_lock);
  kmem_free(pag);
 }
 return error;
}
