
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_logger {int name; } ;


 int NF_LOG_TYPE_MAX ;
 int *** loggers ;
 struct nf_logger* nft_log_dereference (int *) ;
 int strlen (int ) ;
 int strncasecmp (char const*,int ,int ) ;

__attribute__((used)) static struct nf_logger *__find_logger(int pf, const char *str_logger)
{
 struct nf_logger *log;
 int i;

 for (i = 0; i < NF_LOG_TYPE_MAX; i++) {
  if (loggers[pf][i] == ((void*)0))
   continue;

  log = nft_log_dereference(loggers[pf][i]);
  if (!strncasecmp(str_logger, log->name, strlen(log->name)))
   return log;
 }

 return ((void*)0);
}
