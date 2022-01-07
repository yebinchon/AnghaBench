
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERR_get_error_line (char const**,int*) ;
 scalar_t__ ERR_peek_error () ;

__attribute__((used)) static void drain_openssl_errors(void)
{
 const char *file;
 int line;

 if (ERR_peek_error() == 0)
  return;
 while (ERR_get_error_line(&file, &line)) {}
}
