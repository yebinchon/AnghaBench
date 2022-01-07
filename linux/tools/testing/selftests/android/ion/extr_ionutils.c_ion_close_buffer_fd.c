
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_buffer_info {scalar_t__ buffd; scalar_t__ ionfd; int buflen; int buffer; } ;


 int close (scalar_t__) ;
 int munmap (int ,int ) ;

void ion_close_buffer_fd(struct ion_buffer_info *ion_info)
{
 if (ion_info) {

  munmap(ion_info->buffer, ion_info->buflen);

  if (ion_info->buffd > 0)
   close(ion_info->buffd);

  if (ion_info->ionfd > 0)
   close(ion_info->ionfd);
 }
}
