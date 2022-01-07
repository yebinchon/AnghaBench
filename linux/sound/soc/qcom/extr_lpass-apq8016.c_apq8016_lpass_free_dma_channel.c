
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpass_data {int dma_ch_bit_map; } ;


 int clear_bit (int,int *) ;

__attribute__((used)) static int apq8016_lpass_free_dma_channel(struct lpass_data *drvdata, int chan)
{
 clear_bit(chan, &drvdata->dma_ch_bit_map);

 return 0;
}
