
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {scalar_t__ name; scalar_t__ is_dir; } ;


 int strcat (char*,char*) ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;

__attribute__((used)) static void tomoyo_add_slash(struct tomoyo_path_info *buf)
{
 if (buf->is_dir)
  return;



 strcat((char *) buf->name, "/");
 tomoyo_fill_path_info(buf);
}
