
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_link {int name; int addr; } ;


 int TIPC_MAX_LINK_NAME ;
 scalar_t__ link_is_bc_rcvlink (struct tipc_link*) ;
 scalar_t__ link_is_bc_sndlink (struct tipc_link*) ;
 int memcpy (char*,int ,int ) ;
 int scnprintf (char*,int ,char*,...) ;

char *tipc_link_name_ext(struct tipc_link *l, char *buf)
{
 if (!l)
  scnprintf(buf, TIPC_MAX_LINK_NAME, "null");
 else if (link_is_bc_sndlink(l))
  scnprintf(buf, TIPC_MAX_LINK_NAME, "broadcast-sender");
 else if (link_is_bc_rcvlink(l))
  scnprintf(buf, TIPC_MAX_LINK_NAME,
     "broadcast-receiver, peer %x", l->addr);
 else
  memcpy(buf, l->name, TIPC_MAX_LINK_NAME);

 return buf;
}
