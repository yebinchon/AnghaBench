
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int dummy; } ;
struct audit_chunk {struct fsnotify_mark* mark; } ;
struct TYPE_2__ {struct audit_chunk* chunk; } ;


 int assert_spin_locked (int *) ;
 TYPE_1__* audit_mark (struct fsnotify_mark*) ;
 int hash_lock ;
 struct audit_chunk* mark_chunk (struct fsnotify_mark*) ;

__attribute__((used)) static void replace_mark_chunk(struct fsnotify_mark *mark,
          struct audit_chunk *chunk)
{
 struct audit_chunk *old;

 assert_spin_locked(&hash_lock);
 old = mark_chunk(mark);
 audit_mark(mark)->chunk = chunk;
 if (chunk)
  chunk->mark = mark;
 if (old)
  old->mark = ((void*)0);
}
