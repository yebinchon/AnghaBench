
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srcpos {int first_column; int first_line; int last_column; int last_line; TYPE_1__* file; } ;
struct TYPE_2__ {char* name; } ;


 int xasprintf (char**,char*,char const*,int ,int ,...) ;

char *
srcpos_string(struct srcpos *pos)
{
 const char *fname = "<no-file>";
 char *pos_str;

 if (pos->file && pos->file->name)
  fname = pos->file->name;


 if (pos->first_line != pos->last_line)
  xasprintf(&pos_str, "%s:%d.%d-%d.%d", fname,
     pos->first_line, pos->first_column,
     pos->last_line, pos->last_column);
 else if (pos->first_column != pos->last_column)
  xasprintf(&pos_str, "%s:%d.%d-%d", fname,
     pos->first_line, pos->first_column,
     pos->last_column);
 else
  xasprintf(&pos_str, "%s:%d.%d", fname,
     pos->first_line, pos->first_column);

 return pos_str;
}
