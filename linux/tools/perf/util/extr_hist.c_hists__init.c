
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hists_evsel {int dummy; } ;


 int fputs (char*,int ) ;
 int hists_evsel__exit ;
 int hists_evsel__init ;
 int perf_evsel__object_config (int,int ,int ) ;
 int stderr ;

int hists__init(void)
{
 int err = perf_evsel__object_config(sizeof(struct hists_evsel),
         hists_evsel__init,
         hists_evsel__exit);
 if (err)
  fputs("FATAL ERROR: Couldn't setup hists class\n", stderr);

 return err;
}
