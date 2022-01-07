
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; size_t alloc; char* buf; } ;


 int E2BIG ;
 int ENOMEM ;
 size_t alloc_nr (size_t) ;
 char* realloc (char*,size_t) ;

int strbuf_grow(struct strbuf *sb, size_t extra)
{
 char *buf;
 size_t nr = sb->len + extra + 1;

 if (nr < sb->alloc)
  return 0;

 if (nr <= sb->len)
  return -E2BIG;

 if (alloc_nr(sb->alloc) > nr)
  nr = alloc_nr(sb->alloc);





 buf = realloc(sb->alloc ? sb->buf : ((void*)0), nr * sizeof(*buf));
 if (!buf)
  return -ENOMEM;

 sb->buf = buf;
 sb->alloc = nr;
 return 0;
}
