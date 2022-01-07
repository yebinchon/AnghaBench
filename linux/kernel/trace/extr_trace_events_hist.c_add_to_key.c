
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hist_field {size_t size; int flags; int offset; struct ftrace_event_field* field; } ;
struct ftrace_event_field {scalar_t__ filter_type; int offset; size_t size; } ;


 scalar_t__ FILTER_DYN_STRING ;
 scalar_t__ FILTER_PTR_STRING ;
 scalar_t__ FILTER_STATIC_STRING ;
 int HIST_FIELD_FL_STRING ;
 int memcpy (char*,void*,size_t) ;
 size_t strlen (void*) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static inline void add_to_key(char *compound_key, void *key,
         struct hist_field *key_field, void *rec)
{
 size_t size = key_field->size;

 if (key_field->flags & HIST_FIELD_FL_STRING) {
  struct ftrace_event_field *field;

  field = key_field->field;
  if (field->filter_type == FILTER_DYN_STRING)
   size = *(u32 *)(rec + field->offset) >> 16;
  else if (field->filter_type == FILTER_PTR_STRING)
   size = strlen(key);
  else if (field->filter_type == FILTER_STATIC_STRING)
   size = field->size;


  if (size > key_field->size - 1)
   size = key_field->size - 1;

  strncpy(compound_key + key_field->offset, (char *)key, size);
 } else
  memcpy(compound_key + key_field->offset, key, size);
}
