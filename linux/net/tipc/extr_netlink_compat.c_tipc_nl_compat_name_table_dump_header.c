
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_nl_compat_msg {int rep; int req; } ;
struct tipc_name_table_query {int depth; } ;


 int EINVAL ;
 scalar_t__ TLV_DATA (int ) ;
 int TLV_GET_DATA_LEN (int ) ;
 int ntohl (int ) ;
 int tipc_tlv_sprintf (int ,char const* const) ;

__attribute__((used)) static int tipc_nl_compat_name_table_dump_header(struct tipc_nl_compat_msg *msg)
{
 int i;
 u32 depth;
 struct tipc_name_table_query *ntq;
 static const char * const header[] = {
  "Type       ",
  "Lower      Upper      ",
  "Port Identity              ",
  "Publication Scope"
 };

 ntq = (struct tipc_name_table_query *)TLV_DATA(msg->req);
 if (TLV_GET_DATA_LEN(msg->req) < sizeof(struct tipc_name_table_query))
  return -EINVAL;

 depth = ntohl(ntq->depth);

 if (depth > 4)
  depth = 4;
 for (i = 0; i < depth; i++)
  tipc_tlv_sprintf(msg->rep, header[i]);
 tipc_tlv_sprintf(msg->rep, "\n");

 return 0;
}
