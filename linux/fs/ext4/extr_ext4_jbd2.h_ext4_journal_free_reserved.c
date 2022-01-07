
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 scalar_t__ ext4_handle_valid (int *) ;
 int jbd2_journal_free_reserved (int *) ;

__attribute__((used)) static inline void ext4_journal_free_reserved(handle_t *handle)
{
 if (ext4_handle_valid(handle))
  jbd2_journal_free_reserved(handle);
}
