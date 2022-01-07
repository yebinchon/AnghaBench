
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {char* name; } ;


 int GFP_KERNEL ;
 int NAME_SIZE ;
 char* dev_name (struct device*) ;
 char* kstrdup (char*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sscanf (char*,char*,int*,...) ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *fmt_single_name(struct device *dev, int *id)
{
 char *found, name[NAME_SIZE];
 int id1, id2;

 if (dev_name(dev) == ((void*)0))
  return ((void*)0);

 strlcpy(name, dev_name(dev), NAME_SIZE);


 found = strstr(name, dev->driver->name);
 if (found) {

  if (sscanf(&found[strlen(dev->driver->name)], ".%d", id) == 1) {


   if (*id == -1)
    found[strlen(dev->driver->name)] = '\0';
  }

 } else {

  if (sscanf(name, "%x-%x", &id1, &id2) == 2) {
   char tmp[NAME_SIZE];


   *id = ((id1 & 0xffff) << 16) + id2;


   snprintf(tmp, NAME_SIZE, "%s.%s", dev->driver->name,
     name);
   strlcpy(name, tmp, NAME_SIZE);
  } else
   *id = 0;
 }

 return kstrdup(name, GFP_KERNEL);
}
