
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnep_session {struct bnep_proto_filter* proto_filter; } ;
struct bnep_proto_filter {void* end; void* start; } ;
typedef int __be16 ;


 int BNEP_FILTER_LIMIT_REACHED ;
 int BNEP_FILTER_NET_TYPE_RSP ;
 int BNEP_FILTER_UNSUPPORTED_REQ ;
 int BNEP_MAX_PROTO_FILTERS ;
 int BNEP_SUCCESS ;
 int BT_DBG (char*,int,...) ;
 int EILSEQ ;
 int bnep_send_rsp (struct bnep_session*,int ,int ) ;
 int bnep_set_default_proto_filter (struct bnep_session*) ;
 void* get_unaligned_be16 (int *) ;
 int memset (struct bnep_proto_filter*,int ,int) ;

__attribute__((used)) static int bnep_ctrl_set_netfilter(struct bnep_session *s, __be16 *data, int len)
{
 int n;

 if (len < 2)
  return -EILSEQ;

 n = get_unaligned_be16(data);
 data++;
 len -= 2;

 if (len < n)
  return -EILSEQ;

 BT_DBG("filter len %d", n);
 bnep_send_rsp(s, BNEP_FILTER_NET_TYPE_RSP, BNEP_FILTER_UNSUPPORTED_REQ);

 return 0;
}
