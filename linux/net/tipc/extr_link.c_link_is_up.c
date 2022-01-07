
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int state; } ;


 int LINK_ESTABLISHED ;
 int LINK_SYNCHING ;

__attribute__((used)) static int link_is_up(struct tipc_link *l)
{
 return l->state & (LINK_ESTABLISHED | LINK_SYNCHING);
}
