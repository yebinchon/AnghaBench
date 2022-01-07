
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontswap_writethrough_enabled ;

void frontswap_writethrough(bool enable)
{
 frontswap_writethrough_enabled = enable;
}
