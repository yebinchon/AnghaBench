
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_format_field {int name; } ;
struct TYPE_2__ {int elide; int level; scalar_t__ user_len; scalar_t__ len; int sort_list; int list; int free; int equal; void* sort; void* collapse; void* cmp; int * color; int entry; int width; int header; int name; } ;
struct hpp_dynamic_entry {TYPE_1__ hpp; scalar_t__ dynamic_len; struct tep_format_field* field; struct evsel* evsel; } ;
struct evsel {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 void* __sort__hde_cmp ;
 int __sort__hde_entry ;
 int __sort__hde_equal ;
 int __sort__hde_header ;
 int __sort__hde_width ;
 int hde_free ;
 struct hpp_dynamic_entry* malloc (int) ;
 int pr_debug (char*) ;

__attribute__((used)) static struct hpp_dynamic_entry *
__alloc_dynamic_entry(struct evsel *evsel, struct tep_format_field *field,
        int level)
{
 struct hpp_dynamic_entry *hde;

 hde = malloc(sizeof(*hde));
 if (hde == ((void*)0)) {
  pr_debug("Memory allocation failed\n");
  return ((void*)0);
 }

 hde->evsel = evsel;
 hde->field = field;
 hde->dynamic_len = 0;

 hde->hpp.name = field->name;
 hde->hpp.header = __sort__hde_header;
 hde->hpp.width = __sort__hde_width;
 hde->hpp.entry = __sort__hde_entry;
 hde->hpp.color = ((void*)0);

 hde->hpp.cmp = __sort__hde_cmp;
 hde->hpp.collapse = __sort__hde_cmp;
 hde->hpp.sort = __sort__hde_cmp;
 hde->hpp.equal = __sort__hde_equal;
 hde->hpp.free = hde_free;

 INIT_LIST_HEAD(&hde->hpp.list);
 INIT_LIST_HEAD(&hde->hpp.sort_list);
 hde->hpp.elide = 0;
 hde->hpp.len = 0;
 hde->hpp.user_len = 0;
 hde->hpp.level = level;

 return hde;
}
