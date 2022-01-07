
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tep_record {char* data; } ;
struct tep_handle {int dummy; } ;
struct TYPE_3__ {char* buffer; TYPE_2__* field; } ;
struct tep_filter_arg {TYPE_1__ str; } ;
struct tep_event {struct tep_handle* tep; } ;
struct TYPE_4__ {int flags; int offset; unsigned int size; struct tep_event* event; } ;


 int TEP_FIELD_IS_DYNAMIC ;
 int TEP_FIELD_IS_LONG ;
 int TEP_FIELD_IS_POINTER ;
 int TEP_FIELD_IS_STRING ;
 unsigned long long get_value (struct tep_event*,TYPE_2__*,struct tep_record*) ;
 int memcpy (char*,char const*,unsigned int) ;
 int snprintf (char*,int,char*,unsigned long long) ;
 char* tep_find_function (struct tep_handle*,unsigned long long) ;

__attribute__((used)) static const char *get_field_str(struct tep_filter_arg *arg, struct tep_record *record)
{
 struct tep_event *event;
 struct tep_handle *tep;
 unsigned long long addr;
 const char *val = ((void*)0);
 unsigned int size;
 char hex[64];


 if (arg->str.field->flags & TEP_FIELD_IS_STRING) {
  val = record->data + arg->str.field->offset;
  size = arg->str.field->size;

  if (arg->str.field->flags & TEP_FIELD_IS_DYNAMIC) {
   addr = *(unsigned int *)val;
   val = record->data + (addr & 0xffff);
   size = addr >> 16;
  }





  if (*(val + size - 1)) {

   memcpy(arg->str.buffer, val, arg->str.field->size);

   val = arg->str.buffer;
  }

 } else {
  event = arg->str.field->event;
  tep = event->tep;
  addr = get_value(event, arg->str.field, record);

  if (arg->str.field->flags & (TEP_FIELD_IS_POINTER | TEP_FIELD_IS_LONG))

   val = tep_find_function(tep, addr);

  if (val == ((void*)0)) {

   snprintf(hex, 64, "0x%llx", addr);
   val = hex;
  }
 }

 return val;
}
