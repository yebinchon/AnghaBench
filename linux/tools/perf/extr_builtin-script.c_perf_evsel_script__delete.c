
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel_script {int * fp; int filename; } ;


 int fclose (int *) ;
 int free (struct evsel_script*) ;
 int zfree (int *) ;

__attribute__((used)) static void perf_evsel_script__delete(struct evsel_script *es)
{
 zfree(&es->filename);
 fclose(es->fp);
 es->fp = ((void*)0);
 free(es);
}
