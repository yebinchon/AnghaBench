
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_spec {int field_width; } ;


 int FIELD_WIDTH_MAX ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 int clamp (int,int ,int ) ;

__attribute__((used)) static void
set_field_width(struct printf_spec *spec, int width)
{
 spec->field_width = width;
 if (WARN_ONCE(spec->field_width != width, "field width %d too large", width)) {
  spec->field_width = clamp(width, -FIELD_WIDTH_MAX, FIELD_WIDTH_MAX);
 }
}
