
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct l2cap_ctrl {int reqseq; int final; int sframe; int poll; int super; int sar; int txseq; } ;


 int L2CAP_EXT_CTRL_FINAL ;
 int L2CAP_EXT_CTRL_FINAL_SHIFT ;
 int L2CAP_EXT_CTRL_FRAME_TYPE ;
 int L2CAP_EXT_CTRL_POLL ;
 int L2CAP_EXT_CTRL_POLL_SHIFT ;
 int L2CAP_EXT_CTRL_REQSEQ ;
 int L2CAP_EXT_CTRL_REQSEQ_SHIFT ;
 int L2CAP_EXT_CTRL_SAR ;
 int L2CAP_EXT_CTRL_SAR_SHIFT ;
 int L2CAP_EXT_CTRL_SUPERVISE ;
 int L2CAP_EXT_CTRL_SUPER_SHIFT ;
 int L2CAP_EXT_CTRL_TXSEQ ;
 int L2CAP_EXT_CTRL_TXSEQ_SHIFT ;

__attribute__((used)) static void __unpack_extended_control(u32 ext, struct l2cap_ctrl *control)
{
 control->reqseq = (ext & L2CAP_EXT_CTRL_REQSEQ) >> L2CAP_EXT_CTRL_REQSEQ_SHIFT;
 control->final = (ext & L2CAP_EXT_CTRL_FINAL) >> L2CAP_EXT_CTRL_FINAL_SHIFT;

 if (ext & L2CAP_EXT_CTRL_FRAME_TYPE) {

  control->sframe = 1;
  control->poll = (ext & L2CAP_EXT_CTRL_POLL) >> L2CAP_EXT_CTRL_POLL_SHIFT;
  control->super = (ext & L2CAP_EXT_CTRL_SUPERVISE) >> L2CAP_EXT_CTRL_SUPER_SHIFT;

  control->sar = 0;
  control->txseq = 0;
 } else {

  control->sframe = 0;
  control->sar = (ext & L2CAP_EXT_CTRL_SAR) >> L2CAP_EXT_CTRL_SAR_SHIFT;
  control->txseq = (ext & L2CAP_EXT_CTRL_TXSEQ) >> L2CAP_EXT_CTRL_TXSEQ_SHIFT;

  control->poll = 0;
  control->super = 0;
 }
}
