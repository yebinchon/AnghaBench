
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_scan_node {int type; int offs; int list; int key; void* node; int len; int sqnum; } ;
struct ubifs_scan_leb {int nodes_cnt; int nodes; } ;
struct ubifs_ino_node {int key; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_ch {int node_type; int len; int sqnum; } ;


 int ENOMEM ;
 int GFP_NOFS ;




 int invalid_key_init (struct ubifs_info const*,int *) ;
 int key_read (struct ubifs_info const*,int *,int *) ;
 struct ubifs_scan_node* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;

int ubifs_add_snod(const struct ubifs_info *c, struct ubifs_scan_leb *sleb,
     void *buf, int offs)
{
 struct ubifs_ch *ch = buf;
 struct ubifs_ino_node *ino = buf;
 struct ubifs_scan_node *snod;

 snod = kmalloc(sizeof(struct ubifs_scan_node), GFP_NOFS);
 if (!snod)
  return -ENOMEM;

 snod->sqnum = le64_to_cpu(ch->sqnum);
 snod->type = ch->node_type;
 snod->offs = offs;
 snod->len = le32_to_cpu(ch->len);
 snod->node = buf;

 switch (ch->node_type) {
 case 129:
 case 130:
 case 128:
 case 131:




  key_read(c, &ino->key, &snod->key);
  break;
 default:
  invalid_key_init(c, &snod->key);
  break;
 }
 list_add_tail(&snod->list, &sleb->nodes);
 sleb->nodes_cnt += 1;
 return 0;
}
