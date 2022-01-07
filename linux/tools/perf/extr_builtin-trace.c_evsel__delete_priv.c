
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int priv; } ;


 int evsel__delete (struct evsel*) ;
 int zfree (int *) ;

__attribute__((used)) static void evsel__delete_priv(struct evsel *evsel)
{
 zfree(&evsel->priv);
 evsel__delete(evsel);
}
