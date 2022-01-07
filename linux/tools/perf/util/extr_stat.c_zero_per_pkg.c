
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evsel {scalar_t__ per_pkg_mask; } ;


 int cpu__max_cpu () ;
 int memset (scalar_t__,int ,int ) ;

__attribute__((used)) static void zero_per_pkg(struct evsel *counter)
{
 if (counter->per_pkg_mask)
  memset(counter->per_pkg_mask, 0, cpu__max_cpu());
}
