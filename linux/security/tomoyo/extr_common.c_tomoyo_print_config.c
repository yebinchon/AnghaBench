
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_io_buffer {int dummy; } ;


 int const TOMOYO_CONFIG_WANT_GRANT_LOG ;
 int const TOMOYO_CONFIG_WANT_REJECT_LOG ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,int ,int ,int ) ;
 int * tomoyo_mode ;
 int tomoyo_yesno (int const) ;

__attribute__((used)) static void tomoyo_print_config(struct tomoyo_io_buffer *head, const u8 config)
{
 tomoyo_io_printf(head, "={ mode=%s grant_log=%s reject_log=%s }\n",
    tomoyo_mode[config & 3],
    tomoyo_yesno(config & TOMOYO_CONFIG_WANT_GRANT_LOG),
    tomoyo_yesno(config & TOMOYO_CONFIG_WANT_REJECT_LOG));
}
