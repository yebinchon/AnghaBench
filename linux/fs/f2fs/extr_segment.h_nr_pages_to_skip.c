
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct f2fs_sb_info {int blocks_per_seg; TYPE_3__* sb; } ;
struct TYPE_6__ {TYPE_2__* s_bdi; } ;
struct TYPE_4__ {scalar_t__ dirty_exceeded; } ;
struct TYPE_5__ {TYPE_1__ wb; } ;


 int BIO_MAX_PAGES ;
 int DATA ;
 int META ;
 int NODE ;

__attribute__((used)) static inline int nr_pages_to_skip(struct f2fs_sb_info *sbi, int type)
{
 if (sbi->sb->s_bdi->wb.dirty_exceeded)
  return 0;

 if (type == DATA)
  return sbi->blocks_per_seg;
 else if (type == NODE)
  return 8 * sbi->blocks_per_seg;
 else if (type == META)
  return 8 * BIO_MAX_PAGES;
 else
  return 0;
}
