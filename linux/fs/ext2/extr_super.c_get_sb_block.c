
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printk (char*,char*) ;
 unsigned long simple_strtoul (char*,char**,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static unsigned long get_sb_block(void **data)
{
 unsigned long sb_block;
 char *options = (char *) *data;

 if (!options || strncmp(options, "sb=", 3) != 0)
  return 1;
 options += 3;
 sb_block = simple_strtoul(options, &options, 0);
 if (*options && *options != ',') {
  printk("EXT2-fs: Invalid sb specification: %s\n",
         (char *) *data);
  return 1;
 }
 if (*options == ',')
  options++;
 *data = (void *) options;
 return sb_block;
}
