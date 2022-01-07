
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct cgrp_cset_link {int cset_link; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int free_cgrp_cset_links (struct list_head*) ;
 struct cgrp_cset_link* kzalloc (int,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int allocate_cgrp_cset_links(int count, struct list_head *tmp_links)
{
 struct cgrp_cset_link *link;
 int i;

 INIT_LIST_HEAD(tmp_links);

 for (i = 0; i < count; i++) {
  link = kzalloc(sizeof(*link), GFP_KERNEL);
  if (!link) {
   free_cgrp_cset_links(tmp_links);
   return -ENOMEM;
  }
  list_add(&link->cset_link, tmp_links);
 }
 return 0;
}
