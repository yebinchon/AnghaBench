
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_media_addr {int * value; int media_id; } ;
struct tipc_media {int name; int (* addr2str ) (struct tipc_media_addr*,char*,int) ;} ;
typedef int addr_str ;


 int MAX_ADDR_STR ;
 struct tipc_media* media_find_id (int ) ;
 int scnprintf (char*,int,char*,int ,...) ;
 int stub1 (struct tipc_media_addr*,char*,int) ;

int tipc_media_addr_printf(char *buf, int len, struct tipc_media_addr *a)
{
 char addr_str[MAX_ADDR_STR];
 struct tipc_media *m;
 int ret;

 m = media_find_id(a->media_id);

 if (m && !m->addr2str(a, addr_str, sizeof(addr_str)))
  ret = scnprintf(buf, len, "%s(%s)", m->name, addr_str);
 else {
  u32 i;

  ret = scnprintf(buf, len, "UNKNOWN(%u)", a->media_id);
  for (i = 0; i < sizeof(a->value); i++)
   ret += scnprintf(buf + ret, len - ret,
         "-%x", a->value[i]);
 }
 return ret;
}
