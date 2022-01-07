
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct unwind_entry {int * sym; int map; int ip; } ;
struct callchain_cursor {int dummy; } ;
struct TYPE_2__ {scalar_t__ hide_unresolved; } ;


 scalar_t__ append_inlines (struct callchain_cursor*,int ,int *,int ) ;
 int callchain_cursor_append (struct callchain_cursor*,int ,int ,int *,int,int *,int ,int ,int ,char const*) ;
 char* callchain_srcline (int ,int *,int ) ;
 int map__map_ip (int ,int ) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int unwind_entry(struct unwind_entry *entry, void *arg)
{
 struct callchain_cursor *cursor = arg;
 const char *srcline = ((void*)0);
 u64 addr = entry->ip;

 if (symbol_conf.hide_unresolved && entry->sym == ((void*)0))
  return 0;

 if (append_inlines(cursor, entry->map, entry->sym, entry->ip) == 0)
  return 0;





 if (entry->map)
  addr = map__map_ip(entry->map, entry->ip);

 srcline = callchain_srcline(entry->map, entry->sym, addr);
 return callchain_cursor_append(cursor, entry->ip,
           entry->map, entry->sym,
           0, ((void*)0), 0, 0, 0, srcline);
}
