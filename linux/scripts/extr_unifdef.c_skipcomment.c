
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LS_DIRTY ;
 int LS_START ;



 int abort () ;
 size_t depth ;
 int error (char*) ;
 scalar_t__* ignoring ;
 int incomment ;
 scalar_t__ isspace (unsigned char) ;
 int linestate ;
 int * strchr (char*,char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ text ;

__attribute__((used)) static const char *
skipcomment(const char *cp)
{
 if (text || ignoring[depth]) {
  for (; isspace((unsigned char)*cp); cp++)
   if (*cp == '\n')
    linestate = LS_START;
  return (cp);
 }
 while (*cp != '\0')

  if (strncmp(cp, "\\\r\n", 3) == 0)
   cp += 3;
  else if (strncmp(cp, "\\\n", 2) == 0)
   cp += 2;
  else switch (incomment) {
  case 130:
   if (strncmp(cp, "/\\\r\n", 4) == 0) {
    incomment = 129;
    cp += 4;
   } else if (strncmp(cp, "/\\\n", 3) == 0) {
    incomment = 129;
    cp += 3;
   } else if (strncmp(cp, "/*", 2) == 0) {
    incomment = 132;
    cp += 2;
   } else if (strncmp(cp, "//", 2) == 0) {
    incomment = 133;
    cp += 2;
   } else if (strncmp(cp, "\'", 1) == 0) {
    incomment = 134;
    linestate = LS_DIRTY;
    cp += 1;
   } else if (strncmp(cp, "\"", 1) == 0) {
    incomment = 128;
    linestate = LS_DIRTY;
    cp += 1;
   } else if (strncmp(cp, "\n", 1) == 0) {
    linestate = LS_START;
    cp += 1;
   } else if (strchr(" \r\t", *cp) != ((void*)0)) {
    cp += 1;
   } else
    return (cp);
   continue;
  case 133:
   if (strncmp(cp, "\n", 1) == 0) {
    incomment = 130;
    linestate = LS_START;
   }
   cp += 1;
   continue;
  case 134:
  case 128:
   if ((incomment == 134 && cp[0] == '\'') ||
       (incomment == 128 && cp[0] == '\"')) {
    incomment = 130;
    cp += 1;
   } else if (cp[0] == '\\') {
    if (cp[1] == '\0')
     cp += 1;
    else
     cp += 2;
   } else if (strncmp(cp, "\n", 1) == 0) {
    if (incomment == 134)
     error("unterminated char literal");
    else
     error("unterminated string literal");
   } else
    cp += 1;
   continue;
  case 132:
   if (strncmp(cp, "*\\\r\n", 4) == 0) {
    incomment = 131;
    cp += 4;
   } else if (strncmp(cp, "*\\\n", 3) == 0) {
    incomment = 131;
    cp += 3;
   } else if (strncmp(cp, "*/", 2) == 0) {
    incomment = 130;
    cp += 2;
   } else
    cp += 1;
   continue;
  case 129:
   if (*cp == '*') {
    incomment = 132;
    cp += 1;
   } else if (*cp == '/') {
    incomment = 133;
    cp += 1;
   } else {
    incomment = 130;
    linestate = LS_DIRTY;
   }
   continue;
  case 131:
   if (*cp == '/') {
    incomment = 130;
    cp += 1;
   } else
    incomment = 132;
   continue;
  default:
   abort();
  }
 return (cp);
}
