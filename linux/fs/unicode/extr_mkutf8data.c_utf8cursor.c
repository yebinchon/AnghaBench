
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8cursor {int dummy; } ;
struct tree {int dummy; } ;


 int utf8ncursor (struct utf8cursor*,struct tree*,char const*,unsigned int) ;

int utf8cursor(struct utf8cursor *u8c, struct tree *tree, const char *s)
{
 return utf8ncursor(u8c, tree, s, (unsigned int)-1);
}
