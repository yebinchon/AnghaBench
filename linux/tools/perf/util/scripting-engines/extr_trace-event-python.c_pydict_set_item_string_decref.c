
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyDict_SetItemString (int *,char const*,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static void pydict_set_item_string_decref(PyObject *dict, const char *key, PyObject *val)
{
 PyDict_SetItemString(dict, key, val);
 Py_DECREF(val);
}
