
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {int dummy; } ;
struct evlist {int dummy; } ;


 struct evsel* evlist__last (struct evlist*) ;
 int evsel__enable (struct evsel*) ;

__attribute__((used)) static int detach__disable(struct evlist *evlist)
{
 struct evsel *evsel = evlist__last(evlist);

 return evsel__enable(evsel);
}
