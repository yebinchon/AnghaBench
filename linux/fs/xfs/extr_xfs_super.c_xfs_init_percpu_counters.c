
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int m_icount; int m_ifree; int m_fdblocks; int m_delalloc_blks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int percpu_counter_destroy (int *) ;
 int percpu_counter_init (int *,int ,int ) ;

__attribute__((used)) static int
xfs_init_percpu_counters(
 struct xfs_mount *mp)
{
 int error;

 error = percpu_counter_init(&mp->m_icount, 0, GFP_KERNEL);
 if (error)
  return -ENOMEM;

 error = percpu_counter_init(&mp->m_ifree, 0, GFP_KERNEL);
 if (error)
  goto free_icount;

 error = percpu_counter_init(&mp->m_fdblocks, 0, GFP_KERNEL);
 if (error)
  goto free_ifree;

 error = percpu_counter_init(&mp->m_delalloc_blks, 0, GFP_KERNEL);
 if (error)
  goto free_fdblocks;

 return 0;

free_fdblocks:
 percpu_counter_destroy(&mp->m_fdblocks);
free_ifree:
 percpu_counter_destroy(&mp->m_ifree);
free_icount:
 percpu_counter_destroy(&mp->m_icount);
 return -ENOMEM;
}
