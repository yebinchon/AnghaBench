
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_pagelist_cursor {int room; int page_lru; struct ceph_pagelist* pl; } ;
struct TYPE_2__ {int prev; } ;
struct ceph_pagelist {int room; TYPE_1__ head; } ;



void ceph_pagelist_set_cursor(struct ceph_pagelist *pl,
         struct ceph_pagelist_cursor *c)
{
 c->pl = pl;
 c->page_lru = pl->head.prev;
 c->room = pl->room;
}
