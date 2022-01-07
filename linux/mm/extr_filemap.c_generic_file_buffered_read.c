
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int * mapping; } ;
struct kiocb {int ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int count; } ;
struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct file_ra_state {int prev_pos; } ;
struct file {struct file_ra_state f_ra; struct address_space* f_mapping; } ;
struct address_space {TYPE_2__* a_ops; struct inode* host; } ;
typedef int ssize_t ;
typedef unsigned long pgoff_t ;
typedef int loff_t ;
struct TYPE_4__ {int (* readpage ) (struct file*,struct page*) ;int (* is_partially_uptodate ) (struct page*,unsigned long,int) ;} ;
struct TYPE_3__ {int s_maxbytes; } ;


 int AOP_TRUNCATED_PAGE ;
 int ClearPageError (struct page*) ;
 int EAGAIN ;
 int EEXIST ;
 int EFAULT ;
 int EINTR ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IOCB_NOWAIT ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PageReadahead (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,unsigned long,int ) ;
 int cond_resched () ;
 unsigned long copy_page_to_iter (struct page*,unsigned long,unsigned long,struct iov_iter*) ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int file_accessed (struct file*) ;
 struct page* find_get_page (struct address_space*,unsigned long) ;
 int flush_dcache_page (struct page*) ;
 int i_size_read (struct inode*) ;
 int iov_iter_count (struct iov_iter*) ;
 int iov_iter_is_pipe (struct iov_iter*) ;
 int iov_iter_truncate (struct iov_iter*,int) ;
 int lock_page_killable (struct page*) ;
 int mapping_gfp_constraint (struct address_space*,int ) ;
 scalar_t__ mapping_writably_mapped (struct address_space*) ;
 int mark_page_accessed (struct page*) ;
 struct page* page_cache_alloc (struct address_space*) ;
 int page_cache_async_readahead (struct address_space*,struct file_ra_state*,struct file*,struct page*,unsigned long,unsigned long) ;
 int page_cache_sync_readahead (struct address_space*,struct file_ra_state*,struct file*,unsigned long,unsigned long) ;
 int put_page (struct page*) ;
 int shrink_readahead_size_eio (struct file*,struct file_ra_state*) ;
 int stub1 (struct page*,unsigned long,int) ;
 int stub2 (struct file*,struct page*) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_locked_killable (struct page*) ;

__attribute__((used)) static ssize_t generic_file_buffered_read(struct kiocb *iocb,
  struct iov_iter *iter, ssize_t written)
{
 struct file *filp = iocb->ki_filp;
 struct address_space *mapping = filp->f_mapping;
 struct inode *inode = mapping->host;
 struct file_ra_state *ra = &filp->f_ra;
 loff_t *ppos = &iocb->ki_pos;
 pgoff_t index;
 pgoff_t last_index;
 pgoff_t prev_index;
 unsigned long offset;
 unsigned int prev_offset;
 int error = 0;

 if (unlikely(*ppos >= inode->i_sb->s_maxbytes))
  return 0;
 iov_iter_truncate(iter, inode->i_sb->s_maxbytes);

 index = *ppos >> PAGE_SHIFT;
 prev_index = ra->prev_pos >> PAGE_SHIFT;
 prev_offset = ra->prev_pos & (PAGE_SIZE-1);
 last_index = (*ppos + iter->count + PAGE_SIZE-1) >> PAGE_SHIFT;
 offset = *ppos & ~PAGE_MASK;

 for (;;) {
  struct page *page;
  pgoff_t end_index;
  loff_t isize;
  unsigned long nr, ret;

  cond_resched();
find_page:
  if (fatal_signal_pending(current)) {
   error = -EINTR;
   goto out;
  }

  page = find_get_page(mapping, index);
  if (!page) {
   if (iocb->ki_flags & IOCB_NOWAIT)
    goto would_block;
   page_cache_sync_readahead(mapping,
     ra, filp,
     index, last_index - index);
   page = find_get_page(mapping, index);
   if (unlikely(page == ((void*)0)))
    goto no_cached_page;
  }
  if (PageReadahead(page)) {
   page_cache_async_readahead(mapping,
     ra, filp, page,
     index, last_index - index);
  }
  if (!PageUptodate(page)) {
   if (iocb->ki_flags & IOCB_NOWAIT) {
    put_page(page);
    goto would_block;
   }






   error = wait_on_page_locked_killable(page);
   if (unlikely(error))
    goto readpage_error;
   if (PageUptodate(page))
    goto page_ok;

   if (inode->i_blkbits == PAGE_SHIFT ||
     !mapping->a_ops->is_partially_uptodate)
    goto page_not_up_to_date;

   if (unlikely(iov_iter_is_pipe(iter)))
    goto page_not_up_to_date;
   if (!trylock_page(page))
    goto page_not_up_to_date;

   if (!page->mapping)
    goto page_not_up_to_date_locked;
   if (!mapping->a_ops->is_partially_uptodate(page,
       offset, iter->count))
    goto page_not_up_to_date_locked;
   unlock_page(page);
  }
page_ok:
  isize = i_size_read(inode);
  end_index = (isize - 1) >> PAGE_SHIFT;
  if (unlikely(!isize || index > end_index)) {
   put_page(page);
   goto out;
  }


  nr = PAGE_SIZE;
  if (index == end_index) {
   nr = ((isize - 1) & ~PAGE_MASK) + 1;
   if (nr <= offset) {
    put_page(page);
    goto out;
   }
  }
  nr = nr - offset;





  if (mapping_writably_mapped(mapping))
   flush_dcache_page(page);





  if (prev_index != index || offset != prev_offset)
   mark_page_accessed(page);
  prev_index = index;






  ret = copy_page_to_iter(page, offset, nr, iter);
  offset += ret;
  index += offset >> PAGE_SHIFT;
  offset &= ~PAGE_MASK;
  prev_offset = offset;

  put_page(page);
  written += ret;
  if (!iov_iter_count(iter))
   goto out;
  if (ret < nr) {
   error = -EFAULT;
   goto out;
  }
  continue;

page_not_up_to_date:

  error = lock_page_killable(page);
  if (unlikely(error))
   goto readpage_error;

page_not_up_to_date_locked:

  if (!page->mapping) {
   unlock_page(page);
   put_page(page);
   continue;
  }


  if (PageUptodate(page)) {
   unlock_page(page);
   goto page_ok;
  }

readpage:





  ClearPageError(page);

  error = mapping->a_ops->readpage(filp, page);

  if (unlikely(error)) {
   if (error == AOP_TRUNCATED_PAGE) {
    put_page(page);
    error = 0;
    goto find_page;
   }
   goto readpage_error;
  }

  if (!PageUptodate(page)) {
   error = lock_page_killable(page);
   if (unlikely(error))
    goto readpage_error;
   if (!PageUptodate(page)) {
    if (page->mapping == ((void*)0)) {



     unlock_page(page);
     put_page(page);
     goto find_page;
    }
    unlock_page(page);
    shrink_readahead_size_eio(filp, ra);
    error = -EIO;
    goto readpage_error;
   }
   unlock_page(page);
  }

  goto page_ok;

readpage_error:

  put_page(page);
  goto out;

no_cached_page:




  page = page_cache_alloc(mapping);
  if (!page) {
   error = -ENOMEM;
   goto out;
  }
  error = add_to_page_cache_lru(page, mapping, index,
    mapping_gfp_constraint(mapping, GFP_KERNEL));
  if (error) {
   put_page(page);
   if (error == -EEXIST) {
    error = 0;
    goto find_page;
   }
   goto out;
  }
  goto readpage;
 }

would_block:
 error = -EAGAIN;
out:
 ra->prev_pos = prev_index;
 ra->prev_pos <<= PAGE_SHIFT;
 ra->prev_pos |= prev_offset;

 *ppos = ((loff_t)index << PAGE_SHIFT) + offset;
 file_accessed(filp);
 return written ? written : error;
}
