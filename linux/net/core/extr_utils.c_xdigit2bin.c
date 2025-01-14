
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN6PTON_COLON_MASK ;
 int IN6PTON_DELIM ;
 int IN6PTON_DIGIT ;
 int IN6PTON_DOT ;
 int IN6PTON_UNKNOWN ;
 int IN6PTON_XDIGIT ;
 int hex_to_bin (char) ;

__attribute__((used)) static inline int xdigit2bin(char c, int delim)
{
 int val;

 if (c == delim || c == '\0')
  return IN6PTON_DELIM;
 if (c == ':')
  return IN6PTON_COLON_MASK;
 if (c == '.')
  return IN6PTON_DOT;

 val = hex_to_bin(c);
 if (val >= 0)
  return val | IN6PTON_XDIGIT | (val < 10 ? IN6PTON_DIGIT : 0);

 if (delim == -1)
  return IN6PTON_DELIM;
 return IN6PTON_UNKNOWN;
}
