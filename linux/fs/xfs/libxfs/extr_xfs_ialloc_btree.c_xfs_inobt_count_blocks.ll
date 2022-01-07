; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_count_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_count_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_btree_cur = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, i32*)* @xfs_inobt_count_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_inobt_count_blocks(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.xfs_buf*, align 8
  %13 = alloca %struct.xfs_btree_cur*, align 8
  %14 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %7, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %12, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %13, align 8
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %16 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @xfs_inobt_cur(%struct.xfs_mount* %15, %struct.xfs_trans* %16, i32 %17, i32 %18, %struct.xfs_btree_cur** %13, %struct.xfs_buf** %12)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %35

24:                                               ; preds = %5
  %25 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %13, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @xfs_btree_count_blocks(%struct.xfs_btree_cur* %25, i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %28, i32 %29)
  %31 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %33 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %31, %struct.xfs_buf* %32)
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %24, %22
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @xfs_inobt_cur(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, %struct.xfs_btree_cur**, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_btree_count_blocks(%struct.xfs_btree_cur*, i32*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
