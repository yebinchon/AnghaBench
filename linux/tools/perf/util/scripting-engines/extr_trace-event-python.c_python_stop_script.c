
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tables {int dbe; } ;


 int Py_Finalize () ;
 int Py_XDECREF (int ) ;
 int db_export__exit (int *) ;
 int main_dict ;
 int main_module ;
 struct tables tables_global ;
 int try_call_object (char*,int *) ;

__attribute__((used)) static int python_stop_script(void)
{
 struct tables *tables = &tables_global;

 try_call_object("trace_end", ((void*)0));

 db_export__exit(&tables->dbe);

 Py_XDECREF(main_dict);
 Py_XDECREF(main_module);
 Py_Finalize();

 return 0;
}
