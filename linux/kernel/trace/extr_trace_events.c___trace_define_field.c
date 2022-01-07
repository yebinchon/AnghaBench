
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct ftrace_event_field {char const* name; char const* type; int filter_type; int offset; int size; int is_signed; int link; } ;


 int ENOMEM ;
 int FILTER_OTHER ;
 int GFP_TRACE ;
 int field_cachep ;
 int filter_assign_type (char const*) ;
 struct ftrace_event_field* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int __trace_define_field(struct list_head *head, const char *type,
    const char *name, int offset, int size,
    int is_signed, int filter_type)
{
 struct ftrace_event_field *field;

 field = kmem_cache_alloc(field_cachep, GFP_TRACE);
 if (!field)
  return -ENOMEM;

 field->name = name;
 field->type = type;

 if (filter_type == FILTER_OTHER)
  field->filter_type = filter_assign_type(type);
 else
  field->filter_type = filter_type;

 field->offset = offset;
 field->size = size;
 field->is_signed = is_signed;

 list_add(&field->link, head);

 return 0;
}
