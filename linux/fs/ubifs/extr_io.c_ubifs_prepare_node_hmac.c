
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ubifs_crc_node (struct ubifs_info*,void*,int) ;
 int ubifs_init_node (struct ubifs_info*,void*,int,int) ;
 int ubifs_node_insert_hmac (struct ubifs_info*,void*,int,int) ;

int ubifs_prepare_node_hmac(struct ubifs_info *c, void *node, int len,
       int hmac_offs, int pad)
{
 int err;

 ubifs_init_node(c, node, len, pad);

 if (hmac_offs > 0) {
  err = ubifs_node_insert_hmac(c, node, len, hmac_offs);
  if (err)
   return err;
 }

 ubifs_crc_node(c, node, len);

 return 0;
}
