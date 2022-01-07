
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcpos {int dummy; } ;


 char* srcpos_string_comment (struct srcpos*,int,int) ;

char *srcpos_string_first(struct srcpos *pos, int level)
{
 return srcpos_string_comment(pos, 1, level);
}
