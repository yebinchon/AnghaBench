
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circ_buf {char* buf; size_t head; } ;


 int ACPI_AML_BUF_SIZE ;

 int ACPI_AML_LOG_STOP ;
 int ACPI_AML_PROMPT_ROLL ;


 char ACPI_DEBUGGER_COMMAND_PROMPT ;
 char ACPI_DEBUGGER_EXECUTE_PROMPT ;
 char acpi_aml_batch_prompt ;
 char acpi_aml_batch_roll ;
 int acpi_aml_exit ;
 int acpi_aml_log_state ;
 int assert (int ) ;
 int circ_space_to_end (struct circ_buf*) ;
 int perror (char*) ;
 int read (int,char*,int) ;

__attribute__((used)) static int acpi_aml_read_batch_log(int fd, struct circ_buf *crc)
{
 char *p;
 int len;
 int ret = 0;

 p = &crc->buf[crc->head];
 len = circ_space_to_end(crc);
 while (ret < len && acpi_aml_log_state != ACPI_AML_LOG_STOP) {
  if (acpi_aml_log_state == ACPI_AML_PROMPT_ROLL) {
   *p = acpi_aml_batch_roll;
   len = 1;
   crc->head = (crc->head + 1) & (ACPI_AML_BUF_SIZE - 1);
   ret += 1;
   acpi_aml_log_state = 130;
  } else {
   len = read(fd, p, 1);
   if (len <= 0) {
    if (len < 0)
     perror("read");
    ret = len;
    break;
   }
  }
  switch (acpi_aml_log_state) {
  case 130:
   if (*p == '\n')
    acpi_aml_log_state = 129;
   crc->head = (crc->head + 1) & (ACPI_AML_BUF_SIZE - 1);
   ret += 1;
   break;
  case 129:
   if (*p == ACPI_DEBUGGER_COMMAND_PROMPT ||
       *p == ACPI_DEBUGGER_EXECUTE_PROMPT) {
    acpi_aml_batch_prompt = *p;
    acpi_aml_log_state = 128;
   } else {
    if (*p != '\n')
     acpi_aml_log_state = 130;
    crc->head = (crc->head + 1) & (ACPI_AML_BUF_SIZE - 1);
    ret += 1;
   }
   break;
  case 128:
   if (*p == ' ') {
    acpi_aml_log_state = ACPI_AML_LOG_STOP;
    acpi_aml_exit = 1;
   } else {

    acpi_aml_log_state = ACPI_AML_PROMPT_ROLL;
    acpi_aml_batch_roll = *p;
    *p = acpi_aml_batch_prompt;
    crc->head = (crc->head + 1) & (ACPI_AML_BUF_SIZE - 1);
    ret += 1;
   }
   break;
  default:
   assert(0);
   break;
  }
 }
 return ret;
}
