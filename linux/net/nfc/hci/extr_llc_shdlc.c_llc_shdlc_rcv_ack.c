
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llc_shdlc {int dnr; int ns; } ;


 int llc_shdlc_reset_t2 (struct llc_shdlc*,int) ;
 scalar_t__ llc_shdlc_x_lt_y_lteq_z (int,int,int ) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static void llc_shdlc_rcv_ack(struct llc_shdlc *shdlc, int y_nr)
{
 pr_debug("remote acked up to frame %d excluded\n", y_nr);

 if (llc_shdlc_x_lt_y_lteq_z(shdlc->dnr, y_nr, shdlc->ns)) {
  llc_shdlc_reset_t2(shdlc, y_nr);
  shdlc->dnr = y_nr;
 }
}
