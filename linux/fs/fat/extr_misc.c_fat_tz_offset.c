
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int time_offset; scalar_t__ tz_set; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct TYPE_4__ {int tz_minuteswest; } ;


 int SECS_PER_MIN ;
 TYPE_2__ sys_tz ;

__attribute__((used)) static inline int fat_tz_offset(struct msdos_sb_info *sbi)
{
 return (sbi->options.tz_set ?
        -sbi->options.time_offset :
        sys_tz.tz_minuteswest) * SECS_PER_MIN;
}
