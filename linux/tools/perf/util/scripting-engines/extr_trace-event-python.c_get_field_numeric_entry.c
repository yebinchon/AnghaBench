
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_format_field {int flags; unsigned int arraylen; unsigned int size; int offset; } ;
struct tep_event {int dummy; } ;
typedef int PyObject ;


 long long LONG_MAX ;
 long long LONG_MIN ;
 int * PyList_New (unsigned int) ;
 int PyList_SET_ITEM (int *,unsigned int,int *) ;
 int * PyLong_FromLongLong (unsigned long long) ;
 int * PyLong_FromUnsignedLongLong (unsigned long long) ;
 int TEP_FIELD_IS_ARRAY ;
 int TEP_FIELD_IS_SIGNED ;
 int * _PyLong_FromLong (unsigned long long) ;
 unsigned long long read_size (struct tep_event*,void*,unsigned int) ;

__attribute__((used)) static PyObject *get_field_numeric_entry(struct tep_event *event,
  struct tep_format_field *field, void *data)
{
 bool is_array = field->flags & TEP_FIELD_IS_ARRAY;
 PyObject *obj = ((void*)0), *list = ((void*)0);
 unsigned long long val;
 unsigned int item_size, n_items, i;

 if (is_array) {
  list = PyList_New(field->arraylen);
  item_size = field->size / field->arraylen;
  n_items = field->arraylen;
 } else {
  item_size = field->size;
  n_items = 1;
 }

 for (i = 0; i < n_items; i++) {

  val = read_size(event, data + field->offset + i * item_size,
    item_size);
  if (field->flags & TEP_FIELD_IS_SIGNED) {
   if ((long long)val >= LONG_MIN &&
     (long long)val <= LONG_MAX)
    obj = _PyLong_FromLong(val);
   else
    obj = PyLong_FromLongLong(val);
  } else {
   if (val <= LONG_MAX)
    obj = _PyLong_FromLong(val);
   else
    obj = PyLong_FromUnsignedLongLong(val);
  }
  if (is_array)
   PyList_SET_ITEM(list, i, obj);
 }
 if (is_array)
  obj = list;
 return obj;
}
