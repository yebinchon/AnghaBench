
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {void* name; } ;
struct hist_field {int size; char* type; unsigned long flags; TYPE_1__ var; struct ftrace_event_field* field; int fn; int is_signed; struct hist_field** operands; struct hist_trigger_data* hist_data; } ;
struct ftrace_event_field {char* type; scalar_t__ filter_type; int size; int is_signed; } ;


 scalar_t__ FILTER_DYN_STRING ;
 scalar_t__ FILTER_STATIC_STRING ;
 int GFP_KERNEL ;
 unsigned long HIST_FIELD_FL_ALIAS ;
 unsigned long HIST_FIELD_FL_CPU ;
 unsigned long HIST_FIELD_FL_EXPR ;
 unsigned long HIST_FIELD_FL_HITCOUNT ;
 unsigned long HIST_FIELD_FL_LOG2 ;
 unsigned long HIST_FIELD_FL_STACKTRACE ;
 unsigned long HIST_FIELD_FL_STRING ;
 unsigned long HIST_FIELD_FL_TIMESTAMP ;
 unsigned long HIST_FIELD_FL_VAR_REF ;
 int MAX_FILTER_STR_VAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int destroy_hist_field (struct hist_field*,int ) ;
 int hist_field_counter ;
 int hist_field_cpu ;
 int hist_field_dynstring ;
 int hist_field_log2 ;
 int hist_field_none ;
 int hist_field_pstring ;
 int hist_field_string ;
 int hist_field_timestamp ;
 int hist_field_var_ref ;
 scalar_t__ is_function_field (struct ftrace_event_field*) ;
 scalar_t__ is_string_field (struct ftrace_event_field*) ;
 void* kstrdup (char*,int ) ;
 struct hist_field* kzalloc (int,int ) ;
 int select_value_fn (int,int ) ;

__attribute__((used)) static struct hist_field *create_hist_field(struct hist_trigger_data *hist_data,
         struct ftrace_event_field *field,
         unsigned long flags,
         char *var_name)
{
 struct hist_field *hist_field;

 if (field && is_function_field(field))
  return ((void*)0);

 hist_field = kzalloc(sizeof(struct hist_field), GFP_KERNEL);
 if (!hist_field)
  return ((void*)0);

 hist_field->hist_data = hist_data;

 if (flags & HIST_FIELD_FL_EXPR || flags & HIST_FIELD_FL_ALIAS)
  goto out;

 if (flags & HIST_FIELD_FL_VAR_REF) {
  hist_field->fn = hist_field_var_ref;
  goto out;
 }

 if (flags & HIST_FIELD_FL_HITCOUNT) {
  hist_field->fn = hist_field_counter;
  hist_field->size = sizeof(u64);
  hist_field->type = kstrdup("u64", GFP_KERNEL);
  if (!hist_field->type)
   goto free;
  goto out;
 }

 if (flags & HIST_FIELD_FL_STACKTRACE) {
  hist_field->fn = hist_field_none;
  goto out;
 }

 if (flags & HIST_FIELD_FL_LOG2) {
  unsigned long fl = flags & ~HIST_FIELD_FL_LOG2;
  hist_field->fn = hist_field_log2;
  hist_field->operands[0] = create_hist_field(hist_data, field, fl, ((void*)0));
  hist_field->size = hist_field->operands[0]->size;
  hist_field->type = kstrdup(hist_field->operands[0]->type, GFP_KERNEL);
  if (!hist_field->type)
   goto free;
  goto out;
 }

 if (flags & HIST_FIELD_FL_TIMESTAMP) {
  hist_field->fn = hist_field_timestamp;
  hist_field->size = sizeof(u64);
  hist_field->type = kstrdup("u64", GFP_KERNEL);
  if (!hist_field->type)
   goto free;
  goto out;
 }

 if (flags & HIST_FIELD_FL_CPU) {
  hist_field->fn = hist_field_cpu;
  hist_field->size = sizeof(int);
  hist_field->type = kstrdup("unsigned int", GFP_KERNEL);
  if (!hist_field->type)
   goto free;
  goto out;
 }

 if (WARN_ON_ONCE(!field))
  goto out;

 if (is_string_field(field)) {
  flags |= HIST_FIELD_FL_STRING;

  hist_field->size = MAX_FILTER_STR_VAL;
  hist_field->type = kstrdup(field->type, GFP_KERNEL);
  if (!hist_field->type)
   goto free;

  if (field->filter_type == FILTER_STATIC_STRING)
   hist_field->fn = hist_field_string;
  else if (field->filter_type == FILTER_DYN_STRING)
   hist_field->fn = hist_field_dynstring;
  else
   hist_field->fn = hist_field_pstring;
 } else {
  hist_field->size = field->size;
  hist_field->is_signed = field->is_signed;
  hist_field->type = kstrdup(field->type, GFP_KERNEL);
  if (!hist_field->type)
   goto free;

  hist_field->fn = select_value_fn(field->size,
       field->is_signed);
  if (!hist_field->fn) {
   destroy_hist_field(hist_field, 0);
   return ((void*)0);
  }
 }
 out:
 hist_field->field = field;
 hist_field->flags = flags;

 if (var_name) {
  hist_field->var.name = kstrdup(var_name, GFP_KERNEL);
  if (!hist_field->var.name)
   goto free;
 }

 return hist_field;
 free:
 destroy_hist_field(hist_field, 0);
 return ((void*)0);
}
