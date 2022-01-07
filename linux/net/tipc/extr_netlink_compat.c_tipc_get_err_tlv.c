
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int TIPC_TLV_ERROR_STRING ;
 int TLV_SPACE (int) ;
 int strlen (char*) ;
 int tipc_add_tlv (struct sk_buff*,int ,char*,int) ;
 struct sk_buff* tipc_tlv_alloc (int ) ;

__attribute__((used)) static struct sk_buff *tipc_get_err_tlv(char *str)
{
 int str_len = strlen(str) + 1;
 struct sk_buff *buf;

 buf = tipc_tlv_alloc(TLV_SPACE(str_len));
 if (buf)
  tipc_add_tlv(buf, TIPC_TLV_ERROR_STRING, str, str_len);

 return buf;
}
