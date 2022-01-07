
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 char* ct_sip_header_search (char const*,char const*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int ct_sip_parse_param(const struct nf_conn *ct, const char *dptr,
         unsigned int dataoff, unsigned int datalen,
         const char *name,
         unsigned int *matchoff, unsigned int *matchlen)
{
 const char *limit = dptr + datalen;
 const char *start;
 const char *end;

 limit = ct_sip_header_search(dptr + dataoff, limit, ",", strlen(","));
 if (!limit)
  limit = dptr + datalen;

 start = ct_sip_header_search(dptr + dataoff, limit, name, strlen(name));
 if (!start)
  return 0;
 start += strlen(name);

 end = ct_sip_header_search(start, limit, ";", strlen(";"));
 if (!end)
  end = limit;

 *matchoff = start - dptr;
 *matchlen = end - start;
 return 1;
}
