; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.h_xfs_quota_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm.h_xfs_quota_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.xfs_inode*, %struct.xfs_inode*, %struct.xfs_inode* }

@XFS_DQ_ALLTYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_inode* (%struct.TYPE_5__*, i32)* @xfs_quota_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_inode* @xfs_quota_inode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XFS_DQ_ALLTYPES, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %27 [
    i32 128, label %9
    i32 130, label %15
    i32 129, label %21
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  store %struct.xfs_inode* %14, %struct.xfs_inode** %3, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %19, align 8
  store %struct.xfs_inode* %20, %struct.xfs_inode** %3, align 8
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %25, align 8
  store %struct.xfs_inode* %26, %struct.xfs_inode** %3, align 8
  br label %30

27:                                               ; preds = %2
  %28 = call i32 @ASSERT(i32 0)
  br label %29

29:                                               ; preds = %27
  store %struct.xfs_inode* null, %struct.xfs_inode** %3, align 8
  br label %30

30:                                               ; preds = %29, %21, %15, %9
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  ret %struct.xfs_inode* %31
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
