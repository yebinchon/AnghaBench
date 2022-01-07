
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ from; scalar_t__ to; } ;
typedef TYPE_1__ substring_t ;


 int GFP_KERNEL ;
 char* kmemdup_nul (scalar_t__,scalar_t__,int ) ;

char *match_strdup(const substring_t *s)
{
 return kmemdup_nul(s->from, s->to - s->from, GFP_KERNEL);
}
