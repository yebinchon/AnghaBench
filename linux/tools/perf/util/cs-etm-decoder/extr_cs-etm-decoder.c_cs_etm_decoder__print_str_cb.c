
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_decoder {int (* packet_printer ) (char const*) ;} ;


 int stub1 (char const*) ;

__attribute__((used)) static void cs_etm_decoder__print_str_cb(const void *p_context,
      const char *msg,
      const int str_len)
{
 if (p_context && str_len)
  ((struct cs_etm_decoder *)p_context)->packet_printer(msg);
}
