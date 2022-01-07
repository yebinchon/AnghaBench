
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int lowpan_iphc_ctx_is_active (void*) ;

__attribute__((used)) static int lowpan_ctx_flag_active_get(void *data, u64 *val)
{
 *val = lowpan_iphc_ctx_is_active(data);
 return 0;
}
