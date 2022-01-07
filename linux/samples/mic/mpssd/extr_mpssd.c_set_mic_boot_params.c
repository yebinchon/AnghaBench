
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_info {int dummy; } ;


 int set_cmdline (struct mic_info*) ;
 int set_log_buf_info (struct mic_info*) ;

__attribute__((used)) static void
set_mic_boot_params(struct mic_info *mic)
{
 set_log_buf_info(mic);
 set_cmdline(mic);
}
