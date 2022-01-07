; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_setfilesize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_setfilesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_setfilesize(%struct.xfs_inode* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca %struct.xfs_trans*, align 8
  %10 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %11, i32 0, i32 0
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  store %struct.xfs_mount* %13, %struct.xfs_mount** %8, align 8
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %16 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %14, i32* %17, i32 0, i32 0, i32 0, %struct.xfs_trans** %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @__xfs_setfilesize(%struct.xfs_inode* %24, %struct.xfs_trans* %25, i32 %26, i64 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @__xfs_setfilesize(%struct.xfs_inode*, %struct.xfs_trans*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
