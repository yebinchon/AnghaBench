
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int * cpr; TYPE_3__* crp; } ;
struct tables {int db_export_mode; int synth_handler; TYPE_2__ dbe; } ;
struct TYPE_7__ {int * cpr; } ;
struct TYPE_5__ {int priv_size; } ;
typedef int PyObject ;


 int * PyDict_GetItemString (int ,char const*) ;
 int PyObject_IsTrue (int *) ;
 int Py_FatalError (char*) ;
 int SET_TABLE_HANDLER (int ) ;
 int branch_type ;
 int call_path ;
 int * call_path_root__new () ;
 int call_return ;
 TYPE_3__* call_return_processor__new (int ,TYPE_2__*) ;
 int comm ;
 int comm_thread ;
 int context_switch ;
 scalar_t__ db_export__init (TYPE_2__*) ;
 int dso ;
 int evsel ;
 int get_handler (char*) ;
 int handler_call_die (char const*) ;
 int machine ;
 int main_dict ;
 int memset (struct tables*,int ,int) ;
 int python_process_call_return ;
 int sample ;
 int symbol ;
 TYPE_1__ symbol_conf ;
 int thread ;

__attribute__((used)) static void set_table_handlers(struct tables *tables)
{
 const char *perf_db_export_mode = "perf_db_export_mode";
 const char *perf_db_export_calls = "perf_db_export_calls";
 const char *perf_db_export_callchains = "perf_db_export_callchains";
 PyObject *db_export_mode, *db_export_calls, *db_export_callchains;
 bool export_calls = 0;
 bool export_callchains = 0;
 int ret;

 memset(tables, 0, sizeof(struct tables));
 if (db_export__init(&tables->dbe))
  Py_FatalError("failed to initialize export");

 db_export_mode = PyDict_GetItemString(main_dict, perf_db_export_mode);
 if (!db_export_mode)
  return;

 ret = PyObject_IsTrue(db_export_mode);
 if (ret == -1)
  handler_call_die(perf_db_export_mode);
 if (!ret)
  return;


 tables->dbe.crp = ((void*)0);
 db_export_calls = PyDict_GetItemString(main_dict, perf_db_export_calls);
 if (db_export_calls) {
  ret = PyObject_IsTrue(db_export_calls);
  if (ret == -1)
   handler_call_die(perf_db_export_calls);
  export_calls = !!ret;
 }

 if (export_calls) {
  tables->dbe.crp =
   call_return_processor__new(python_process_call_return,
         &tables->dbe);
  if (!tables->dbe.crp)
   Py_FatalError("failed to create calls processor");
 }


 tables->dbe.cpr = ((void*)0);
 db_export_callchains = PyDict_GetItemString(main_dict,
          perf_db_export_callchains);
 if (db_export_callchains) {
  ret = PyObject_IsTrue(db_export_callchains);
  if (ret == -1)
   handler_call_die(perf_db_export_callchains);
  export_callchains = !!ret;
 }

 if (export_callchains) {






  if (tables->dbe.crp)
   tables->dbe.cpr = tables->dbe.crp->cpr;
  else
   tables->dbe.cpr = call_path_root__new();

  if (!tables->dbe.cpr)
   Py_FatalError("failed to create call path root");
 }

 tables->db_export_mode = 1;



 symbol_conf.priv_size = sizeof(u64);

 SET_TABLE_HANDLER(evsel);
 SET_TABLE_HANDLER(machine);
 SET_TABLE_HANDLER(thread);
 SET_TABLE_HANDLER(comm);
 SET_TABLE_HANDLER(comm_thread);
 SET_TABLE_HANDLER(dso);
 SET_TABLE_HANDLER(symbol);
 SET_TABLE_HANDLER(branch_type);
 SET_TABLE_HANDLER(sample);
 SET_TABLE_HANDLER(call_path);
 SET_TABLE_HANDLER(call_return);
 SET_TABLE_HANDLER(context_switch);







 tables->synth_handler = get_handler("synth_data");
}
