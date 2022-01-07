
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENTER ;
 int FREETMPS ;
 int G_SCALAR ;
 int LEAVE ;
 int PUSHMARK (int ) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SP ;
 int SPAGAIN ;
 int XPUSHs (int ) ;
 int call_pv (char*,int ) ;
 int dSP ;
 unsigned long long eval_flag (char const*) ;
 scalar_t__ get_cv (char*,int ) ;
 int newSVpv (char const*,int ) ;
 int newSVuv (unsigned long long) ;
 int sv_2mortal (int ) ;

__attribute__((used)) static void define_symbolic_value(const char *ev_name,
      const char *field_name,
      const char *field_value,
      const char *field_str)
{
 unsigned long long value;
 dSP;

 value = eval_flag(field_value);

 ENTER;
 SAVETMPS;
 PUSHMARK(SP);

 XPUSHs(sv_2mortal(newSVpv(ev_name, 0)));
 XPUSHs(sv_2mortal(newSVpv(field_name, 0)));
 XPUSHs(sv_2mortal(newSVuv(value)));
 XPUSHs(sv_2mortal(newSVpv(field_str, 0)));

 PUTBACK;
 if (get_cv("main::define_symbolic_value", 0))
  call_pv("main::define_symbolic_value", G_SCALAR);
 SPAGAIN;
 PUTBACK;
 FREETMPS;
 LEAVE;
}
