
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ devt; } ;
typedef scalar_t__ dev_t ;


 unsigned int MAJOR (scalar_t__) ;
 unsigned int MINOR (scalar_t__) ;
 scalar_t__ MKDEV (unsigned int,unsigned int) ;
 scalar_t__ Root_NFS ;
 scalar_t__ Root_RAM0 ;
 scalar_t__ blk_lookup_devt (char*,int) ;
 int block_class ;
 struct device* class_find_device (int *,int *,char const*,int *) ;
 scalar_t__ devt_from_partuuid (char const*) ;
 scalar_t__ isdigit (char) ;
 int match_dev_by_label ;
 scalar_t__ new_decode_dev (int) ;
 int put_device (struct device*) ;
 int simple_strtoul (char const*,char**,int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

dev_t name_to_dev_t(const char *name)
{
 char s[32];
 char *p;
 dev_t res = 0;
 int part;
 if (strncmp(name, "/dev/", 5) != 0) {
  unsigned maj, min, offset;
  char dummy;

  if ((sscanf(name, "%u:%u%c", &maj, &min, &dummy) == 2) ||
      (sscanf(name, "%u:%u:%u:%c", &maj, &min, &offset, &dummy) == 3)) {
   res = MKDEV(maj, min);
   if (maj != MAJOR(res) || min != MINOR(res))
    goto fail;
  } else {
   res = new_decode_dev(simple_strtoul(name, &p, 16));
   if (*p)
    goto fail;
  }
  goto done;
 }

 name += 5;
 res = Root_NFS;
 if (strcmp(name, "nfs") == 0)
  goto done;
 res = Root_RAM0;
 if (strcmp(name, "ram") == 0)
  goto done;

 if (strlen(name) > 31)
  goto fail;
 strcpy(s, name);
 for (p = s; *p; p++)
  if (*p == '/')
   *p = '!';
 res = blk_lookup_devt(s, 0);
 if (res)
  goto done;





 while (p > s && isdigit(p[-1]))
  p--;
 if (p == s || !*p || *p == '0')
  goto fail;


 part = simple_strtoul(p, ((void*)0), 10);
 *p = '\0';
 res = blk_lookup_devt(s, part);
 if (res)
  goto done;


 if (p < s + 2 || !isdigit(p[-2]) || p[-1] != 'p')
  goto fail;
 p[-1] = '\0';
 res = blk_lookup_devt(s, part);
 if (res)
  goto done;

fail:
 return 0;
done:
 return res;
}
