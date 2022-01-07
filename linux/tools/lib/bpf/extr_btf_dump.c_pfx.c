
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* PREFIXES ;
 int PREFIX_CNT ;

__attribute__((used)) static const char *pfx(int lvl)
{
 return lvl >= PREFIX_CNT ? PREFIXES : &PREFIXES[PREFIX_CNT - lvl];
}
