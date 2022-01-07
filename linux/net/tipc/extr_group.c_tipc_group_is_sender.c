
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_member {scalar_t__ state; } ;


 scalar_t__ MBR_JOINING ;
 scalar_t__ MBR_PUBLISHED ;

__attribute__((used)) static bool tipc_group_is_sender(struct tipc_member *m)
{
 return m && m->state != MBR_JOINING && m->state != MBR_PUBLISHED;
}
