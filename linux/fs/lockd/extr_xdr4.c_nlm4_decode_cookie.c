
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_cookie {int len; int data; } ;
typedef int __be32 ;


 unsigned int NLM_MAXCOOKIELEN ;
 int XDR_QUADLEN (unsigned int) ;
 int dprintk (char*,unsigned int,unsigned int) ;
 int memcpy (int ,int *,unsigned int) ;
 int memset (int ,int ,int) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static __be32 *
nlm4_decode_cookie(__be32 *p, struct nlm_cookie *c)
{
 unsigned int len;

 len = ntohl(*p++);

 if(len==0)
 {
  c->len=4;
  memset(c->data, 0, 4);
 }
 else if(len<=NLM_MAXCOOKIELEN)
 {
  c->len=len;
  memcpy(c->data, p, len);
  p+=XDR_QUADLEN(len);
 }
 else
 {
  dprintk("lockd: bad cookie size %d (only cookies under "
   "%d bytes are supported.)\n",
    len, NLM_MAXCOOKIELEN);
  return ((void*)0);
 }
 return p;
}
