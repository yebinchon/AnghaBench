
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int batadv_parse_throughput (struct net_device*,char*,char*,int *) ;
 char* strchr (char*,char) ;

__attribute__((used)) static bool batadv_parse_gw_bandwidth(struct net_device *net_dev, char *buff,
          u32 *down, u32 *up)
{
 char *slash_ptr;
 bool ret;

 slash_ptr = strchr(buff, '/');
 if (slash_ptr)
  *slash_ptr = 0;

 ret = batadv_parse_throughput(net_dev, buff, "download gateway speed",
          down);
 if (!ret)
  return 0;


 if (slash_ptr) {
  ret = batadv_parse_throughput(net_dev, slash_ptr + 1,
           "upload gateway speed", up);
  if (!ret)
   return 0;
 }

 return 1;
}
