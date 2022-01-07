
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct inode {TYPE_2__* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;
struct TYPE_3__ {struct inode* host; } ;


 scalar_t__ ALIGN (scalar_t__,scalar_t__) ;
 scalar_t__ ALIGN_DOWN (scalar_t__,scalar_t__) ;
 int EINVAL ;
 int IS_ALIGNED (scalar_t__,scalar_t__) ;
 unsigned int REMAP_FILE_CAN_SHORTEN ;
 unsigned int REMAP_FILE_DEDUP ;
 int generic_write_check_limits (struct file*,scalar_t__,scalar_t__*) ;
 scalar_t__ i_size_read (struct inode*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

int generic_remap_checks(struct file *file_in, loff_t pos_in,
    struct file *file_out, loff_t pos_out,
    loff_t *req_count, unsigned int remap_flags)
{
 struct inode *inode_in = file_in->f_mapping->host;
 struct inode *inode_out = file_out->f_mapping->host;
 uint64_t count = *req_count;
 uint64_t bcount;
 loff_t size_in, size_out;
 loff_t bs = inode_out->i_sb->s_blocksize;
 int ret;


 if (!IS_ALIGNED(pos_in, bs) || !IS_ALIGNED(pos_out, bs))
  return -EINVAL;


 if (pos_in + count < pos_in || pos_out + count < pos_out)
  return -EINVAL;

 size_in = i_size_read(inode_in);
 size_out = i_size_read(inode_out);


 if ((remap_flags & REMAP_FILE_DEDUP) &&
     (pos_in >= size_in || pos_in + count > size_in ||
      pos_out >= size_out || pos_out + count > size_out))
  return -EINVAL;


 if (pos_in >= size_in)
  return -EINVAL;
 count = min(count, size_in - (uint64_t)pos_in);

 ret = generic_write_check_limits(file_out, pos_out, &count);
 if (ret)
  return ret;
 if (pos_in + count == size_in) {
  bcount = ALIGN(size_in, bs) - pos_in;
 } else {
  if (!IS_ALIGNED(count, bs))
   count = ALIGN_DOWN(count, bs);
  bcount = count;
 }


 if (inode_in == inode_out &&
     pos_out + bcount > pos_in &&
     pos_out < pos_in + bcount)
  return -EINVAL;





 if (*req_count != count && !(remap_flags & REMAP_FILE_CAN_SHORTEN))
  return -EINVAL;

 *req_count = count;
 return 0;
}
