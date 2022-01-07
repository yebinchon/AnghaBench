
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Linetype ;
typedef int Comment_state ;


 int Eioccc () ;
 size_t LS_DIRTY ;
 size_t LS_HASH ;
 size_t LS_START ;
 scalar_t__ LT_DODGY ;
 scalar_t__ LT_ELFALSE ;
 scalar_t__ LT_ELIF ;
 scalar_t__ LT_ELSE ;
 scalar_t__ LT_ELTRUE ;
 scalar_t__ LT_ENDIF ;
 scalar_t__ LT_EOF ;
 scalar_t__ LT_FALSE ;
 scalar_t__ LT_FALSEI ;
 scalar_t__ LT_IF ;
 scalar_t__ LT_PLAIN ;
 scalar_t__ LT_TRUE ;
 scalar_t__ LT_TRUEI ;
 scalar_t__ MAXLINE ;
 int * comment_name ;
 int debug (char*,int ,int ,int ) ;
 int * fgets (char const*,scalar_t__,int ) ;
 int findsym (char const*) ;
 int firstsym ;
 scalar_t__ ifeval (char const**) ;
 scalar_t__* ignore ;
 int incomment ;
 int input ;
 char const* keyword ;
 int linenum ;
 size_t linestate ;
 int * linestate_name ;
 int * newline ;
 int * newline_crlf ;
 int * newline_unix ;
 char* skipcomment (char const*) ;
 char* skipsym (char const*) ;
 int strcpy (char const*,int *) ;
 scalar_t__ strlcmp (char*,char const*,int) ;
 int strlen (int *) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strrchr (char const*,char) ;
 char const* tline ;
 int ** value ;

__attribute__((used)) static Linetype
parseline(void)
{
 const char *cp;
 int cursym;
 int kwlen;
 Linetype retval;
 Comment_state wascomment;

 linenum++;
 if (fgets(tline, MAXLINE, input) == ((void*)0))
  return (LT_EOF);
 if (newline == ((void*)0)) {
  if (strrchr(tline, '\n') == strrchr(tline, '\r') + 1)
   newline = newline_crlf;
  else
   newline = newline_unix;
 }
 retval = LT_PLAIN;
 wascomment = incomment;
 cp = skipcomment(tline);
 if (linestate == LS_START) {
  if (*cp == '#') {
   linestate = LS_HASH;
   firstsym = 1;
   cp = skipcomment(cp + 1);
  } else if (*cp != '\0')
   linestate = LS_DIRTY;
 }
 if (!incomment && linestate == LS_HASH) {
  keyword = tline + (cp - tline);
  cp = skipsym(cp);
  kwlen = cp - keyword;

  if (strncmp(cp, "\\\r\n", 3) == 0 ||
      strncmp(cp, "\\\n", 2) == 0)
   Eioccc();
  if (strlcmp("ifdef", keyword, kwlen) == 0 ||
      strlcmp("ifndef", keyword, kwlen) == 0) {
   cp = skipcomment(cp);
   if ((cursym = findsym(cp)) < 0)
    retval = LT_IF;
   else {
    retval = (keyword[2] == 'n')
        ? LT_FALSE : LT_TRUE;
    if (value[cursym] == ((void*)0))
     retval = (retval == LT_TRUE)
         ? LT_FALSE : LT_TRUE;
    if (ignore[cursym])
     retval = (retval == LT_TRUE)
         ? LT_TRUEI : LT_FALSEI;
   }
   cp = skipsym(cp);
  } else if (strlcmp("if", keyword, kwlen) == 0)
   retval = ifeval(&cp);
  else if (strlcmp("elif", keyword, kwlen) == 0)
   retval = ifeval(&cp) - LT_IF + LT_ELIF;
  else if (strlcmp("else", keyword, kwlen) == 0)
   retval = LT_ELSE;
  else if (strlcmp("endif", keyword, kwlen) == 0)
   retval = LT_ENDIF;
  else {
   linestate = LS_DIRTY;
   retval = LT_PLAIN;
  }
  cp = skipcomment(cp);
  if (*cp != '\0') {
   linestate = LS_DIRTY;
   if (retval == LT_TRUE || retval == LT_FALSE ||
       retval == LT_TRUEI || retval == LT_FALSEI)
    retval = LT_IF;
   if (retval == LT_ELTRUE || retval == LT_ELFALSE)
    retval = LT_ELIF;
  }
  if (retval != LT_PLAIN && (wascomment || incomment)) {
   retval += LT_DODGY;
   if (incomment)
    linestate = LS_DIRTY;
  }



  if (linestate == LS_HASH) {
   size_t len = cp - tline;
   if (fgets(tline + len, MAXLINE - len, input) == ((void*)0)) {

    strcpy(tline + len, newline);
    cp += strlen(newline);
    linestate = LS_START;
   } else {
    linestate = LS_DIRTY;
   }
  }
 }
 if (linestate == LS_DIRTY) {
  while (*cp != '\0')
   cp = skipcomment(cp + 1);
 }
 debug("parser line %d state %s comment %s line", linenum,
     comment_name[incomment], linestate_name[linestate]);
 return (retval);
}
