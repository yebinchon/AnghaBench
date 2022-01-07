
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ima_field_data {int dummy; } ;
struct ima_event_data {char* filename; TYPE_4__* file; } ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct TYPE_8__ {TYPE_3__ f_path; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;


 int BUG_ON (int) ;
 int DATA_FMT_STRING ;
 scalar_t__ IMA_EVENT_NAME_LEN_MAX ;
 int ima_write_template_field_data (char const*,scalar_t__,int ,struct ima_field_data*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int ima_eventname_init_common(struct ima_event_data *event_data,
         struct ima_field_data *field_data,
         bool size_limit)
{
 const char *cur_filename = ((void*)0);
 u32 cur_filename_len = 0;

 BUG_ON(event_data->filename == ((void*)0) && event_data->file == ((void*)0));

 if (event_data->filename) {
  cur_filename = event_data->filename;
  cur_filename_len = strlen(event_data->filename);

  if (!size_limit || cur_filename_len <= IMA_EVENT_NAME_LEN_MAX)
   goto out;
 }

 if (event_data->file) {
  cur_filename = event_data->file->f_path.dentry->d_name.name;
  cur_filename_len = strlen(cur_filename);
 } else




  cur_filename_len = IMA_EVENT_NAME_LEN_MAX;
out:
 return ima_write_template_field_data(cur_filename, cur_filename_len,
          DATA_FMT_STRING, field_data);
}
