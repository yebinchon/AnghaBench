; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_ifork_verify_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_ifork_verify_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_ifork_ops = type { i32* (%struct.xfs_inode*)* }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_ifork_verify_attr(%struct.xfs_inode* %0, %struct.xfs_ifork_ops* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_ifork_ops*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_ifork_ops* %1, %struct.xfs_ifork_ops** %5, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %15 = load i32, i32* @XFS_ATTR_FORK, align 4
  %16 = call i32 @XFS_IFORK_PTR(%struct.xfs_inode* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** @__this_address, align 8
  store i32* %19, i32** %3, align 8
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.xfs_ifork_ops*, %struct.xfs_ifork_ops** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_ifork_ops, %struct.xfs_ifork_ops* %21, i32 0, i32 0
  %23 = load i32* (%struct.xfs_inode*)*, i32* (%struct.xfs_inode*)** %22, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = call i32* %23(%struct.xfs_inode* %24)
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %20, %18, %12
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
