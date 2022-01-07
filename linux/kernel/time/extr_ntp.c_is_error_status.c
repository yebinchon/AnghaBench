
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STA_CLOCKERR ;
 int STA_UNSYNC ;

__attribute__((used)) static inline int is_error_status(int status)
{
 return status & (STA_UNSYNC|STA_CLOCKERR);
}
