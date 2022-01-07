
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int has_automatic_cstate_conversion ;
 scalar_t__ is_bdx (unsigned int,unsigned int) ;
 scalar_t__ is_skx (unsigned int,unsigned int) ;

void automatic_cstate_conversion_probe(unsigned int family, unsigned int model)
{
 if (is_skx(family, model) || is_bdx(family, model))
  has_automatic_cstate_conversion = 1;
}
