
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kprobe_blacklist_node {int symbol; int end; int start; int list; } ;
typedef int FILE ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;
 int INIT_LIST_HEAD (int *) ;
 int PATH_MAX ;
 char* debugfs__mountpoint () ;
 int e_snprintf (char*,int,char*,char const*) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int kprobe_blacklist__delete (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int pr_debug2 (char*,int ,int ,int ) ;
 int sscanf (char*,char*,int *,int *) ;
 char* strchr (char*,char) ;
 int strdup (char*) ;
 int strlen (char*) ;
 struct kprobe_blacklist_node* zalloc (int) ;

__attribute__((used)) static int kprobe_blacklist__load(struct list_head *blacklist)
{
 struct kprobe_blacklist_node *node;
 const char *__debugfs = debugfs__mountpoint();
 char buf[PATH_MAX], *p;
 FILE *fp;
 int ret;

 if (__debugfs == ((void*)0))
  return -ENOTSUP;

 ret = e_snprintf(buf, PATH_MAX, "%s/kprobes/blacklist", __debugfs);
 if (ret < 0)
  return ret;

 fp = fopen(buf, "r");
 if (!fp)
  return -errno;

 ret = 0;
 while (fgets(buf, PATH_MAX, fp)) {
  node = zalloc(sizeof(*node));
  if (!node) {
   ret = -ENOMEM;
   break;
  }
  INIT_LIST_HEAD(&node->list);
  list_add_tail(&node->list, blacklist);
  if (sscanf(buf, "0x%lx-0x%lx", &node->start, &node->end) != 2) {
   ret = -EINVAL;
   break;
  }
  p = strchr(buf, '\t');
  if (p) {
   p++;
   if (p[strlen(p) - 1] == '\n')
    p[strlen(p) - 1] = '\0';
  } else
   p = (char *)"unknown";
  node->symbol = strdup(p);
  if (!node->symbol) {
   ret = -ENOMEM;
   break;
  }
  pr_debug2("Blacklist: 0x%lx-0x%lx, %s\n",
     node->start, node->end, node->symbol);
  ret++;
 }
 if (ret < 0)
  kprobe_blacklist__delete(blacklist);
 fclose(fp);

 return ret;
}
