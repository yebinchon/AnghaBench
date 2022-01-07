
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sort_dimension {TYPE_1__* entry; } ;
struct TYPE_4__ {int elide; int level; scalar_t__ user_len; scalar_t__ len; int sort_list; int list; int free; int equal; int sort; int collapse; int cmp; int * color; int entry; int width; int header; int name; } ;
struct hpp_sort_entry {TYPE_2__ hpp; TYPE_1__* se; } ;
struct TYPE_3__ {int se_header; } ;


 int INIT_LIST_HEAD (int *) ;
 int __sort__hpp_cmp ;
 int __sort__hpp_collapse ;
 int __sort__hpp_entry ;
 int __sort__hpp_equal ;
 int __sort__hpp_header ;
 int __sort__hpp_sort ;
 int __sort__hpp_width ;
 int hse_free ;
 struct hpp_sort_entry* malloc (int) ;
 int pr_err (char*) ;

__attribute__((used)) static struct hpp_sort_entry *
__sort_dimension__alloc_hpp(struct sort_dimension *sd, int level)
{
 struct hpp_sort_entry *hse;

 hse = malloc(sizeof(*hse));
 if (hse == ((void*)0)) {
  pr_err("Memory allocation failed\n");
  return ((void*)0);
 }

 hse->se = sd->entry;
 hse->hpp.name = sd->entry->se_header;
 hse->hpp.header = __sort__hpp_header;
 hse->hpp.width = __sort__hpp_width;
 hse->hpp.entry = __sort__hpp_entry;
 hse->hpp.color = ((void*)0);

 hse->hpp.cmp = __sort__hpp_cmp;
 hse->hpp.collapse = __sort__hpp_collapse;
 hse->hpp.sort = __sort__hpp_sort;
 hse->hpp.equal = __sort__hpp_equal;
 hse->hpp.free = hse_free;

 INIT_LIST_HEAD(&hse->hpp.list);
 INIT_LIST_HEAD(&hse->hpp.sort_list);
 hse->hpp.elide = 0;
 hse->hpp.len = 0;
 hse->hpp.user_len = 0;
 hse->hpp.level = level;

 return hse;
}
