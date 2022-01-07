
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroup {int name; int fd; } ;


 int close (int ) ;
 int free (struct cgroup*) ;
 int zfree (int *) ;

__attribute__((used)) static void cgroup__delete(struct cgroup *cgroup)
{
 close(cgroup->fd);
 zfree(&cgroup->name);
 free(cgroup);
}
