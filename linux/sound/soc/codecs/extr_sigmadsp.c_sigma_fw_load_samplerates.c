
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; unsigned int* list; } ;
struct sigmadsp {TYPE_1__ rate_constraints; } ;
struct sigma_fw_chunk_samplerate {int * samplerates; } ;
struct sigma_fw_chunk {int dummy; } ;
typedef int __le32 ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int* kcalloc (unsigned int,int,int ) ;
 unsigned int le32_to_cpu (int ) ;

__attribute__((used)) static int sigma_fw_load_samplerates(struct sigmadsp *sigmadsp,
 const struct sigma_fw_chunk *chunk, unsigned int length)
{
 const struct sigma_fw_chunk_samplerate *rate_chunk;
 unsigned int num_rates;
 unsigned int *rates;
 unsigned int i;

 rate_chunk = (const struct sigma_fw_chunk_samplerate *)chunk;

 num_rates = (length - sizeof(*rate_chunk)) / sizeof(__le32);

 if (num_rates > 32 || num_rates == 0)
  return -EINVAL;


 if (sigmadsp->rate_constraints.count)
  return -EINVAL;

 rates = kcalloc(num_rates, sizeof(*rates), GFP_KERNEL);
 if (!rates)
  return -ENOMEM;

 for (i = 0; i < num_rates; i++)
  rates[i] = le32_to_cpu(rate_chunk->samplerates[i]);

 sigmadsp->rate_constraints.count = num_rates;
 sigmadsp->rate_constraints.list = rates;

 return 0;
}
