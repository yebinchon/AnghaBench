; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_ifork_verify_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_ifork_verify_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_ifork_ops = type { i32* (%struct.xfs_inode*)*, i32* (%struct.xfs_inode*)* }
%struct.TYPE_4__ = type { i32 }

@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_ifork_verify_data(%struct.xfs_inode* %0, %struct.xfs_ifork_ops* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_ifork_ops*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_ifork_ops* %1, %struct.xfs_ifork_ops** %5, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %15 = call %struct.TYPE_4__* @VFS_I(%struct.xfs_inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @S_IFMT, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %32 [
    i32 129, label %20
    i32 128, label %26
  ]

20:                                               ; preds = %13
  %21 = load %struct.xfs_ifork_ops*, %struct.xfs_ifork_ops** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_ifork_ops, %struct.xfs_ifork_ops* %21, i32 0, i32 1
  %23 = load i32* (%struct.xfs_inode*)*, i32* (%struct.xfs_inode*)** %22, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = call i32* %23(%struct.xfs_inode* %24)
  store i32* %25, i32** %3, align 8
  br label %33

26:                                               ; preds = %13
  %27 = load %struct.xfs_ifork_ops*, %struct.xfs_ifork_ops** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_ifork_ops, %struct.xfs_ifork_ops* %27, i32 0, i32 0
  %29 = load i32* (%struct.xfs_inode*)*, i32* (%struct.xfs_inode*)** %28, align 8
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %31 = call i32* %29(%struct.xfs_inode* %30)
  store i32* %31, i32** %3, align 8
  br label %33

32:                                               ; preds = %13
  store i32* null, i32** %3, align 8
  br label %33

33:                                               ; preds = %32, %26, %20, %12
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local %struct.TYPE_4__* @VFS_I(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
