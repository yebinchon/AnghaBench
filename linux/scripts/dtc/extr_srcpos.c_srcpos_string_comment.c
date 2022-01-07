
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcpos {char* first_line; char* last_line; struct srcpos* next; int last_column; int first_column; TYPE_1__* file; } ;
struct TYPE_2__ {char* name; } ;


 int free (char*) ;
 char* shorten_to_initial_path (char*) ;
 int xasprintf (char**,char*,...) ;

__attribute__((used)) static char *
srcpos_string_comment(struct srcpos *pos, bool first_line, int level)
{
 char *pos_str, *fname, *first, *rest;
 bool fresh_fname = 0;

 if (!pos) {
  if (level > 1) {
   xasprintf(&pos_str, "<no-file>:<no-line>");
   return pos_str;
  } else {
   return ((void*)0);
  }
 }

 if (!pos->file)
  fname = "<no-file>";
 else if (!pos->file->name)
  fname = "<no-filename>";
 else if (level > 1)
  fname = pos->file->name;
 else {
  fname = shorten_to_initial_path(pos->file->name);
  if (fname)
   fresh_fname = 1;
  else
   fname = pos->file->name;
 }

 if (level > 1)
  xasprintf(&first, "%s:%d:%d-%d:%d", fname,
     pos->first_line, pos->first_column,
     pos->last_line, pos->last_column);
 else
  xasprintf(&first, "%s:%d", fname,
     first_line ? pos->first_line : pos->last_line);

 if (fresh_fname)
  free(fname);

 if (pos->next != ((void*)0)) {
  rest = srcpos_string_comment(pos->next, first_line, level);
  xasprintf(&pos_str, "%s, %s", first, rest);
  free(first);
  free(rest);
 } else {
  pos_str = first;
 }

 return pos_str;
}
