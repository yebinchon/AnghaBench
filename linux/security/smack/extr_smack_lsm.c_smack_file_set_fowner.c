
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct file {int dummy; } ;


 struct smack_known** smack_file (struct file*) ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static void smack_file_set_fowner(struct file *file)
{
 struct smack_known **blob = smack_file(file);

 *blob = smk_of_current();
}
