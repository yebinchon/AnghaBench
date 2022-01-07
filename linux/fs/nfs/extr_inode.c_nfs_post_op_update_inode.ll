; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_post_op_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_post_op_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }

@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CTIME = common dso_local global i32 0, align 4
@NFS_INO_REVAL_FORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_post_op_update_inode(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.nfs_fattr*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %10 = call i32 @nfs_fattr_set_barrier(%struct.nfs_fattr* %9)
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load %struct.nfs_fattr*, %struct.nfs_fattr** %4, align 8
  %13 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %14 = load i32, i32* @NFS_INO_INVALID_CTIME, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NFS_INO_REVAL_FORCED, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @nfs_post_op_update_inode_locked(%struct.inode* %11, %struct.nfs_fattr* %12, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nfs_fattr_set_barrier(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_post_op_update_inode_locked(%struct.inode*, %struct.nfs_fattr*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
