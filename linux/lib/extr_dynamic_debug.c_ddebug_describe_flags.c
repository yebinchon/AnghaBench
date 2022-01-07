
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _ddebug {int flags; } ;
struct TYPE_3__ {int flag; int opt_char; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUG_ON (int) ;
 TYPE_1__* opt_array ;

__attribute__((used)) static char *ddebug_describe_flags(struct _ddebug *dp, char *buf,
        size_t maxlen)
{
 char *p = buf;
 int i;

 BUG_ON(maxlen < 6);
 for (i = 0; i < ARRAY_SIZE(opt_array); ++i)
  if (dp->flags & opt_array[i].flag)
   *p++ = opt_array[i].opt_char;
 if (p == buf)
  *p++ = '_';
 *p = '\0';

 return buf;
}
