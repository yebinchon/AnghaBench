
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sectioncheck {int mismatch; int symbol_white_list; } ;
 int fatal (char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int get_pretty_name (int,char const**,char const**) ;
 int print_section_list (int ) ;
 char* sec2annotation (char const*) ;
 int sec_mismatch_count ;
 int stderr ;
 int warn (char*,char const*,char const*,unsigned long long,char const*,char const*,char const*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static void report_sec_mismatch(const char *modname,
    const struct sectioncheck *mismatch,
    const char *fromsec,
    unsigned long long fromaddr,
    const char *fromsym,
    int from_is_func,
    const char *tosec, const char *tosym,
    int to_is_func)
{
 const char *from, *from_p;
 const char *to, *to_p;
 char *prl_from;
 char *prl_to;

 sec_mismatch_count++;

 get_pretty_name(from_is_func, &from, &from_p);
 get_pretty_name(to_is_func, &to, &to_p);

 warn("%s(%s+0x%llx): Section mismatch in reference from the %s %s%s "
      "to the %s %s:%s%s\n",
      modname, fromsec, fromaddr, from, fromsym, from_p, to, tosec,
      tosym, to_p);

 switch (mismatch->mismatch) {
 case 130:
  prl_from = sec2annotation(fromsec);
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The function %s%s() references\n"
  "the %s %s%s%s.\n"
  "This is often because %s lacks a %s\n"
  "annotation or the annotation of %s is wrong.\n",
  prl_from, fromsym,
  to, prl_to, tosym, to_p,
  fromsym, prl_to, tosym);
  free(prl_from);
  free(prl_to);
  break;
 case 134: {
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The variable %s references\n"
  "the %s %s%s%s\n"
  "If the reference is valid then annotate the\n"
  "variable with __init* or __refdata (see linux/init.h) "
  "or name the variable:\n",
  fromsym, to, prl_to, tosym, to_p);
  print_section_list(mismatch->symbol_white_list);
  free(prl_to);
  break;
 }
 case 131:
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The function %s() references a %s in an exit section.\n"
  "Often the %s %s%s has valid usage outside the exit section\n"
  "and the fix is to remove the %sannotation of %s.\n",
  fromsym, to, to, tosym, to_p, prl_to, tosym);
  free(prl_to);
  break;
 case 135: {
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The variable %s references\n"
  "the %s %s%s%s\n"
  "If the reference is valid then annotate the\n"
  "variable with __exit* (see linux/init.h) or "
  "name the variable:\n",
  fromsym, to, prl_to, tosym, to_p);
  print_section_list(mismatch->symbol_white_list);
  free(prl_to);
  break;
 }
 case 128:
 case 129:
  prl_from = sec2annotation(fromsec);
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The %s %s%s%s references\n"
  "a %s %s%s%s.\n"
  "If %s is only used by %s then\n"
  "annotate %s with a matching annotation.\n",
  from, prl_from, fromsym, from_p,
  to, prl_to, tosym, to_p,
  tosym, fromsym, tosym);
  free(prl_from);
  free(prl_to);
  break;
 case 136:
  prl_from = sec2annotation(fromsec);
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The %s %s%s%s references\n"
  "a %s %s%s%s.\n"
  "This is often seen when error handling "
  "in the init function\n"
  "uses functionality in the exit path.\n"
  "The fix is often to remove the %sannotation of\n"
  "%s%s so it may be used outside an exit section.\n",
  from, prl_from, fromsym, from_p,
  to, prl_to, tosym, to_p,
  prl_to, tosym, to_p);
  free(prl_from);
  free(prl_to);
  break;
 case 137:
  prl_from = sec2annotation(fromsec);
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The %s %s%s%s references\n"
  "a %s %s%s%s.\n"
  "This is often seen when error handling "
  "in the exit function\n"
  "uses functionality in the init path.\n"
  "The fix is often to remove the %sannotation of\n"
  "%s%s so it may be used outside an init section.\n",
  from, prl_from, fromsym, from_p,
  to, prl_to, tosym, to_p,
  prl_to, tosym, to_p);
  free(prl_from);
  free(prl_to);
  break;
 case 133:
  prl_to = sec2annotation(tosec);
  fprintf(stderr,
  "The symbol %s is exported and annotated %s\n"
  "Fix this by removing the %sannotation of %s "
  "or drop the export.\n",
  tosym, prl_to, prl_to, tosym);
  free(prl_to);
  break;
 case 132:
  fatal("There's a special handler for this mismatch type, "
        "we should never get here.");
  break;
 }
 fprintf(stderr, "\n");
}
