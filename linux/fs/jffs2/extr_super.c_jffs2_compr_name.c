
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;

__attribute__((used)) static const char *jffs2_compr_name(unsigned int compr)
{
 switch (compr) {
 case 128:
  return "none";
 default:

  WARN_ON(1);
  return "";
 }
}
