
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int digits_len (struct nf_conn const*,char const*,char const*,int*) ;
 int string_len (struct nf_conn const*,char const*,char const*,int*) ;

__attribute__((used)) static int media_len(const struct nf_conn *ct, const char *dptr,
       const char *limit, int *shift)
{
 int len = string_len(ct, dptr, limit, shift);

 dptr += len;
 if (dptr >= limit || *dptr != ' ')
  return 0;
 len++;
 dptr++;

 return len + digits_len(ct, dptr, limit, shift);
}
