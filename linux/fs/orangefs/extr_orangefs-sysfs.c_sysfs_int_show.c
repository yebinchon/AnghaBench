
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct orangefs_attribute {TYPE_1__ attr; } ;
struct kobject {int name; } ;
typedef int ssize_t ;
struct TYPE_4__ {int writes; int reads; } ;


 int EIO ;
 int GOSSIP_SYSFS_DEBUG ;
 char* ORANGEFS_KOBJ_ID ;
 int PAGE_SIZE ;
 char* STATS_KOBJ_ID ;
 int gossip_debug (int ,char*,int ) ;
 int op_timeout_secs ;
 int orangefs_cache_timeout_msecs ;
 int orangefs_dcache_timeout_msecs ;
 int orangefs_getattr_timeout_msecs ;
 TYPE_2__ orangefs_stats ;
 int scnprintf (char*,int ,char*,int ) ;
 int slot_timeout_secs ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t sysfs_int_show(struct kobject *kobj,
    struct orangefs_attribute *attr, char *buf)
{
 int rc = -EIO;

 gossip_debug(GOSSIP_SYSFS_DEBUG, "sysfs_int_show: id:%s:\n",
     kobj->name);

 if (!strcmp(kobj->name, ORANGEFS_KOBJ_ID)) {
  if (!strcmp(attr->attr.name, "op_timeout_secs")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%d\n",
           op_timeout_secs);
   goto out;
  } else if (!strcmp(attr->attr.name,
       "slot_timeout_secs")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%d\n",
           slot_timeout_secs);
   goto out;
  } else if (!strcmp(attr->attr.name,
       "cache_timeout_msecs")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%d\n",
           orangefs_cache_timeout_msecs);
   goto out;
  } else if (!strcmp(attr->attr.name,
       "dcache_timeout_msecs")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%d\n",
           orangefs_dcache_timeout_msecs);
   goto out;
  } else if (!strcmp(attr->attr.name,
       "getattr_timeout_msecs")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%d\n",
           orangefs_getattr_timeout_msecs);
   goto out;
  } else {
   goto out;
  }

 } else if (!strcmp(kobj->name, STATS_KOBJ_ID)) {
  if (!strcmp(attr->attr.name, "reads")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%lu\n",
           orangefs_stats.reads);
   goto out;
  } else if (!strcmp(attr->attr.name, "writes")) {
   rc = scnprintf(buf,
           PAGE_SIZE,
           "%lu\n",
           orangefs_stats.writes);
   goto out;
  } else {
   goto out;
  }
 }

out:

 return rc;
}
