
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_writer {struct bt_ctf_clock* clock; } ;
struct bt_ctf_clock {int dummy; } ;


 int SET (int ,int) ;
 int bt_ctf_clock_set_description (struct bt_ctf_clock*,char*) ;
 int frequency ;
 int is_absolute ;
 int offset ;
 int offset_s ;
 int precision ;

__attribute__((used)) static int ctf_writer__setup_clock(struct ctf_writer *cw)
{
 struct bt_ctf_clock *clock = cw->clock;

 bt_ctf_clock_set_description(clock, "perf clock");







 do { if (bt_ctf_clock_set_frequency(clock, 1000000000)) return -1; } while (0);
 do { if (bt_ctf_clock_set_offset_s(clock, 0)) return -1; } while (0);
 do { if (bt_ctf_clock_set_offset(clock, 0)) return -1; } while (0);
 do { if (bt_ctf_clock_set_precision(clock, 10)) return -1; } while (0);
 do { if (bt_ctf_clock_set_is_absolute(clock, 0)) return -1; } while (0);


 return 0;
}
