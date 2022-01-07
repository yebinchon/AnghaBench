
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_journal_list {int j_refcount; } ;



__attribute__((used)) static inline void get_journal_list(struct reiserfs_journal_list *jl)
{
 jl->j_refcount++;
}
