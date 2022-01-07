
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_xattr_info {int name; int name_index; scalar_t__ value_len; int value; } ;
struct TYPE_11__ {int not_found; scalar_t__ end; int here; int first; TYPE_8__* base; } ;
struct ext4_xattr_block_find {TYPE_1__ s; TYPE_2__* bh; } ;
struct TYPE_14__ {int h_refcount; } ;
struct TYPE_13__ {scalar_t__ i_file_acl; } ;
struct TYPE_12__ {scalar_t__ b_size; scalar_t__ b_data; int b_count; } ;


 int BFIRST (TYPE_2__*) ;
 TYPE_8__* BHDR (TYPE_2__*) ;
 int ENODATA ;
 TYPE_7__* EXT4_I (struct inode*) ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PTR_ERR (TYPE_2__*) ;
 int REQ_PRIO ;
 int atomic_read (int *) ;
 int ea_bdebug (TYPE_2__*,char*,int ,int ) ;
 int ea_idebug (struct inode*,char*,int ,int ,int ,long) ;
 TYPE_2__* ext4_sb_bread (struct super_block*,scalar_t__,int ) ;
 int ext4_xattr_check_block (struct inode*,TYPE_2__*) ;
 int le32_to_cpu (int ) ;
 int xattr_find_entry (struct inode*,int *,scalar_t__,int ,int ,int) ;

__attribute__((used)) static int
ext4_xattr_block_find(struct inode *inode, struct ext4_xattr_info *i,
        struct ext4_xattr_block_find *bs)
{
 struct super_block *sb = inode->i_sb;
 int error;

 ea_idebug(inode, "name=%d.%s, value=%p, value_len=%ld",
    i->name_index, i->name, i->value, (long)i->value_len);

 if (EXT4_I(inode)->i_file_acl) {

  bs->bh = ext4_sb_bread(sb, EXT4_I(inode)->i_file_acl, REQ_PRIO);
  if (IS_ERR(bs->bh))
   return PTR_ERR(bs->bh);
  ea_bdebug(bs->bh, "b_count=%d, refcount=%d",
   atomic_read(&(bs->bh->b_count)),
   le32_to_cpu(BHDR(bs->bh)->h_refcount));
  error = ext4_xattr_check_block(inode, bs->bh);
  if (error)
   return error;

  bs->s.base = BHDR(bs->bh);
  bs->s.first = BFIRST(bs->bh);
  bs->s.end = bs->bh->b_data + bs->bh->b_size;
  bs->s.here = bs->s.first;
  error = xattr_find_entry(inode, &bs->s.here, bs->s.end,
      i->name_index, i->name, 1);
  if (error && error != -ENODATA)
   return error;
  bs->s.not_found = error;
 }
 return 0;
}
