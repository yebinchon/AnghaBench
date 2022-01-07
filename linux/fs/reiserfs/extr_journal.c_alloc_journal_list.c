
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_journal_list {int j_commit_mutex; int j_bh_list; int j_tail_bh_list; int j_working_list; int j_list; } ;
struct TYPE_2__ {int j_num_lists; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* SB_JOURNAL (struct super_block*) ;
 int __GFP_NOFAIL ;
 int get_journal_list (struct reiserfs_journal_list*) ;
 struct reiserfs_journal_list* kzalloc (int,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct reiserfs_journal_list *alloc_journal_list(struct super_block *s)
{
 struct reiserfs_journal_list *jl;
 jl = kzalloc(sizeof(struct reiserfs_journal_list),
       GFP_NOFS | __GFP_NOFAIL);
 INIT_LIST_HEAD(&jl->j_list);
 INIT_LIST_HEAD(&jl->j_working_list);
 INIT_LIST_HEAD(&jl->j_tail_bh_list);
 INIT_LIST_HEAD(&jl->j_bh_list);
 mutex_init(&jl->j_commit_mutex);
 SB_JOURNAL(s)->j_num_lists++;
 get_journal_list(jl);
 return jl;
}
