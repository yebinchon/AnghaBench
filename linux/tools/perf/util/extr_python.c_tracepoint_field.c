
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tep_handle {int dummy; } ;
struct tep_format_field {int flags; unsigned int offset; unsigned int size; TYPE_1__* event; } ;
struct TYPE_4__ {void* raw_data; } ;
struct pyrf_event {TYPE_2__ sample; } ;
struct TYPE_3__ {struct tep_handle* tep; } ;
typedef int PyObject ;


 int * PyByteArray_FromStringAndSize (char const*,unsigned int) ;
 int * PyLong_FromLong (long) ;
 int * PyLong_FromUnsignedLong (unsigned long) ;
 int TEP_FIELD_IS_ARRAY ;
 int TEP_FIELD_IS_DYNAMIC ;
 int TEP_FIELD_IS_POINTER ;
 int TEP_FIELD_IS_SIGNED ;
 int TEP_FIELD_IS_STRING ;
 int * _PyUnicode_FromString (char*) ;
 scalar_t__ is_printable_array (void*,unsigned int) ;
 unsigned long long tep_read_number (struct tep_handle*,void*,unsigned int) ;

__attribute__((used)) static PyObject*
tracepoint_field(struct pyrf_event *pe, struct tep_format_field *field)
{
 struct tep_handle *pevent = field->event->tep;
 void *data = pe->sample.raw_data;
 PyObject *ret = ((void*)0);
 unsigned long long val;
 unsigned int offset, len;

 if (field->flags & TEP_FIELD_IS_ARRAY) {
  offset = field->offset;
  len = field->size;
  if (field->flags & TEP_FIELD_IS_DYNAMIC) {
   val = tep_read_number(pevent, data + offset, len);
   offset = val;
   len = offset >> 16;
   offset &= 0xffff;
  }
  if (field->flags & TEP_FIELD_IS_STRING &&
      is_printable_array(data + offset, len)) {
   ret = _PyUnicode_FromString((char *)data + offset);
  } else {
   ret = PyByteArray_FromStringAndSize((const char *) data + offset, len);
   field->flags &= ~TEP_FIELD_IS_STRING;
  }
 } else {
  val = tep_read_number(pevent, data + field->offset,
          field->size);
  if (field->flags & TEP_FIELD_IS_POINTER)
   ret = PyLong_FromUnsignedLong((unsigned long) val);
  else if (field->flags & TEP_FIELD_IS_SIGNED)
   ret = PyLong_FromLong((long) val);
  else
   ret = PyLong_FromUnsignedLong((unsigned long) val);
 }

 return ret;
}
