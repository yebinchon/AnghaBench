
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfs_find_data {int search_key; int key; } ;
struct hfs_bnode {TYPE_1__* tree; } ;
struct TYPE_2__ {int (* keycmp ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

int hfs_find_rec_by_key(struct hfs_bnode *bnode,
    struct hfs_find_data *fd,
    int *begin,
    int *end,
    int *cur_rec)
{
 int cmpval;

 cmpval = bnode->tree->keycmp(fd->key, fd->search_key);
 if (!cmpval) {
  (*end) = (*cur_rec);
  return 1;
 }
 if (cmpval < 0)
  (*begin) = (*cur_rec) + 1;
 else
  *(end) = (*cur_rec) - 1;

 return 0;
}
