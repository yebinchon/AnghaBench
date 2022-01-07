
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;


 int _hist_entry__sym_size_snprintf (int ,char*,size_t,unsigned int) ;

__attribute__((used)) static int hist_entry__sym_size_snprintf(struct hist_entry *he, char *bf,
      size_t size, unsigned int width)
{
 return _hist_entry__sym_size_snprintf(he->ms.sym, bf, size, width);
}
