
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int bc_sndlink; } ;



__attribute__((used)) static bool link_is_bc_sndlink(struct tipc_link *l)
{
 return !l->bc_sndlink;
}
