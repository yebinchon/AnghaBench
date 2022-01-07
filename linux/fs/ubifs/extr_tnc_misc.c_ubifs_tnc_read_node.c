
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int offs; int lnum; int hash; int len; union ubifs_key key; } ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_info {int dummy; } ;


 int EINVAL ;
 int UBIFS_KEY_OFFSET ;
 int dbg_tnck (union ubifs_key*,char*) ;
 int key_read (struct ubifs_info*,void*,union ubifs_key*) ;
 int key_type (struct ubifs_info*,union ubifs_key*) ;
 int keys_eq (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ;
 int ubifs_bad_hash (struct ubifs_info*,void*,int ,int ,int ) ;
 int ubifs_dump_node (struct ubifs_info*,void*) ;
 int ubifs_err (struct ubifs_info*,char*,int ,int ) ;
 struct ubifs_wbuf* ubifs_get_wbuf (struct ubifs_info*,int ) ;
 int ubifs_node_check_hash (struct ubifs_info*,void*,int ) ;
 int ubifs_read_node (struct ubifs_info*,void*,int,int ,int ,int ) ;
 int ubifs_read_node_wbuf (struct ubifs_wbuf*,void*,int,int ,int ,int ) ;

int ubifs_tnc_read_node(struct ubifs_info *c, struct ubifs_zbranch *zbr,
   void *node)
{
 union ubifs_key key1, *key = &zbr->key;
 int err, type = key_type(c, key);
 struct ubifs_wbuf *wbuf;





 wbuf = ubifs_get_wbuf(c, zbr->lnum);
 if (wbuf)
  err = ubifs_read_node_wbuf(wbuf, node, type, zbr->len,
        zbr->lnum, zbr->offs);
 else
  err = ubifs_read_node(c, node, type, zbr->len, zbr->lnum,
          zbr->offs);

 if (err) {
  dbg_tnck(key, "key ");
  return err;
 }


 key_read(c, node + UBIFS_KEY_OFFSET, &key1);
 if (!keys_eq(c, key, &key1)) {
  ubifs_err(c, "bad key in node at LEB %d:%d",
     zbr->lnum, zbr->offs);
  dbg_tnck(key, "looked for key ");
  dbg_tnck(&key1, "but found node's key ");
  ubifs_dump_node(c, node);
  return -EINVAL;
 }

 err = ubifs_node_check_hash(c, node, zbr->hash);
 if (err) {
  ubifs_bad_hash(c, node, zbr->hash, zbr->lnum, zbr->offs);
  return err;
 }

 return 0;
}
