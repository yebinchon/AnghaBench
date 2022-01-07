
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist_config {char const* dirname; int file_only; } ;
struct strlist {int dummy; } ;
struct str_node {int s; } ;


 scalar_t__ ENOENT ;
 scalar_t__ asprintf (char**,char*,int ) ;
 scalar_t__ errno ;
 int random () ;
 int strlist__delete (struct strlist*) ;
 struct str_node* strlist__entry (struct strlist*,int) ;
 struct strlist* strlist__new (char*,struct strlist_config*) ;
 int strlist__nr_entries (struct strlist*) ;

const char *perf_tip(const char *dirpath)
{
 struct strlist *tips;
 struct str_node *node;
 char *tip = ((void*)0);
 struct strlist_config conf = {
  .dirname = dirpath,
  .file_only = 1,
 };

 tips = strlist__new("tips.txt", &conf);
 if (tips == ((void*)0))
  return errno == ENOENT ? ((void*)0) :
   "Tip: check path of tips.txt or get more memory! ;-p";

 if (strlist__nr_entries(tips) == 0)
  goto out;

 node = strlist__entry(tips, random() % strlist__nr_entries(tips));
 if (asprintf(&tip, "Tip: %s", node->s) < 0)
  tip = (char *)"Tip: get more memory! ;-)";

out:
 strlist__delete(tips);

 return tip;
}
