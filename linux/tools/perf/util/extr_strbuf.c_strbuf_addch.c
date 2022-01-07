
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int* buf; size_t len; } ;


 int strbuf_grow (struct strbuf*,int) ;

int strbuf_addch(struct strbuf *sb, int c)
{
 int ret = strbuf_grow(sb, 1);
 if (ret)
  return ret;

 sb->buf[sb->len++] = c;
 sb->buf[sb->len] = '\0';
 return 0;
}
