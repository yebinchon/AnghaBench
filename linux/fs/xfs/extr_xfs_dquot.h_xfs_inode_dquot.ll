; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.h_xfs_inode_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.h_xfs_inode_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32*, i32*, i32* }

@XFS_DQ_ALLTYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xfs_inode*, i32)* @xfs_inode_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xfs_inode_dquot(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XFS_DQ_ALLTYPES, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 130, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %2
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %3, align 8
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %3, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %3, align 8
  br label %22

21:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %22

22:                                               ; preds = %21, %17, %13, %9
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
