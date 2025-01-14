
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {char* buf; size_t tail; } ;


 int ACPI_AML_BUF_SIZE ;
 int acpi_aml_batch_drain ;
 int circ_count_to_end (struct circ_buf*) ;
 int perror (char*) ;
 int write (int,char*,int) ;

__attribute__((used)) static int acpi_aml_write_batch_log(int fd, struct circ_buf *crc)
{
 char *p;
 int len;

 p = &crc->buf[crc->tail];
 len = circ_count_to_end(crc);
 if (!acpi_aml_batch_drain) {
  len = write(fd, p, len);
  if (len < 0)
   perror("write");
 }
 if (len > 0)
  crc->tail = (crc->tail + len) & (ACPI_AML_BUF_SIZE - 1);
 return len;
}
