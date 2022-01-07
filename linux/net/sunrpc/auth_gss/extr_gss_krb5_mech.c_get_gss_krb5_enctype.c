
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_krb5_enctype {int etype; } ;


 int num_supported_enctypes ;
 struct gss_krb5_enctype const* supported_gss_krb5_enctypes ;

__attribute__((used)) static const struct gss_krb5_enctype *
get_gss_krb5_enctype(int etype)
{
 int i;
 for (i = 0; i < num_supported_enctypes; i++)
  if (supported_gss_krb5_enctypes[i].etype == etype)
   return &supported_gss_krb5_enctypes[i];
 return ((void*)0);
}
