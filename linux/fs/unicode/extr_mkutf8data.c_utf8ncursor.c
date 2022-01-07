
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8cursor {char const* s; size_t len; scalar_t__ unichar; void* nccc; void* ccc; scalar_t__ slen; int * sp; int * ss; int * p; struct tree* tree; } ;
struct tree {int dummy; } ;


 void* STOPPER ;

int utf8ncursor(struct utf8cursor *u8c, struct tree *tree, const char *s,
  size_t len)
{
 if (!tree)
  return -1;
 if (!s)
  return -1;
 u8c->tree = tree;
 u8c->s = s;
 u8c->p = ((void*)0);
 u8c->ss = ((void*)0);
 u8c->sp = ((void*)0);
 u8c->len = len;
 u8c->slen = 0;
 u8c->ccc = STOPPER;
 u8c->nccc = STOPPER;
 u8c->unichar = 0;

 if (u8c->len != len)
  return -1;

 if (len > 0 && (*s & 0xC0) == 0x80)
  return -1;
 return 0;
}
