
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int type; char* help; int flags; int short_name; char* long_name; char* argh; char* build_opt; } ;
 int PARSE_OPT_DISABLED ;
 int PARSE_OPT_HIDDEN ;
 int PARSE_OPT_NOARG ;
 int PARSE_OPT_NOBUILD ;
 int PARSE_OPT_OPTARG ;
 char* USAGE_GAP ;
 size_t USAGE_OPTS_WIDTH ;
 size_t fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int stderr ;

__attribute__((used)) static void print_option_help(const struct option *opts, int full)
{
 size_t pos;
 int pad;

 if (opts->type == 137) {
  fputc('\n', stderr);
  if (*opts->help)
   fprintf(stderr, "%s\n", opts->help);
  return;
 }
 if (!full && (opts->flags & PARSE_OPT_HIDDEN))
  return;
 if (opts->flags & PARSE_OPT_DISABLED)
  return;

 pos = fprintf(stderr, "    ");
 if (opts->short_name)
  pos += fprintf(stderr, "-%c", opts->short_name);
 else
  pos += fprintf(stderr, "    ");

 if (opts->long_name && opts->short_name)
  pos += fprintf(stderr, ", ");
 if (opts->long_name)
  pos += fprintf(stderr, "--%s", opts->long_name);

 switch (opts->type) {
 case 142:
  break;
 case 134:
 case 128:
 case 130:
 case 135:
 case 129:
  if (opts->flags & PARSE_OPT_OPTARG)
   if (opts->long_name)
    pos += fprintf(stderr, "[=<n>]");
   else
    pos += fprintf(stderr, "[<n>]");
  else
   pos += fprintf(stderr, " <n>");
  break;
 case 139:
  if (opts->flags & PARSE_OPT_NOARG)
   break;

 case 131:
  if (opts->argh) {
   if (opts->flags & PARSE_OPT_OPTARG)
    if (opts->long_name)
     pos += fprintf(stderr, "[=<%s>]", opts->argh);
    else
     pos += fprintf(stderr, "[<%s>]", opts->argh);
   else
    pos += fprintf(stderr, " <%s>", opts->argh);
  } else {
   if (opts->flags & PARSE_OPT_OPTARG)
    if (opts->long_name)
     pos += fprintf(stderr, "[=...]");
    else
     pos += fprintf(stderr, "[...]");
   else
    pos += fprintf(stderr, " ...");
  }
  break;
 default:
 case 138:
 case 137:
 case 141:
 case 140:
 case 136:
 case 132:
 case 133:
  break;
 }

 if (pos <= USAGE_OPTS_WIDTH)
  pad = USAGE_OPTS_WIDTH - pos;
 else {
  fputc('\n', stderr);
  pad = USAGE_OPTS_WIDTH;
 }
 fprintf(stderr, "%*s%s\n", pad + USAGE_GAP, "", opts->help);
 if (opts->flags & PARSE_OPT_NOBUILD)
  fprintf(stderr, "%*s(not built-in because %s)\n",
   USAGE_OPTS_WIDTH + USAGE_GAP, "",
   opts->build_opt);
}
