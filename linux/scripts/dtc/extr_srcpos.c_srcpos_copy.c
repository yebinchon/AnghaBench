
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcpos {struct srcpos* file; int * next; } ;
struct srcfile_state {struct srcfile_state* file; int * next; } ;


 int assert (int ) ;
 int memcpy (struct srcpos*,struct srcpos*,int) ;
 struct srcpos* xmalloc (int) ;

struct srcpos *
srcpos_copy(struct srcpos *pos)
{
 struct srcpos *pos_new;
 struct srcfile_state *srcfile_state;

 if (!pos)
  return ((void*)0);

 pos_new = xmalloc(sizeof(struct srcpos));
 assert(pos->next == ((void*)0));
 memcpy(pos_new, pos, sizeof(struct srcpos));


 srcfile_state = xmalloc(sizeof(struct srcfile_state));
 memcpy(srcfile_state, pos->file, sizeof(struct srcfile_state));
 pos_new->file = srcfile_state;

 return pos_new;
}
