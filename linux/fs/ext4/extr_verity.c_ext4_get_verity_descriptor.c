
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;


 int ERANGE ;
 int ext4_get_verity_descriptor_location (struct inode*,size_t*,int *) ;
 int pagecache_read (struct inode*,void*,size_t,int ) ;

__attribute__((used)) static int ext4_get_verity_descriptor(struct inode *inode, void *buf,
          size_t buf_size)
{
 size_t desc_size = 0;
 u64 desc_pos = 0;
 int err;

 err = ext4_get_verity_descriptor_location(inode, &desc_size, &desc_pos);
 if (err)
  return err;

 if (buf_size) {
  if (desc_size > buf_size)
   return -ERANGE;
  err = pagecache_read(inode, buf, desc_size, desc_pos);
  if (err)
   return err;
 }
 return desc_size;
}
