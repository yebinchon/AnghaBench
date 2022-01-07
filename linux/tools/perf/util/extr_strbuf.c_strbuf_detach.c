
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; size_t len; scalar_t__ alloc; } ;


 int strbuf_init (struct strbuf*,int ) ;

char *strbuf_detach(struct strbuf *sb, size_t *sz)
{
 char *res = sb->alloc ? sb->buf : ((void*)0);
 if (sz)
  *sz = sb->len;
 strbuf_init(sb, 0);
 return res;
}
