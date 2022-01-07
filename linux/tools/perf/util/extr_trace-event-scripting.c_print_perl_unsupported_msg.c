
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void print_perl_unsupported_msg(void)
{
 fprintf(stderr, "Perl scripting not supported."
  "  Install libperl and rebuild perf to enable it.\n"
  "For example:\n  # apt-get install libperl-dev (ubuntu)"
  "\n  # yum install 'perl(ExtUtils::Embed)' (Fedora)"
  "\n  etc.\n");
}
