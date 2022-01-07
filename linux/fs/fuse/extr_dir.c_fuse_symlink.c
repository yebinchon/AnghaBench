
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fuse_conn {int dummy; } ;
struct TYPE_6__ {int len; char const* name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_8__ {int in_numargs; TYPE_2__* in_args; int opcode; } ;
struct TYPE_7__ {int size; char const* value; } ;


 int FUSE_ARGS (TYPE_3__) ;
 int FUSE_SYMLINK ;
 int S_IFLNK ;
 TYPE_3__ args ;
 int create_new_entry (struct fuse_conn*,TYPE_3__*,struct inode*,struct dentry*,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int strlen (char const*) ;

__attribute__((used)) static int fuse_symlink(struct inode *dir, struct dentry *entry,
   const char *link)
{
 struct fuse_conn *fc = get_fuse_conn(dir);
 unsigned len = strlen(link) + 1;
 FUSE_ARGS(args);

 args.opcode = FUSE_SYMLINK;
 args.in_numargs = 2;
 args.in_args[0].size = entry->d_name.len + 1;
 args.in_args[0].value = entry->d_name.name;
 args.in_args[1].size = len;
 args.in_args[1].value = link;
 return create_new_entry(fc, &args, dir, entry, S_IFLNK);
}
