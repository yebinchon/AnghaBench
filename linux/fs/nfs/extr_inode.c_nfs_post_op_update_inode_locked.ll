; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_post_op_update_inode_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_inode.c_nfs_post_op_update_inode_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs_fattr = type { i32 }

@NFS_INO_INVALID_DATA = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fattr*, i32)* @nfs_post_op_update_inode_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_post_op_update_inode_locked(%struct.inode* %0, %struct.nfs_fattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs_fattr*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @S_ISDIR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @NFS_INO_INVALID_DATA, align 4
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @nfs_set_cache_invalid(%struct.inode* %18, i32 %19)
  %21 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %22 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %32

28:                                               ; preds = %17
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = load %struct.nfs_fattr*, %struct.nfs_fattr** %6, align 8
  %31 = call i32 @nfs_refresh_inode_locked(%struct.inode* %29, %struct.nfs_fattr* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @nfs_set_cache_invalid(%struct.inode*, i32) #1

declare dso_local i32 @nfs_refresh_inode_locked(%struct.inode*, %struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
