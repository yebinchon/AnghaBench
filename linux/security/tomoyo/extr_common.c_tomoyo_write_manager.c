
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_delete; } ;
struct tomoyo_io_buffer {char* write_buf; TYPE_1__ w; } ;


 int strcmp (char*,char*) ;
 int tomoyo_manage_by_non_root ;
 int tomoyo_update_manager_entry (char*,int ) ;

__attribute__((used)) static int tomoyo_write_manager(struct tomoyo_io_buffer *head)
{
 char *data = head->write_buf;

 if (!strcmp(data, "manage_by_non_root")) {
  tomoyo_manage_by_non_root = !head->w.is_delete;
  return 0;
 }
 return tomoyo_update_manager_entry(data, head->w.is_delete);
}
