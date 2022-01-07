
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OVL_XINO_AUTO ;
 int OVL_XINO_OFF ;
 scalar_t__ ovl_xino_auto_def ;

__attribute__((used)) static inline int ovl_xino_def(void)
{
 return ovl_xino_auto_def ? OVL_XINO_AUTO : OVL_XINO_OFF;
}
