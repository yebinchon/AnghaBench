
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union devlink_param_value {int vstr; } ;


 int WARN_ON (int) ;
 size_t __DEVLINK_PARAM_MAX_STRING_VALUE ;
 size_t strlcpy (int ,char const*,size_t) ;

void devlink_param_value_str_fill(union devlink_param_value *dst_val,
      const char *src)
{
 size_t len;

 len = strlcpy(dst_val->vstr, src, __DEVLINK_PARAM_MAX_STRING_VALUE);
 WARN_ON(len >= __DEVLINK_PARAM_MAX_STRING_VALUE);
}
