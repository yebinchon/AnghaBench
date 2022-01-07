
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmadsp_control {char* name; unsigned int num_bytes; int head; int samplerates; void* addr; } ;
struct sigmadsp {int ctrl_list; } ;
struct sigma_fw_chunk_control {int addr; int name; int num_bytes; } ;
struct sigma_fw_chunk {int samplerates; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int kfree (struct sigmadsp_control*) ;
 void* kzalloc (size_t,int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (char*,int ,size_t) ;
 int sigma_fw_validate_control_name (int ,size_t) ;

__attribute__((used)) static int sigma_fw_load_control(struct sigmadsp *sigmadsp,
 const struct sigma_fw_chunk *chunk, unsigned int length)
{
 const struct sigma_fw_chunk_control *ctrl_chunk;
 struct sigmadsp_control *ctrl;
 unsigned int num_bytes;
 size_t name_len;
 char *name;
 int ret;

 if (length <= sizeof(*ctrl_chunk))
  return -EINVAL;

 ctrl_chunk = (const struct sigma_fw_chunk_control *)chunk;

 name_len = length - sizeof(*ctrl_chunk);
 if (name_len >= SNDRV_CTL_ELEM_ID_NAME_MAXLEN)
  name_len = SNDRV_CTL_ELEM_ID_NAME_MAXLEN - 1;


 if (!sigma_fw_validate_control_name(ctrl_chunk->name, name_len))
  return -EINVAL;

 num_bytes = le16_to_cpu(ctrl_chunk->num_bytes);
 ctrl = kzalloc(sizeof(*ctrl) + num_bytes, GFP_KERNEL);
 if (!ctrl)
  return -ENOMEM;

 name = kzalloc(name_len + 1, GFP_KERNEL);
 if (!name) {
  ret = -ENOMEM;
  goto err_free_ctrl;
 }
 memcpy(name, ctrl_chunk->name, name_len);
 name[name_len] = '\0';
 ctrl->name = name;

 ctrl->addr = le16_to_cpu(ctrl_chunk->addr);
 ctrl->num_bytes = num_bytes;
 ctrl->samplerates = le32_to_cpu(chunk->samplerates);

 list_add_tail(&ctrl->head, &sigmadsp->ctrl_list);

 return 0;

err_free_ctrl:
 kfree(ctrl);

 return ret;
}
