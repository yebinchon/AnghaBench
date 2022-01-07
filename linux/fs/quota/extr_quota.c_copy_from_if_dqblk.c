
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qc_dqblk {int d_fieldmask; int d_ino_timer; int d_spc_timer; int d_ino_count; int d_ino_softlimit; int d_ino_hardlimit; int d_space; void* d_spc_softlimit; void* d_spc_hardlimit; } ;
struct if_dqblk {int dqb_valid; int dqb_itime; int dqb_btime; int dqb_curinodes; int dqb_isoftlimit; int dqb_ihardlimit; int dqb_curspace; int dqb_bsoftlimit; int dqb_bhardlimit; } ;


 int QC_INO_COUNT ;
 int QC_INO_HARD ;
 int QC_INO_SOFT ;
 int QC_INO_TIMER ;
 int QC_SPACE ;
 int QC_SPC_HARD ;
 int QC_SPC_SOFT ;
 int QC_SPC_TIMER ;
 int QIF_BLIMITS ;
 int QIF_BTIME ;
 int QIF_ILIMITS ;
 int QIF_INODES ;
 int QIF_ITIME ;
 int QIF_SPACE ;
 void* qbtos (int ) ;

__attribute__((used)) static void copy_from_if_dqblk(struct qc_dqblk *dst, struct if_dqblk *src)
{
 dst->d_spc_hardlimit = qbtos(src->dqb_bhardlimit);
 dst->d_spc_softlimit = qbtos(src->dqb_bsoftlimit);
 dst->d_space = src->dqb_curspace;
 dst->d_ino_hardlimit = src->dqb_ihardlimit;
 dst->d_ino_softlimit = src->dqb_isoftlimit;
 dst->d_ino_count = src->dqb_curinodes;
 dst->d_spc_timer = src->dqb_btime;
 dst->d_ino_timer = src->dqb_itime;

 dst->d_fieldmask = 0;
 if (src->dqb_valid & QIF_BLIMITS)
  dst->d_fieldmask |= QC_SPC_SOFT | QC_SPC_HARD;
 if (src->dqb_valid & QIF_SPACE)
  dst->d_fieldmask |= QC_SPACE;
 if (src->dqb_valid & QIF_ILIMITS)
  dst->d_fieldmask |= QC_INO_SOFT | QC_INO_HARD;
 if (src->dqb_valid & QIF_INODES)
  dst->d_fieldmask |= QC_INO_COUNT;
 if (src->dqb_valid & QIF_BTIME)
  dst->d_fieldmask |= QC_SPC_TIMER;
 if (src->dqb_valid & QIF_ITIME)
  dst->d_fieldmask |= QC_INO_TIMER;
}
