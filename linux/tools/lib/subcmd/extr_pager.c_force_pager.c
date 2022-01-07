
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* forced_pager ;

void force_pager(const char *pager)
{
 forced_pager = pager;
}
