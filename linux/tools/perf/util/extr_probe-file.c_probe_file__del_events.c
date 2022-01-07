
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;
struct strfilter {int dummy; } ;


 int ENOMEM ;
 int probe_file__del_strlist (int,struct strlist*) ;
 int probe_file__get_events (int,struct strfilter*,struct strlist*) ;
 int strlist__delete (struct strlist*) ;
 struct strlist* strlist__new (int *,int *) ;

int probe_file__del_events(int fd, struct strfilter *filter)
{
 struct strlist *namelist;
 int ret;

 namelist = strlist__new(((void*)0), ((void*)0));
 if (!namelist)
  return -ENOMEM;

 ret = probe_file__get_events(fd, filter, namelist);
 if (ret < 0)
  return ret;

 ret = probe_file__del_strlist(fd, namelist);
 strlist__delete(namelist);

 return ret;
}
