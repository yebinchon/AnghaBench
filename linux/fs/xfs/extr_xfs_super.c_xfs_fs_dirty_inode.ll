; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_fs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_super.c_xfs_fs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SB_LAZYTIME = common dso_local global i32 0, align 4
@I_DIRTY_SYNC = common dso_local global i32 0, align 4
@I_DIRTY_TIME = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOG_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32)* @xfs_fs_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_fs_dirty_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.xfs_inode* @XFS_I(%struct.inode* %8)
  store %struct.xfs_inode* %9, %struct.xfs_inode** %5, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 0
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SB_LAZYTIME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %56

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @I_DIRTY_SYNC, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I_DIRTY_TIME, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %22
  br label %56

34:                                               ; preds = %26
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %37 = call %struct.TYPE_4__* @M_RES(%struct.xfs_mount* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i64 @xfs_trans_alloc(%struct.xfs_mount* %35, i32* %38, i32 0, i32 0, i32 0, %struct.xfs_trans** %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %44 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %45 = call i32 @xfs_ilock(%struct.xfs_inode* %43, i32 %44)
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %48 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %49 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %46, %struct.xfs_inode* %47, i32 %48)
  %50 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %52 = load i32, i32* @XFS_ILOG_TIMESTAMP, align 4
  %53 = call i32 @xfs_trans_log_inode(%struct.xfs_trans* %50, %struct.xfs_inode* %51, i32 %52)
  %54 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %55 = call i32 @xfs_trans_commit(%struct.xfs_trans* %54)
  br label %56

56:                                               ; preds = %42, %41, %33, %21
  ret void
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_4__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
