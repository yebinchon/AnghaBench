
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8leaf_t ;
struct utf8data {int dummy; } ;


 int * utf8nlookup (struct utf8data const*,unsigned char*,char const*,size_t) ;

__attribute__((used)) static utf8leaf_t *utf8lookup(const struct utf8data *data,
         unsigned char *hangul, const char *s)
{
 return utf8nlookup(data, hangul, s, (size_t)-1);
}
