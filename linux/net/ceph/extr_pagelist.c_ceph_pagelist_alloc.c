
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_pagelist {int refcnt; scalar_t__ num_pages_free; int free_list; scalar_t__ room; scalar_t__ length; int * mapped_tail; int head; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct ceph_pagelist* kmalloc (int,int ) ;
 int refcount_set (int *,int) ;

struct ceph_pagelist *ceph_pagelist_alloc(gfp_t gfp_flags)
{
 struct ceph_pagelist *pl;

 pl = kmalloc(sizeof(*pl), gfp_flags);
 if (!pl)
  return ((void*)0);

 INIT_LIST_HEAD(&pl->head);
 pl->mapped_tail = ((void*)0);
 pl->length = 0;
 pl->room = 0;
 INIT_LIST_HEAD(&pl->free_list);
 pl->num_pages_free = 0;
 refcount_set(&pl->refcnt, 1);

 return pl;
}
