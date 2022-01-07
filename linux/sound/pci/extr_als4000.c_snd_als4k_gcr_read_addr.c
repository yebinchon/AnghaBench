
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum als4k_gcr_t { ____Placeholder_als4k_gcr_t } als4k_gcr_t ;


 int ALS4K_IOB_0C_GCR_INDEX ;
 int ALS4K_IOD_08_GCR_DATA ;
 int snd_als4k_iobase_readl (unsigned long,int ) ;
 int snd_als4k_iobase_writeb (unsigned long,int ,int) ;

__attribute__((used)) static inline u32 snd_als4k_gcr_read_addr(unsigned long iobase,
       enum als4k_gcr_t reg)
{

 snd_als4k_iobase_writeb(iobase, ALS4K_IOB_0C_GCR_INDEX, reg);
 return snd_als4k_iobase_readl(iobase, ALS4K_IOD_08_GCR_DATA);
}
