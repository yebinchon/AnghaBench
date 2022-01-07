
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ synth_field_is_string (char*) ;

__attribute__((used)) static const char *synth_field_fmt(char *type)
{
 const char *fmt = "%llu";

 if (strcmp(type, "s64") == 0)
  fmt = "%lld";
 else if (strcmp(type, "u64") == 0)
  fmt = "%llu";
 else if (strcmp(type, "s32") == 0)
  fmt = "%d";
 else if (strcmp(type, "u32") == 0)
  fmt = "%u";
 else if (strcmp(type, "s16") == 0)
  fmt = "%d";
 else if (strcmp(type, "u16") == 0)
  fmt = "%u";
 else if (strcmp(type, "s8") == 0)
  fmt = "%d";
 else if (strcmp(type, "u8") == 0)
  fmt = "%u";
 else if (strcmp(type, "char") == 0)
  fmt = "%d";
 else if (strcmp(type, "unsigned char") == 0)
  fmt = "%u";
 else if (strcmp(type, "int") == 0)
  fmt = "%d";
 else if (strcmp(type, "unsigned int") == 0)
  fmt = "%u";
 else if (strcmp(type, "long") == 0)
  fmt = "%ld";
 else if (strcmp(type, "unsigned long") == 0)
  fmt = "%lu";
 else if (strcmp(type, "pid_t") == 0)
  fmt = "%d";
 else if (strcmp(type, "gfp_t") == 0)
  fmt = "%x";
 else if (synth_field_is_string(type))
  fmt = "%s";

 return fmt;
}
