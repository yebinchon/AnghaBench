
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct devlink_health_reporter {int refcount; } ;
struct devlink {int reporters_lock; } ;


 size_t DEVLINK_ATTR_HEALTH_REPORTER_NAME ;
 struct devlink_health_reporter* devlink_health_reporter_find_by_name (struct devlink*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 char* nla_data (struct nlattr*) ;
 int refcount_inc (int *) ;

__attribute__((used)) static struct devlink_health_reporter *
devlink_health_reporter_get_from_attrs(struct devlink *devlink,
           struct nlattr **attrs)
{
 struct devlink_health_reporter *reporter;
 char *reporter_name;

 if (!attrs[DEVLINK_ATTR_HEALTH_REPORTER_NAME])
  return ((void*)0);

 reporter_name = nla_data(attrs[DEVLINK_ATTR_HEALTH_REPORTER_NAME]);
 mutex_lock(&devlink->reporters_lock);
 reporter = devlink_health_reporter_find_by_name(devlink, reporter_name);
 if (reporter)
  refcount_inc(&reporter->refcount);
 mutex_unlock(&devlink->reporters_lock);
 return reporter;
}
