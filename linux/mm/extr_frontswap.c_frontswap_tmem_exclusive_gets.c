
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontswap_tmem_exclusive_gets_enabled ;

void frontswap_tmem_exclusive_gets(bool enable)
{
 frontswap_tmem_exclusive_gets_enabled = enable;
}
