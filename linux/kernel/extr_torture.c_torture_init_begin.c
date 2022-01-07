
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FULLSTOP_DONTSTOP ;
 int fullstop ;
 int fullstop_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_alert (char*,...) ;
 char* torture_type ;
 int verbose ;

bool torture_init_begin(char *ttype, int v)
{
 mutex_lock(&fullstop_mutex);
 if (torture_type != ((void*)0)) {
  pr_alert("torture_init_begin: Refusing %s init: %s running.\n",
    ttype, torture_type);
  pr_alert("torture_init_begin: One torture test at a time!\n");
  mutex_unlock(&fullstop_mutex);
  return 0;
 }
 torture_type = ttype;
 verbose = v;
 fullstop = FULLSTOP_DONTSTOP;
 return 1;
}
