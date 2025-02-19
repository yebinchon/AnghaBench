
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {unsigned long max; unsigned long pages; unsigned long highest_bit; } ;
struct inode {unsigned int i_blkbits; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef unsigned int sector_t ;


 int EINVAL ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int add_swap_extent (struct swap_info_struct*,unsigned long,int,unsigned int) ;
 unsigned int bmap (struct inode*,unsigned int) ;
 int cond_resched () ;
 unsigned int i_size_read (struct inode*) ;
 int pr_err (char*) ;

int generic_swapfile_activate(struct swap_info_struct *sis,
    struct file *swap_file,
    sector_t *span)
{
 struct address_space *mapping = swap_file->f_mapping;
 struct inode *inode = mapping->host;
 unsigned blocks_per_page;
 unsigned long page_no;
 unsigned blkbits;
 sector_t probe_block;
 sector_t last_block;
 sector_t lowest_block = -1;
 sector_t highest_block = 0;
 int nr_extents = 0;
 int ret;

 blkbits = inode->i_blkbits;
 blocks_per_page = PAGE_SIZE >> blkbits;





 probe_block = 0;
 page_no = 0;
 last_block = i_size_read(inode) >> blkbits;
 while ((probe_block + blocks_per_page) <= last_block &&
   page_no < sis->max) {
  unsigned block_in_page;
  sector_t first_block;

  cond_resched();

  first_block = bmap(inode, probe_block);
  if (first_block == 0)
   goto bad_bmap;




  if (first_block & (blocks_per_page - 1)) {
   probe_block++;
   goto reprobe;
  }

  for (block_in_page = 1; block_in_page < blocks_per_page;
     block_in_page++) {
   sector_t block;

   block = bmap(inode, probe_block + block_in_page);
   if (block == 0)
    goto bad_bmap;
   if (block != first_block + block_in_page) {

    probe_block++;
    goto reprobe;
   }
  }

  first_block >>= (PAGE_SHIFT - blkbits);
  if (page_no) {
   if (first_block < lowest_block)
    lowest_block = first_block;
   if (first_block > highest_block)
    highest_block = first_block;
  }




  ret = add_swap_extent(sis, page_no, 1, first_block);
  if (ret < 0)
   goto out;
  nr_extents += ret;
  page_no++;
  probe_block += blocks_per_page;
reprobe:
  continue;
 }
 ret = nr_extents;
 *span = 1 + highest_block - lowest_block;
 if (page_no == 0)
  page_no = 1;
 sis->max = page_no;
 sis->pages = page_no - 1;
 sis->highest_bit = page_no - 1;
out:
 return ret;
bad_bmap:
 pr_err("swapon: swapfile has holes\n");
 ret = -EINVAL;
 goto out;
}
