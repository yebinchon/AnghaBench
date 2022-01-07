
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strfilter {int dummy; } ;
struct TYPE_2__ {char* event; char* group; } ;
struct probe_cache_entry {char* spev; TYPE_1__ pev; } ;


 int snprintf (char*,int,char*,char*,char*) ;
 int strfilter__compare (struct strfilter*,char*) ;

__attribute__((used)) static bool probe_cache_entry__compare(struct probe_cache_entry *entry,
           struct strfilter *filter)
{
 char buf[128], *ptr = entry->spev;

 if (entry->pev.event) {
  snprintf(buf, 128, "%s:%s", entry->pev.group, entry->pev.event);
  ptr = buf;
 }
 return strfilter__compare(filter, ptr);
}
