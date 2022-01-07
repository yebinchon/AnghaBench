
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_media_addr {int dummy; } ;
struct tipc_bearer {int name; } ;
typedef int media_addr_str ;


 int pr_warn (char*,int ,char*,int ) ;
 int tipc_media_addr_printf (char*,int,struct tipc_media_addr*) ;

__attribute__((used)) static void disc_dupl_alert(struct tipc_bearer *b, u32 node_addr,
       struct tipc_media_addr *media_addr)
{
 char media_addr_str[64];

 tipc_media_addr_printf(media_addr_str, sizeof(media_addr_str),
          media_addr);
 pr_warn("Duplicate %x using %s seen on <%s>\n", node_addr,
  media_addr_str, b->name);
}
