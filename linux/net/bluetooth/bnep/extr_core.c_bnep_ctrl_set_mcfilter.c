
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef scalar_t__ u8 ;
struct bnep_session {long long mc_filter; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__* broadcast; } ;


 int BNEP_FILTER_MULTI_ADDR_RSP ;
 int BNEP_FILTER_UNSUPPORTED_REQ ;
 int BNEP_SUCCESS ;
 int BT_DBG (char*,...) ;
 int EILSEQ ;
 int ETH_ALEN ;
 int bnep_mc_hash (scalar_t__*) ;
 int bnep_send_rsp (struct bnep_session*,int ,int ) ;
 int get_unaligned_be16 (scalar_t__*) ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int bnep_ctrl_set_mcfilter(struct bnep_session *s, u8 *data, int len)
{
 int n;

 if (len < 2)
  return -EILSEQ;

 n = get_unaligned_be16(data);
 data += 2;
 len -= 2;

 if (len < n)
  return -EILSEQ;

 BT_DBG("filter len %d", n);
 bnep_send_rsp(s, BNEP_FILTER_MULTI_ADDR_RSP, BNEP_FILTER_UNSUPPORTED_REQ);

 return 0;
}
