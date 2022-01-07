
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BIT (int) ;
 int EINVAL ;
 int parse_resource (char*,int*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int rdmacg_parse_limits(char *options,
          int *new_limits, unsigned long *enables)
{
 char *c;
 int err = -EINVAL;


 while ((c = strsep(&options, " ")) != ((void*)0)) {
  int index, intval;

  index = parse_resource(c, &intval);
  if (index < 0)
   goto err;

  new_limits[index] = intval;
  *enables |= BIT(index);
 }
 return 0;

err:
 return err;
}
