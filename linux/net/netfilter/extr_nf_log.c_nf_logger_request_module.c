
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nf_log_type { ____Placeholder_nf_log_type } nf_log_type ;


 int *** loggers ;
 int request_module (char*,int,int) ;

void nf_logger_request_module(int pf, enum nf_log_type type)
{
 if (loggers[pf][type] == ((void*)0))
  request_module("nf-logger-%u-%u", pf, type);
}
