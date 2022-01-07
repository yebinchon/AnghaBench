
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ovl_redirect_dir_def ;

__attribute__((used)) static const char *ovl_redirect_mode_def(void)
{
 return ovl_redirect_dir_def ? "on" : "off";
}
