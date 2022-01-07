
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_print_flags {unsigned long mask; scalar_t__ name; } ;


 int default_flag_spec ;
 int default_str_spec ;
 char* number (char*,char*,unsigned long,int ) ;
 char* string (char*,char*,scalar_t__,int ) ;

__attribute__((used)) static
char *format_flags(char *buf, char *end, unsigned long flags,
     const struct trace_print_flags *names)
{
 unsigned long mask;

 for ( ; flags && names->name; names++) {
  mask = names->mask;
  if ((flags & mask) != mask)
   continue;

  buf = string(buf, end, names->name, default_str_spec);

  flags &= ~mask;
  if (flags) {
   if (buf < end)
    *buf = '|';
   buf++;
  }
 }

 if (flags)
  buf = number(buf, end, flags, default_flag_spec);

 return buf;
}
