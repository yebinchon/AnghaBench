; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.c_xfs_qm_need_dqattach.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.c_xfs_qm_need_dqattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*)* @xfs_qm_need_dqattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_qm_need_dqattach(%struct.xfs_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  %5 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %5, i32 0, i32 1
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  store %struct.xfs_mount* %7, %struct.xfs_mount** %4, align 8
  %8 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %9 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %14 = call i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %20 = call i32 @XFS_NOT_DQATTACHED(%struct.xfs_mount* %18, %struct.xfs_inode* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %24, i32 0, i32 0
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @xfs_is_quota_inode(i32* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

32:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %22, %16, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_NOT_DQATTACHED(%struct.xfs_mount*, %struct.xfs_inode*) #1

declare dso_local i64 @xfs_is_quota_inode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
