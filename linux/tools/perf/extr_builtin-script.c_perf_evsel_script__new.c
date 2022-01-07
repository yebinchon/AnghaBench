
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
struct perf_data {TYPE_1__ file; } ;
struct evsel_script {int filename; int * fp; } ;
struct evsel {int dummy; } ;


 scalar_t__ asprintf (int *,char*,int ,int ) ;
 int * fopen (int ,char*) ;
 int free (struct evsel_script*) ;
 int perf_evsel__name (struct evsel*) ;
 struct evsel_script* zalloc (int) ;
 int zfree (int *) ;

__attribute__((used)) static struct evsel_script *perf_evsel_script__new(struct evsel *evsel,
       struct perf_data *data)
{
 struct evsel_script *es = zalloc(sizeof(*es));

 if (es != ((void*)0)) {
  if (asprintf(&es->filename, "%s.%s.dump", data->file.path, perf_evsel__name(evsel)) < 0)
   goto out_free;
  es->fp = fopen(es->filename, "w");
  if (es->fp == ((void*)0))
   goto out_free_filename;
 }

 return es;
out_free_filename:
 zfree(&es->filename);
out_free:
 free(es);
 return ((void*)0);
}
