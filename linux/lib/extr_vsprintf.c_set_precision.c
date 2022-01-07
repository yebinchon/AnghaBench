
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int precision; } ;


 int PRECISION_MAX ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int clamp (int,int ,int ) ;

__attribute__((used)) static void
set_precision(struct printf_spec *spec, int prec)
{
 spec->precision = prec;
 if (WARN_ONCE(spec->precision != prec, "precision %d too large", prec)) {
  spec->precision = clamp(prec, 0, PRECISION_MAX);
 }
}
