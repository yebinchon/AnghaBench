
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_chunk {int head; } ;


 int __put_chunk ;
 int call_rcu (int *,int ) ;

__attribute__((used)) static void audit_mark_put_chunk(struct audit_chunk *chunk)
{
 call_rcu(&chunk->head, __put_chunk);
}
