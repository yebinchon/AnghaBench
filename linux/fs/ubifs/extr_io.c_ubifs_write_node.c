
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ubifs_write_node_hmac (struct ubifs_info*,void*,int,int,int,int) ;

int ubifs_write_node(struct ubifs_info *c, void *buf, int len, int lnum,
       int offs)
{
 return ubifs_write_node_hmac(c, buf, len, lnum, offs, -1);
}
