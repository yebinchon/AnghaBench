
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct ubifs_data_node {int compr_size; int data; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int GFP_NOFS ;
 int UBIFS_CIPHER_BLOCK_SIZE ;
 int cpu_to_le16 (unsigned int) ;
 int fscrypt_encrypt_block_inplace (struct inode const*,int ,unsigned int,int ,int,int ) ;
 int memset (void*,int ,unsigned int) ;
 int offset_in_page (void*) ;
 unsigned int round_up (unsigned int,int ) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_err (struct ubifs_info*,char*,int) ;
 int virt_to_page (void*) ;

int ubifs_encrypt(const struct inode *inode, struct ubifs_data_node *dn,
    unsigned int in_len, unsigned int *out_len, int block)
{
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 void *p = &dn->data;
 unsigned int pad_len = round_up(in_len, UBIFS_CIPHER_BLOCK_SIZE);
 int err;

 ubifs_assert(c, pad_len <= *out_len);
 dn->compr_size = cpu_to_le16(in_len);


 if (pad_len != in_len)
  memset(p + in_len, 0, pad_len - in_len);

 err = fscrypt_encrypt_block_inplace(inode, virt_to_page(p), pad_len,
         offset_in_page(p), block, GFP_NOFS);
 if (err) {
  ubifs_err(c, "fscrypt_encrypt_block_inplace() failed: %d", err);
  return err;
 }
 *out_len = pad_len;

 return 0;
}
