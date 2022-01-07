
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct ubifs_data_node {int size; int compr_type; scalar_t__ compr_size; int data; TYPE_1__ ch; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_COMPR_NONE ;
 int UBIFS_DATA_NODE_SZ ;
 int WORST_COMPR_FACTOR ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int kfree (void*) ;
 void* kmalloc_array (int,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int ubifs_assert (struct ubifs_info const*,int) ;
 int ubifs_compress (struct ubifs_info const*,void*,int,int *,int*,int*) ;
 scalar_t__ ubifs_crypt_is_encrypted (struct inode const*) ;
 int ubifs_decompress (struct ubifs_info const*,int *,int,void*,int*,int) ;
 int ubifs_decrypt (struct inode const*,struct ubifs_data_node*,int*,unsigned int) ;
 int ubifs_encrypt (struct inode const*,struct ubifs_data_node*,int,int*,unsigned int) ;

__attribute__((used)) static int truncate_data_node(const struct ubifs_info *c, const struct inode *inode,
         unsigned int block, struct ubifs_data_node *dn,
         int *new_len)
{
 void *buf;
 int err, dlen, compr_type, out_len, old_dlen;

 out_len = le32_to_cpu(dn->size);
 buf = kmalloc_array(out_len, WORST_COMPR_FACTOR, GFP_NOFS);
 if (!buf)
  return -ENOMEM;

 dlen = old_dlen = le32_to_cpu(dn->ch.len) - UBIFS_DATA_NODE_SZ;
 compr_type = le16_to_cpu(dn->compr_type);

 if (ubifs_crypt_is_encrypted(inode)) {
  err = ubifs_decrypt(inode, dn, &dlen, block);
  if (err)
   goto out;
 }

 if (compr_type == UBIFS_COMPR_NONE) {
  out_len = *new_len;
 } else {
  err = ubifs_decompress(c, &dn->data, dlen, buf, &out_len, compr_type);
  if (err)
   goto out;

  ubifs_compress(c, buf, *new_len, &dn->data, &out_len, &compr_type);
 }

 if (ubifs_crypt_is_encrypted(inode)) {
  err = ubifs_encrypt(inode, dn, out_len, &old_dlen, block);
  if (err)
   goto out;

  out_len = old_dlen;
 } else {
  dn->compr_size = 0;
 }

 ubifs_assert(c, out_len <= UBIFS_BLOCK_SIZE);
 dn->compr_type = cpu_to_le16(compr_type);
 dn->size = cpu_to_le32(*new_len);
 *new_len = UBIFS_DATA_NODE_SZ + out_len;
 err = 0;
out:
 kfree(buf);
 return err;
}
