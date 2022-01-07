
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tep_print_arg_type { ____Placeholder_tep_print_arg_type } tep_print_arg_type ;
typedef int PyObject ;


 int * PyTuple_New (int) ;
 int PyTuple_SetItem (int *,int ,int ) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 int TEP_PRINT_FLAGS ;
 int TEP_PRINT_SYMBOL ;
 int _PyUnicode_FromString (char const*) ;
 int try_call_object (char const*,int *) ;

__attribute__((used)) static void define_field(enum tep_print_arg_type field_type,
    const char *ev_name,
    const char *field_name,
    const char *delim)
{
 const char *handler_name = "define_flag_field";
 PyObject *t;
 unsigned n = 0;

 if (field_type == TEP_PRINT_SYMBOL)
  handler_name = "define_symbolic_field";

 if (field_type == TEP_PRINT_FLAGS)
  t = PyTuple_New(3);
 else
  t = PyTuple_New(2);
 if (!t)
  Py_FatalError("couldn't create Python tuple");

 PyTuple_SetItem(t, n++, _PyUnicode_FromString(ev_name));
 PyTuple_SetItem(t, n++, _PyUnicode_FromString(field_name));
 if (field_type == TEP_PRINT_FLAGS)
  PyTuple_SetItem(t, n++, _PyUnicode_FromString(delim));

 try_call_object(handler_name, t);

 Py_DECREF(t);
}
