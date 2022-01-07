
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uuid_module {int id; int max_instance; int is_loadable; int uuid; int list; int instance_id; } ;
struct sst_dsp {int dev; struct skl_dev* thread_context; } ;
struct skl_dev {int uuid_list; } ;
struct firmware {char* data; unsigned int size; } ;
struct TYPE_2__ {int load_type; } ;
struct adsp_module_entry {int instance_max_count; TYPE_1__ type; int uuid; } ;
struct adsp_fw_hdr {int len; int num_modules; } ;
typedef int guid_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,int *,int,int ) ;
 int dev_err (int ,char*) ;
 int devm_kzalloc (int ,int,int ) ;
 int guid_copy (int *,int *) ;
 struct uuid_module* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int skl_dsp_strip_extended_manifest (struct firmware*) ;
 int skl_freeup_uuid_list (struct skl_dev*) ;

int snd_skl_parse_uuids(struct sst_dsp *ctx, const struct firmware *fw,
   unsigned int offset, int index)
{
 struct adsp_fw_hdr *adsp_hdr;
 struct adsp_module_entry *mod_entry;
 int i, num_entry, size;
 const char *buf;
 struct skl_dev *skl = ctx->thread_context;
 struct uuid_module *module;
 struct firmware stripped_fw;
 unsigned int safe_file;
 int ret = 0;


 stripped_fw.data = fw->data;
 stripped_fw.size = fw->size;

 skl_dsp_strip_extended_manifest(&stripped_fw);

 buf = stripped_fw.data;


 safe_file = sizeof(*adsp_hdr) + offset;
 if (stripped_fw.size <= safe_file) {
  dev_err(ctx->dev, "Small fw file size, No space for hdr\n");
  return -EINVAL;
 }

 adsp_hdr = (struct adsp_fw_hdr *)(buf + offset);


 safe_file += adsp_hdr->len + sizeof(*mod_entry);
 if (stripped_fw.size <= safe_file) {
  dev_err(ctx->dev, "Small fw file size, No module entry\n");
  return -EINVAL;
 }

 mod_entry = (struct adsp_module_entry *)(buf + offset + adsp_hdr->len);

 num_entry = adsp_hdr->num_modules;


 safe_file += num_entry * sizeof(*mod_entry);
 if (stripped_fw.size <= safe_file) {
  dev_err(ctx->dev, "Small fw file size, No modules\n");
  return -EINVAL;
 }
 for (i = 0; i < num_entry; i++, mod_entry++) {
  module = kzalloc(sizeof(*module), GFP_KERNEL);
  if (!module) {
   ret = -ENOMEM;
   goto free_uuid_list;
  }

  guid_copy(&module->uuid, (guid_t *)&mod_entry->uuid);

  module->id = (i | (index << 12));
  module->is_loadable = mod_entry->type.load_type;
  module->max_instance = mod_entry->instance_max_count;
  size = sizeof(int) * mod_entry->instance_max_count;
  module->instance_id = devm_kzalloc(ctx->dev, size, GFP_KERNEL);
  if (!module->instance_id) {
   ret = -ENOMEM;
   goto free_uuid_list;
  }

  list_add_tail(&module->list, &skl->uuid_list);

  dev_dbg(ctx->dev,
   "Adding uuid :%pUL   mod id: %d  Loadable: %d\n",
   &module->uuid, module->id, module->is_loadable);
 }

 return 0;

free_uuid_list:
 skl_freeup_uuid_list(skl);
 return ret;
}
