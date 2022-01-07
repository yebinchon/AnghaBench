
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct token {size_t size; int content; } ;


 int memcmp (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int directive_compare(const void *_key, const void *_pdir)
{
 const struct token *token = _key;
 const char *const *pdir = _pdir, *dir = *pdir;
 size_t dlen, clen;
 int val;

 dlen = strlen(dir);
 clen = (dlen < token->size) ? dlen : token->size;



 val = memcmp(token->content, dir, clen);
 if (val != 0) {

  return val;
 }

 if (dlen == token->size) {

  return 0;
 }

 return dlen - token->size;
}
