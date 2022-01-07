
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
struct cgroup {int dummy; } ;


 struct cgroup* cgroup__new (char const*) ;
 struct cgroup* evlist__find_cgroup (struct evlist*,char const*) ;

struct cgroup *evlist__findnew_cgroup(struct evlist *evlist, const char *name)
{
 struct cgroup *cgroup = evlist__find_cgroup(evlist, name);

 return cgroup ?: cgroup__new(name);
}
