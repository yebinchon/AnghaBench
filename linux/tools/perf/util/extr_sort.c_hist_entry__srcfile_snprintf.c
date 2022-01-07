
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {scalar_t__ srcfile; } ;


 scalar_t__ hist_entry__get_srcfile (struct hist_entry*) ;
 int repsep_snprintf (char*,size_t,char*,unsigned int,scalar_t__) ;

__attribute__((used)) static int hist_entry__srcfile_snprintf(struct hist_entry *he, char *bf,
     size_t size, unsigned int width)
{
 if (!he->srcfile)
  he->srcfile = hist_entry__get_srcfile(he);

 return repsep_snprintf(bf, size, "%-.*s", width, he->srcfile);
}
