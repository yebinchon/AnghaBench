
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;
struct evlist {int dummy; } ;


 int PTR_ERR_OR_ZERO (struct evsel*) ;
 struct evsel* bpf__setup_output_event (struct evlist*,char*) ;

int bpf__setup_stdout(struct evlist *evlist)
{
 struct evsel *evsel = bpf__setup_output_event(evlist, "__bpf_stdout__");
 return PTR_ERR_OR_ZERO(evsel);
}
