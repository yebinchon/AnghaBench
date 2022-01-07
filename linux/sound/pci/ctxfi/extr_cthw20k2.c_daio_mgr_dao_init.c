
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int atxctl; } ;
struct TYPE_4__ {TYPE_1__ bf; } ;
struct daio_mgr_ctrl_blk {TYPE_2__ dirty; int * txctl; } ;


 int ATXCTL_CD ;
 int ATXCTL_LIV ;
 int ATXCTL_NUC ;
 int ATXCTL_RAW ;
 int ATXCTL_RIV ;
 int set_field (int *,int ,unsigned int) ;

__attribute__((used)) static int daio_mgr_dao_init(void *blk, unsigned int idx, unsigned int conf)
{
 struct daio_mgr_ctrl_blk *ctl = blk;

 if (idx < 4) {

  switch ((conf & 0x7)) {
  case 1:
   set_field(&ctl->txctl[idx], ATXCTL_NUC, 0);
   break;
  case 2:
   set_field(&ctl->txctl[idx], ATXCTL_NUC, 1);
   break;
  case 4:
   set_field(&ctl->txctl[idx], ATXCTL_NUC, 2);
   break;
  case 8:
   set_field(&ctl->txctl[idx], ATXCTL_NUC, 3);
   break;
  default:
   break;
  }

  set_field(&ctl->txctl[idx], ATXCTL_CD, (!(conf & 0x7)));

  set_field(&ctl->txctl[idx], ATXCTL_LIV, (conf >> 4) & 0x1);

  set_field(&ctl->txctl[idx], ATXCTL_RIV, (conf >> 4) & 0x1);
  set_field(&ctl->txctl[idx], ATXCTL_RAW,
     ((conf >> 3) & 0x1) ? 0 : 0);
  ctl->dirty.bf.atxctl |= (0x1 << idx);
 } else {


 }
 return 0;
}
