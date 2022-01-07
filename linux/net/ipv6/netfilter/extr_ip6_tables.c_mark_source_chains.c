
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xt_table_info {unsigned int* hook_entry; unsigned int size; int number; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct xt_standard_target {int verdict; TYPE_3__ target; } ;
struct TYPE_8__ {unsigned int pcnt; } ;
struct ip6t_entry {int comefrom; unsigned int next_offset; TYPE_4__ counters; } ;


 unsigned int NF_INET_NUMHOOKS ;
 int XT_STANDARD_TARGET ;
 scalar_t__ ip6t_get_target_c (struct ip6t_entry*) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ unconditional (struct ip6t_entry*) ;
 int xt_find_jump_offset (unsigned int*,int,int ) ;

__attribute__((used)) static int
mark_source_chains(const struct xt_table_info *newinfo,
     unsigned int valid_hooks, void *entry0,
     unsigned int *offsets)
{
 unsigned int hook;



 for (hook = 0; hook < NF_INET_NUMHOOKS; hook++) {
  unsigned int pos = newinfo->hook_entry[hook];
  struct ip6t_entry *e = entry0 + pos;

  if (!(valid_hooks & (1 << hook)))
   continue;


  e->counters.pcnt = pos;

  for (;;) {
   const struct xt_standard_target *t
    = (void *)ip6t_get_target_c(e);
   int visited = e->comefrom & (1 << hook);

   if (e->comefrom & (1 << NF_INET_NUMHOOKS))
    return 0;

   e->comefrom |= ((1 << hook) | (1 << NF_INET_NUMHOOKS));


   if ((unconditional(e) &&
        (strcmp(t->target.u.user.name,
         XT_STANDARD_TARGET) == 0) &&
        t->verdict < 0) || visited) {
    unsigned int oldpos, size;



    do {
     e->comefrom ^= (1<<NF_INET_NUMHOOKS);
     oldpos = pos;
     pos = e->counters.pcnt;
     e->counters.pcnt = 0;


     if (pos == oldpos)
      goto next;

     e = entry0 + pos;
    } while (oldpos == pos + e->next_offset);


    size = e->next_offset;
    e = entry0 + pos + size;
    if (pos + size >= newinfo->size)
     return 0;
    e->counters.pcnt = pos;
    pos += size;
   } else {
    int newpos = t->verdict;

    if (strcmp(t->target.u.user.name,
        XT_STANDARD_TARGET) == 0 &&
        newpos >= 0) {

     if (!xt_find_jump_offset(offsets, newpos,
         newinfo->number))
      return 0;
    } else {

     newpos = pos + e->next_offset;
     if (newpos >= newinfo->size)
      return 0;
    }
    e = entry0 + newpos;
    e->counters.pcnt = pos;
    pos = newpos;
   }
  }
next: ;
 }
 return 1;
}
