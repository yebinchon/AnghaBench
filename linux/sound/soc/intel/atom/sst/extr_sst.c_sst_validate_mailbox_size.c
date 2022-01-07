
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SST_MAILBOX_SIZE ;

__attribute__((used)) static inline bool sst_validate_mailbox_size(unsigned int size)
{
 return ((size <= SST_MAILBOX_SIZE) ? 1 : 0);
}
