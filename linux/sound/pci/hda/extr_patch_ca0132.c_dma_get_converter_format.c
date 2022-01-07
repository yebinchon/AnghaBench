
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_engine {unsigned short m_converter_format; } ;



__attribute__((used)) static void dma_get_converter_format(
  struct dma_engine *dma,
  unsigned short *format)
{
 if (format)
  *format = dma->m_converter_format;
}
