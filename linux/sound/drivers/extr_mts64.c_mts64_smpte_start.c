
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct parport {int dummy; } ;







 size_t MTS64_CMD_SMPTE_SET_FPS ;
 size_t MTS64_CMD_SMPTE_SET_TIME ;
 int mts64_write_command (struct parport*,size_t) ;

__attribute__((used)) static void mts64_smpte_start(struct parport *p,
         u8 hours, u8 minutes,
         u8 seconds, u8 frames,
         u8 idx)
{
 static u8 fps[5] = { 132,
        131,
        130,
        128,
        129 };

 mts64_write_command(p, MTS64_CMD_SMPTE_SET_TIME);
 mts64_write_command(p, frames);
 mts64_write_command(p, seconds);
 mts64_write_command(p, minutes);
 mts64_write_command(p, hours);

 mts64_write_command(p, MTS64_CMD_SMPTE_SET_FPS);
 mts64_write_command(p, fps[idx]);
}
