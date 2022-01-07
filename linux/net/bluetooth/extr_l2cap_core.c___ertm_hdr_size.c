
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_chan {int flags; } ;


 int FLAG_EXT_CTRL ;
 unsigned int L2CAP_ENH_HDR_SIZE ;
 unsigned int L2CAP_EXT_HDR_SIZE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline unsigned int __ertm_hdr_size(struct l2cap_chan *chan)
{
 if (test_bit(FLAG_EXT_CTRL, &chan->flags))
  return L2CAP_EXT_HDR_SIZE;
 else
  return L2CAP_ENH_HDR_SIZE;
}
