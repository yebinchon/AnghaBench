
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;


 int ubifs_prepare_node_hmac (struct ubifs_info*,void*,int,int ,int) ;

void ubifs_prepare_node(struct ubifs_info *c, void *node, int len, int pad)
{




 ubifs_prepare_node_hmac(c, node, len, 0, pad);
}
