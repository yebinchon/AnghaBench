
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct list_head {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int metricgroup__add_metric (char*,struct strbuf*,struct list_head*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_init (struct strbuf*,int) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int metricgroup__add_metric_list(const char *list, struct strbuf *events,
            struct list_head *group_list)
{
 char *llist, *nlist, *p;
 int ret = -EINVAL;

 nlist = strdup(list);
 if (!nlist)
  return -ENOMEM;
 llist = nlist;

 strbuf_init(events, 100);
 strbuf_addf(events, "%s", "");

 while ((p = strsep(&llist, ",")) != ((void*)0)) {
  ret = metricgroup__add_metric(p, events, group_list);
  if (ret == -EINVAL) {
   fprintf(stderr, "Cannot find metric or group `%s'\n",
     p);
   break;
  }
 }
 free(nlist);
 return ret;
}
