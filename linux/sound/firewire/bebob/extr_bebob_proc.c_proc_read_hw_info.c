
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct snd_bebob* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_bebob {int unit; } ;
struct hw_info {char* protocol_ver; char* bld_ver; char* model_id; char* model_rev; char* fw_id; char* fw_ver; char* base_addr; char* max_size; int bld_time; int bld_date; int fw_time; int fw_date; int * guid; int manufacturer; } ;


 int GFP_KERNEL ;
 int kfree (struct hw_info*) ;
 struct hw_info* kzalloc (int,int ) ;
 scalar_t__ snd_bebob_read_block (int ,int ,struct hw_info*,int) ;
 int snd_iprintf (struct snd_info_buffer*,char*,char*,...) ;

__attribute__((used)) static void
proc_read_hw_info(struct snd_info_entry *entry,
    struct snd_info_buffer *buffer)
{
 struct snd_bebob *bebob = entry->private_data;
 struct hw_info *info;

 info = kzalloc(sizeof(struct hw_info), GFP_KERNEL);
 if (info == ((void*)0))
  return;

 if (snd_bebob_read_block(bebob->unit, 0,
       info, sizeof(struct hw_info)) < 0)
  goto end;

 snd_iprintf(buffer, "Manufacturer:\t%.8s\n",
      (char *)&info->manufacturer);
 snd_iprintf(buffer, "Protocol Ver:\t%d\n", info->protocol_ver);
 snd_iprintf(buffer, "Build Ver:\t%d\n", info->bld_ver);
 snd_iprintf(buffer, "GUID:\t\t0x%.8X%.8X\n",
      info->guid[0], info->guid[1]);
 snd_iprintf(buffer, "Model ID:\t0x%02X\n", info->model_id);
 snd_iprintf(buffer, "Model Rev:\t%d\n", info->model_rev);
 snd_iprintf(buffer, "Firmware Date:\t%.8s\n", (char *)&info->fw_date);
 snd_iprintf(buffer, "Firmware Time:\t%.8s\n", (char *)&info->fw_time);
 snd_iprintf(buffer, "Firmware ID:\t0x%X\n", info->fw_id);
 snd_iprintf(buffer, "Firmware Ver:\t%d\n", info->fw_ver);
 snd_iprintf(buffer, "Base Addr:\t0x%X\n", info->base_addr);
 snd_iprintf(buffer, "Max Size:\t%d\n", info->max_size);
 snd_iprintf(buffer, "Loader Date:\t%.8s\n", (char *)&info->bld_date);
 snd_iprintf(buffer, "Loader Time:\t%.8s\n", (char *)&info->bld_time);

end:
 kfree(info);
}
