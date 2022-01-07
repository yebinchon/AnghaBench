
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgroup_subsys {char* name; char* legacy_name; } ;
struct cgroup {TYPE_1__* root; } ;
struct cftype {int flags; int name; struct cgroup_subsys* ss; } ;
struct TYPE_2__ {int flags; } ;


 int CFTYPE_DEBUG ;
 int CFTYPE_NO_PREFIX ;
 int CGROUP_FILE_NAME_MAX ;
 int CGRP_ROOT_NOPREFIX ;
 scalar_t__ cgroup_on_dfl (struct cgroup*) ;
 int snprintf (char*,int ,char*,char const*,char*,int ) ;
 int strscpy (char*,int ,int ) ;

__attribute__((used)) static char *cgroup_file_name(struct cgroup *cgrp, const struct cftype *cft,
         char *buf)
{
 struct cgroup_subsys *ss = cft->ss;

 if (cft->ss && !(cft->flags & CFTYPE_NO_PREFIX) &&
     !(cgrp->root->flags & CGRP_ROOT_NOPREFIX)) {
  const char *dbg = (cft->flags & CFTYPE_DEBUG) ? ".__DEBUG__." : "";

  snprintf(buf, CGROUP_FILE_NAME_MAX, "%s%s.%s",
    dbg, cgroup_on_dfl(cgrp) ? ss->name : ss->legacy_name,
    cft->name);
 } else {
  strscpy(buf, cft->name, CGROUP_FILE_NAME_MAX);
 }
 return buf;
}
