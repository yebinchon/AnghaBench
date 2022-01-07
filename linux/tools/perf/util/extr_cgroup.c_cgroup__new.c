
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int fd; int name; int refcnt; } ;


 int free (struct cgroup*) ;
 int open_cgroup (char const*) ;
 int refcount_set (int *,int) ;
 int strdup (char const*) ;
 struct cgroup* zalloc (int) ;
 int zfree (int *) ;

__attribute__((used)) static struct cgroup *cgroup__new(const char *name)
{
 struct cgroup *cgroup = zalloc(sizeof(*cgroup));

 if (cgroup != ((void*)0)) {
  refcount_set(&cgroup->refcnt, 1);

  cgroup->name = strdup(name);
  if (!cgroup->name)
   goto out_err;
  cgroup->fd = open_cgroup(name);
  if (cgroup->fd == -1)
   goto out_free_name;
 }

 return cgroup;

out_free_name:
 zfree(&cgroup->name);
out_err:
 free(cgroup);
 return ((void*)0);
}
