
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int X509 ;


 scalar_t__ BIO_new_file (int ,char*) ;
 int ERR (int,char*,int ) ;
 int X509_NAME_oneline (int ,char*,int) ;
 int X509_get_subject_name (int *) ;
 int cert_dst ;
 int fprintf (int ,char*,char*) ;
 int i2d_X509_bio (scalar_t__,int *) ;
 scalar_t__ kbuild_verbose ;
 int stderr ;
 scalar_t__ wb ;

__attribute__((used)) static void write_cert(X509 *x509)
{
 char buf[200];

 if (!wb) {
  wb = BIO_new_file(cert_dst, "wb");
  ERR(!wb, "%s", cert_dst);
 }
 X509_NAME_oneline(X509_get_subject_name(x509), buf, sizeof(buf));
 ERR(!i2d_X509_bio(wb, x509), "%s", cert_dst);
 if (kbuild_verbose)
  fprintf(stderr, "Extracted cert: %s\n", buf);
}
