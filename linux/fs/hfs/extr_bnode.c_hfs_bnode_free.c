
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfs_bnode {scalar_t__* page; TYPE_1__* tree; } ;
struct TYPE_2__ {int pages_per_bnode; } ;


 int kfree (struct hfs_bnode*) ;
 int put_page (scalar_t__) ;

void hfs_bnode_free(struct hfs_bnode *node)
{
 int i;

 for (i = 0; i < node->tree->pages_per_bnode; i++)
  if (node->page[i])
   put_page(node->page[i]);
 kfree(node);
}
