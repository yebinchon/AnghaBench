
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2cap_ctrl {int reqseq; int final; int poll; int super; int sar; int txseq; scalar_t__ sframe; } ;


 int L2CAP_EXT_CTRL_FINAL_SHIFT ;
 int L2CAP_EXT_CTRL_FRAME_TYPE ;
 int L2CAP_EXT_CTRL_POLL_SHIFT ;
 int L2CAP_EXT_CTRL_REQSEQ_SHIFT ;
 int L2CAP_EXT_CTRL_SAR_SHIFT ;
 int L2CAP_EXT_CTRL_SUPER_SHIFT ;
 int L2CAP_EXT_CTRL_TXSEQ_SHIFT ;

__attribute__((used)) static u32 __pack_extended_control(struct l2cap_ctrl *control)
{
 u32 packed;

 packed = control->reqseq << L2CAP_EXT_CTRL_REQSEQ_SHIFT;
 packed |= control->final << L2CAP_EXT_CTRL_FINAL_SHIFT;

 if (control->sframe) {
  packed |= control->poll << L2CAP_EXT_CTRL_POLL_SHIFT;
  packed |= control->super << L2CAP_EXT_CTRL_SUPER_SHIFT;
  packed |= L2CAP_EXT_CTRL_FRAME_TYPE;
 } else {
  packed |= control->sar << L2CAP_EXT_CTRL_SAR_SHIFT;
  packed |= control->txseq << L2CAP_EXT_CTRL_TXSEQ_SHIFT;
 }

 return packed;
}
