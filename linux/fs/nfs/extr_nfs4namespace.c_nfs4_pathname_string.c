
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_string {int len; int data; } ;
struct nfs4_pathname {int ncomponents; struct nfs4_string* components; } ;
typedef int ssize_t ;


 int ENAMETOOLONG ;
 char* ERR_PTR (int ) ;
 int memcpy (char*,int ,int) ;

__attribute__((used)) static inline char *nfs4_pathname_string(const struct nfs4_pathname *pathname,
      char *buffer, ssize_t buflen)
{
 char *end = buffer + buflen;
 int n;

 *--end = '\0';
 buflen--;

 n = pathname->ncomponents;
 while (--n >= 0) {
  const struct nfs4_string *component = &pathname->components[n];
  buflen -= component->len + 1;
  if (buflen < 0)
   goto Elong;
  end -= component->len;
  memcpy(end, component->data, component->len);
  *--end = '/';
 }
 return end;
Elong:
 return ERR_PTR(-ENAMETOOLONG);
}
