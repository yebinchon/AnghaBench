; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_prepare_shift.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_prepare_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }

@NULLFILEOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i32)* @xfs_prepare_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_prepare_shift(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %8 = call i64 @xfs_can_free_eofblocks(%struct.xfs_inode* %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call i32 @xfs_free_eofblocks(%struct.xfs_inode* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %22 = call i32 @XFS_ISIZE(%struct.xfs_inode* %21)
  %23 = call i32 @xfs_flush_unmap_range(%struct.xfs_inode* %19, i32 %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %30 = call i64 @xfs_inode_has_cow_data(%struct.xfs_inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NULLFILEOFF, align 4
  %36 = call i32 @xfs_reflink_cancel_cow_range(%struct.xfs_inode* %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %28
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %26, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @xfs_can_free_eofblocks(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_free_eofblocks(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_flush_unmap_range(%struct.xfs_inode*, i32, i32) #1

declare dso_local i32 @XFS_ISIZE(%struct.xfs_inode*) #1

declare dso_local i64 @xfs_inode_has_cow_data(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_reflink_cancel_cow_range(%struct.xfs_inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
