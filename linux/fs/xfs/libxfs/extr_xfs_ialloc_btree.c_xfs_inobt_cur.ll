; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_cur.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc_btree.c_xfs_inobt_cur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_btree_cur = type { i32 }
%struct.xfs_buf = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inobt_cur(%struct.xfs_mount* %0, %struct.xfs_trans* %1, i32 %2, i32 %3, %struct.xfs_btree_cur** %4, %struct.xfs_buf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca %struct.xfs_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_btree_cur**, align 8
  %13 = alloca %struct.xfs_buf**, align 8
  %14 = alloca %struct.xfs_btree_cur*, align 8
  %15 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %8, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.xfs_btree_cur** %4, %struct.xfs_btree_cur*** %12, align 8
  store %struct.xfs_buf** %5, %struct.xfs_buf*** %13, align 8
  %16 = load %struct.xfs_buf**, %struct.xfs_buf*** %13, align 8
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %18 = icmp eq %struct.xfs_buf* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %12, align 8
  %22 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %21, align 8
  %23 = icmp eq %struct.xfs_btree_cur* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.xfs_buf**, %struct.xfs_buf*** %13, align 8
  %30 = call i32 @xfs_ialloc_read_agi(%struct.xfs_mount* %26, %struct.xfs_trans* %27, i32 %28, %struct.xfs_buf** %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %56

35:                                               ; preds = %6
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %37 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %38 = load %struct.xfs_buf**, %struct.xfs_buf*** %13, align 8
  %39 = load %struct.xfs_buf*, %struct.xfs_buf** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call %struct.xfs_btree_cur* @xfs_inobt_init_cursor(%struct.xfs_mount* %36, %struct.xfs_trans* %37, %struct.xfs_buf* %39, i32 %40, i32 %41)
  store %struct.xfs_btree_cur* %42, %struct.xfs_btree_cur** %14, align 8
  %43 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %14, align 8
  %44 = icmp ne %struct.xfs_btree_cur* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %35
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %47 = load %struct.xfs_buf**, %struct.xfs_buf*** %13, align 8
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %47, align 8
  %49 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %46, %struct.xfs_buf* %48)
  %50 = load %struct.xfs_buf**, %struct.xfs_buf*** %13, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %50, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %56

53:                                               ; preds = %35
  %54 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %14, align 8
  %55 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %12, align 8
  store %struct.xfs_btree_cur* %54, %struct.xfs_btree_cur** %55, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %45, %33
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ialloc_read_agi(%struct.xfs_mount*, %struct.xfs_trans*, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_btree_cur* @xfs_inobt_init_cursor(%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
