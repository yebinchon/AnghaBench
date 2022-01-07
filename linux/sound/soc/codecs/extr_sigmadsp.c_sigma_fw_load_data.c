
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmadsp_data {unsigned int length; int head; int data; int samplerates; int addr; } ;
struct sigmadsp {int data_list; } ;
struct sigma_fw_chunk_data {int data; int addr; } ;
struct sigma_fw_chunk {int samplerates; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct sigmadsp_data* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int ,unsigned int) ;

__attribute__((used)) static int sigma_fw_load_data(struct sigmadsp *sigmadsp,
 const struct sigma_fw_chunk *chunk, unsigned int length)
{
 const struct sigma_fw_chunk_data *data_chunk;
 struct sigmadsp_data *data;

 if (length <= sizeof(*data_chunk))
  return -EINVAL;

 data_chunk = (struct sigma_fw_chunk_data *)chunk;

 length -= sizeof(*data_chunk);

 data = kzalloc(sizeof(*data) + length, GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->addr = le16_to_cpu(data_chunk->addr);
 data->length = length;
 data->samplerates = le32_to_cpu(chunk->samplerates);
 memcpy(data->data, data_chunk->data, length);
 list_add_tail(&data->head, &sigmadsp->data_list);

 return 0;
}
