
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sub_str ;
typedef int str ;
typedef int addr ;
typedef int FILE ;




 int HV_INVALIDARG ;
 int INET6_ADDRSTRLEN ;

 int MAX_IP_ADDR_SIZE ;

 scalar_t__ expand_ipv6 (char*,int) ;
 scalar_t__ is_ipv4 (char*) ;
 int kvp_write_file (int *,char*,char*,char*) ;
 int memset (char*,int ,int) ;
 scalar_t__ parse_ip_val_buffer (char*,int*,char*,int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int process_ip_string(FILE *f, char *ip_string, int type)
{
 int error = 0;
 char addr[INET6_ADDRSTRLEN];
 int i = 0;
 int j = 0;
 char str[256];
 char sub_str[13];
 int offset = 0;

 memset(addr, 0, sizeof(addr));

 while (parse_ip_val_buffer(ip_string, &offset, addr,
     (MAX_IP_ADDR_SIZE * 2))) {

  sub_str[0] = 0;
  if (is_ipv4(addr)) {
   switch (type) {
   case 129:
    snprintf(str, sizeof(str), "%s", "IPADDR");
    break;
   case 128:
    snprintf(str, sizeof(str), "%s", "NETMASK");
    break;
   case 130:
    snprintf(str, sizeof(str), "%s", "GATEWAY");
    break;
   case 131:
    snprintf(str, sizeof(str), "%s", "DNS");
    break;
   }

   if (type == 131) {
    snprintf(sub_str, sizeof(sub_str), "%d", ++i);
   } else if (type == 130 && i == 0) {
    ++i;
   } else {
    snprintf(sub_str, sizeof(sub_str), "%d", i++);
   }


  } else if (expand_ipv6(addr, type)) {
   switch (type) {
   case 129:
    snprintf(str, sizeof(str), "%s", "IPV6ADDR");
    break;
   case 128:
    snprintf(str, sizeof(str), "%s", "IPV6NETMASK");
    break;
   case 130:
    snprintf(str, sizeof(str), "%s",
     "IPV6_DEFAULTGW");
    break;
   case 131:
    snprintf(str, sizeof(str), "%s", "DNS");
    break;
   }

   if (type == 131) {
    snprintf(sub_str, sizeof(sub_str), "%d", ++i);
   } else if (j == 0) {
    ++j;
   } else {
    snprintf(sub_str, sizeof(sub_str), "_%d", j++);
   }
  } else {
   return HV_INVALIDARG;
  }

  error = kvp_write_file(f, str, sub_str, addr);
  if (error)
   return error;
  memset(addr, 0, sizeof(addr));
 }

 return 0;
}
