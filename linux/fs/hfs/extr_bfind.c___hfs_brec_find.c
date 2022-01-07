
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct hfs_find_data {int record; scalar_t__ entrylength; scalar_t__ entryoffset; scalar_t__ keylength; scalar_t__ keyoffset; int key; int search_key; } ;
struct hfs_bnode {int num_recs; TYPE_1__* tree; } ;
struct TYPE_2__ {int (* keycmp ) (int ,int ) ;} ;


 int EINVAL ;
 int ENOENT ;
 int hfs_bnode_read (struct hfs_bnode*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ hfs_brec_keylen (struct hfs_bnode*,int) ;
 scalar_t__ hfs_brec_lenoff (struct hfs_bnode*,int,scalar_t__*) ;
 int stub1 (int ,int ) ;

int __hfs_brec_find(struct hfs_bnode *bnode, struct hfs_find_data *fd)
{
 int cmpval;
 u16 off, len, keylen;
 int rec;
 int b, e;
 int res;

 b = 0;
 e = bnode->num_recs - 1;
 res = -ENOENT;
 do {
  rec = (e + b) / 2;
  len = hfs_brec_lenoff(bnode, rec, &off);
  keylen = hfs_brec_keylen(bnode, rec);
  if (keylen == 0) {
   res = -EINVAL;
   goto fail;
  }
  hfs_bnode_read(bnode, fd->key, off, keylen);
  cmpval = bnode->tree->keycmp(fd->key, fd->search_key);
  if (!cmpval) {
   e = rec;
   res = 0;
   goto done;
  }
  if (cmpval < 0)
   b = rec + 1;
  else
   e = rec - 1;
 } while (b <= e);
 if (rec != e && e >= 0) {
  len = hfs_brec_lenoff(bnode, e, &off);
  keylen = hfs_brec_keylen(bnode, e);
  if (keylen == 0) {
   res = -EINVAL;
   goto fail;
  }
  hfs_bnode_read(bnode, fd->key, off, keylen);
 }
done:
 fd->record = e;
 fd->keyoffset = off;
 fd->keylength = keylen;
 fd->entryoffset = off + keylen;
 fd->entrylength = len - keylen;
fail:
 return res;
}
