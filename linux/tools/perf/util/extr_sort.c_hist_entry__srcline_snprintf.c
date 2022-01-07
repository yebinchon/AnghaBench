
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {scalar_t__ srcline; } ;


 scalar_t__ hist_entry__srcline (struct hist_entry*) ;
 int repsep_snprintf (char*,size_t,char*,unsigned int,scalar_t__) ;

__attribute__((used)) static int hist_entry__srcline_snprintf(struct hist_entry *he, char *bf,
     size_t size, unsigned int width)
{
 if (!he->srcline)
  he->srcline = hist_entry__srcline(he);

 return repsep_snprintf(bf, size, "%-.*s", width, he->srcline);
}
