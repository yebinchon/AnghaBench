
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpi_hw_obj {scalar_t__* outstream_host_buffer_size; int * outstream_host_buffers; scalar_t__* instream_host_buffer_size; int * instream_host_buffers; int * p_interface_buffer; int h_locked_mem; int p_cache; int h_control_cache; } ;
struct hpi_adapter_obj {struct hpi_hw_obj* priv; } ;


 int HPI_MAX_STREAMS ;
 int hpi_free_control_cache (int ) ;
 int hpios_locked_mem_free (int *) ;
 scalar_t__ hpios_locked_mem_valid (int *) ;
 int kfree (struct hpi_hw_obj*) ;

__attribute__((used)) static void delete_adapter_obj(struct hpi_adapter_obj *pao)
{
 struct hpi_hw_obj *phw = pao->priv;
 int i;

 if (hpios_locked_mem_valid(&phw->h_control_cache)) {
  hpios_locked_mem_free(&phw->h_control_cache);
  hpi_free_control_cache(phw->p_cache);
 }

 if (hpios_locked_mem_valid(&phw->h_locked_mem)) {
  hpios_locked_mem_free(&phw->h_locked_mem);
  phw->p_interface_buffer = ((void*)0);
 }

 for (i = 0; i < HPI_MAX_STREAMS; i++)
  if (hpios_locked_mem_valid(&phw->instream_host_buffers[i])) {
   hpios_locked_mem_free(&phw->instream_host_buffers[i]);

   phw->instream_host_buffer_size[i] = 0;
  }

 for (i = 0; i < HPI_MAX_STREAMS; i++)
  if (hpios_locked_mem_valid(&phw->outstream_host_buffers[i])) {
   hpios_locked_mem_free(&phw->outstream_host_buffers
    [i]);
   phw->outstream_host_buffer_size[i] = 0;
  }
 kfree(phw);
}
