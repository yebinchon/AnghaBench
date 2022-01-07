
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmid_kernel {int shm_file; } ;
struct shmem_inode_info {int lock; scalar_t__ swapped; } ;
struct inode {struct address_space* i_mapping; } ;
struct hstate {int dummy; } ;
struct address_space {unsigned long nrpages; } ;


 struct shmem_inode_info* SHMEM_I (struct inode*) ;
 struct inode* file_inode (int ) ;
 struct hstate* hstate_file (int ) ;
 scalar_t__ is_file_hugepages (int ) ;
 unsigned long pages_per_huge_page (struct hstate*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void shm_add_rss_swap(struct shmid_kernel *shp,
 unsigned long *rss_add, unsigned long *swp_add)
{
 struct inode *inode;

 inode = file_inode(shp->shm_file);

 if (is_file_hugepages(shp->shm_file)) {
  struct address_space *mapping = inode->i_mapping;
  struct hstate *h = hstate_file(shp->shm_file);
  *rss_add += pages_per_huge_page(h) * mapping->nrpages;
 } else {
  *rss_add += inode->i_mapping->nrpages;

 }
}
