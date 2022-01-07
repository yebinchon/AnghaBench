
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_error_string (int,char*) ;
 int ERR_get_error_line (char const**,int*) ;
 scalar_t__ ERR_peek_error () ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void display_openssl_errors(int l)
{
 const char *file;
 char buf[120];
 int e, line;

 if (ERR_peek_error() == 0)
  return;
 fprintf(stderr, "At main.c:%d:\n", l);

 while ((e = ERR_get_error_line(&file, &line))) {
  ERR_error_string(e, buf);
  fprintf(stderr, "- SSL %s: %s:%d\n", buf, file, line);
 }
}
