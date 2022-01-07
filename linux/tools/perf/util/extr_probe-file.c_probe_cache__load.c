
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_cache_entry {int sdt; int tevlist; int node; int pev; scalar_t__ spev; } ;
struct probe_cache {int entries; int fd; } ;
typedef int FILE ;


 int EINVAL ;
 int ENOMEM ;
 int MAX_CMDLEN ;
 int close (int) ;
 int dup (int ) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int feof (int *) ;
 int fgets (char*,int,int *) ;
 int list_add_tail (int *,int *) ;
 int parse_perf_probe_command (char*,int *) ;
 int probe_cache_entry__delete (struct probe_cache_entry*) ;
 struct probe_cache_entry* probe_cache_entry__new (int *) ;
 char* strchr (char*,char) ;
 scalar_t__ strdup (char*) ;
 int strlist__add (int ,char*) ;

__attribute__((used)) static int probe_cache__load(struct probe_cache *pcache)
{
 struct probe_cache_entry *entry = ((void*)0);
 char buf[MAX_CMDLEN], *p;
 int ret = 0, fddup;
 FILE *fp;

 fddup = dup(pcache->fd);
 if (fddup < 0)
  return -errno;
 fp = fdopen(fddup, "r");
 if (!fp) {
  close(fddup);
  return -EINVAL;
 }

 while (!feof(fp)) {
  if (!fgets(buf, MAX_CMDLEN, fp))
   break;
  p = strchr(buf, '\n');
  if (p)
   *p = '\0';

  if (buf[0] == '#' || buf[0] == '%') {
   entry = probe_cache_entry__new(((void*)0));
   if (!entry) {
    ret = -ENOMEM;
    goto out;
   }
   if (buf[0] == '%')
    entry->sdt = 1;
   entry->spev = strdup(buf + 1);
   if (entry->spev)
    ret = parse_perf_probe_command(buf + 1,
        &entry->pev);
   else
    ret = -ENOMEM;
   if (ret < 0) {
    probe_cache_entry__delete(entry);
    goto out;
   }
   list_add_tail(&entry->node, &pcache->entries);
  } else {
   if (!entry) {
    ret = -EINVAL;
    goto out;
   }
   strlist__add(entry->tevlist, buf);
  }
 }
out:
 fclose(fp);
 return ret;
}
