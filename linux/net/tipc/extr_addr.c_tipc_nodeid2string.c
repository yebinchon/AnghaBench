
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;


 int NODE_ID_LEN ;
 int NODE_ID_STR_LEN ;
 int memcpy (char*,char*,int) ;
 int sprintf (char*,char*,char) ;

char *tipc_nodeid2string(char *str, u8 *id)
{
 int i;
 u8 c;


 for (i = 0; i < NODE_ID_LEN; i++) {
  c = id[i];
  if (c >= '0' && c <= '9')
   continue;
  if (c >= 'A' && c <= 'Z')
   continue;
  if (c >= 'a' && c <= 'z')
   continue;
  if (c == '.')
   continue;
  if (c == ':')
   continue;
  if (c == '_')
   continue;
  if (c == '-')
   continue;
  if (c == '@')
   continue;
  if (c != 0)
   break;
 }
 if (i == NODE_ID_LEN) {
  memcpy(str, id, NODE_ID_LEN);
  str[NODE_ID_LEN] = 0;
  return str;
 }


 for (i = 0; i < NODE_ID_LEN; i++)
  sprintf(&str[2 * i], "%02x", id[i]);


 for (i = NODE_ID_STR_LEN - 2; str[i] == '0'; i--)
  str[i] = 0;

 return str;
}
