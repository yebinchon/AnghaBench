
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_mark {int dummy; } ;
struct audit_chunk {int dummy; } ;
struct TYPE_2__ {struct audit_chunk* chunk; } ;


 TYPE_1__* audit_mark (struct fsnotify_mark*) ;

__attribute__((used)) static struct audit_chunk *mark_chunk(struct fsnotify_mark *mark)
{
 return audit_mark(mark)->chunk;
}
