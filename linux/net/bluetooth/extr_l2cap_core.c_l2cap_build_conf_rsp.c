
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct l2cap_conf_rsp {void* flags; void* result; void* scid; void* data; } ;
struct l2cap_chan {int dcid; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static int l2cap_build_conf_rsp(struct l2cap_chan *chan, void *data,
    u16 result, u16 flags)
{
 struct l2cap_conf_rsp *rsp = data;
 void *ptr = rsp->data;

 BT_DBG("chan %p", chan);

 rsp->scid = cpu_to_le16(chan->dcid);
 rsp->result = cpu_to_le16(result);
 rsp->flags = cpu_to_le16(flags);

 return ptr - data;
}
