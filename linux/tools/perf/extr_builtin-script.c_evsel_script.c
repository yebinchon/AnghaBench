
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel_script {int dummy; } ;
struct evsel {scalar_t__ priv; } ;



__attribute__((used)) static inline struct evsel_script *evsel_script(struct evsel *evsel)
{
 return (struct evsel_script *)evsel->priv;
}
