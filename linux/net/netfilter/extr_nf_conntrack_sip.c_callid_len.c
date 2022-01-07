
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int word_len (char const*,char const*) ;

__attribute__((used)) static int callid_len(const struct nf_conn *ct, const char *dptr,
        const char *limit, int *shift)
{
 int len, domain_len;

 len = word_len(dptr, limit);
 dptr += len;
 if (!len || dptr == limit || *dptr != '@')
  return len;
 dptr++;
 len++;

 domain_len = word_len(dptr, limit);
 if (!domain_len)
  return 0;
 return len + domain_len;
}
