
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotation_options {int percent_type; } ;






 int WARN_ON (int) ;

__attribute__((used)) static void
switch_percent_type(struct annotation_options *opts, bool base)
{
 switch (opts->percent_type) {
 case 130:
  if (base)
   opts->percent_type = 128;
  else
   opts->percent_type = 131;
  break;
 case 131:
  if (base)
   opts->percent_type = 129;
  else
   opts->percent_type = 130;
  break;
 case 128:
  if (base)
   opts->percent_type = 130;
  else
   opts->percent_type = 129;
  break;
 case 129:
  if (base)
   opts->percent_type = 131;
  else
   opts->percent_type = 128;
  break;
 default:
  WARN_ON(1);
 }
}
