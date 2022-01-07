
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_path_info {scalar_t__ name; } ;
struct path {int dummy; } ;


 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;
 scalar_t__ tomoyo_realpath_from_path (struct path const*) ;

__attribute__((used)) static bool tomoyo_get_realpath(struct tomoyo_path_info *buf, const struct path *path)
{
 buf->name = tomoyo_realpath_from_path(path);
 if (buf->name) {
  tomoyo_fill_path_info(buf);
  return 1;
 }
 return 0;
}
