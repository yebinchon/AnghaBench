
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; scalar_t__ alloc; } ;


 int strbuf_init (struct strbuf*,int ) ;
 int zfree (int *) ;

void strbuf_release(struct strbuf *sb)
{
 if (sb->alloc) {
  zfree(&sb->buf);
  strbuf_init(sb, 0);
 }
}
