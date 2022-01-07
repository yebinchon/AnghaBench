
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8data {int dummy; } ;
struct utf8cursor {int dummy; } ;


 int utf8ncursor (struct utf8cursor*,struct utf8data const*,char const*,unsigned int) ;

int utf8cursor(struct utf8cursor *u8c, const struct utf8data *data,
        const char *s)
{
 return utf8ncursor(u8c, data, s, (unsigned int)-1);
}
