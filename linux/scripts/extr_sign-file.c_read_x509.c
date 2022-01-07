
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_read (int *,unsigned char*,int) ;
 scalar_t__ BIO_reset (int *) ;
 scalar_t__ BIO_should_retry (int *) ;
 int ERR (int,char*,char const*) ;
 int * PEM_read_bio_X509 (int *,int *,int *,int *) ;
 int * d2i_X509_bio (int *,int *) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static X509 *read_x509(const char *x509_name)
{
 unsigned char buf[2];
 X509 *x509;
 BIO *b;
 int n;

 b = BIO_new_file(x509_name, "rb");
 ERR(!b, "%s", x509_name);


 n = BIO_read(b, buf, 2);
 if (n != 2) {
  if (BIO_should_retry(b)) {
   fprintf(stderr, "%s: Read wanted retry\n", x509_name);
   exit(1);
  }
  if (n >= 0) {
   fprintf(stderr, "%s: Short read\n", x509_name);
   exit(1);
  }
  ERR(1, "%s", x509_name);
 }

 ERR(BIO_reset(b) != 0, "%s", x509_name);

 if (buf[0] == 0x30 && buf[1] >= 0x81 && buf[1] <= 0x84)

  x509 = d2i_X509_bio(b, ((void*)0));
 else

  x509 = PEM_read_bio_X509(b, ((void*)0), ((void*)0), ((void*)0));

 BIO_free(b);
 ERR(!x509, "%s", x509_name);

 return x509;
}
