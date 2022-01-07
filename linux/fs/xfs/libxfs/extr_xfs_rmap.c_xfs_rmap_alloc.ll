; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_owner_info = type { i32 }
%struct.xfs_btree_cur = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rmap_alloc(%struct.xfs_trans* %0, %struct.xfs_buf* %1, i32 %2, i32 %3, i32 %4, %struct.xfs_owner_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_owner_info*, align 8
  %14 = alloca %struct.xfs_mount*, align 8
  %15 = alloca %struct.xfs_btree_cur*, align 8
  %16 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %8, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.xfs_owner_info* %5, %struct.xfs_owner_info** %13, align 8
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %18 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %17, i32 0, i32 0
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %18, align 8
  store %struct.xfs_mount* %19, %struct.xfs_mount** %14, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 0
  %22 = call i32 @xfs_sb_version_hasrmapbt(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %40

25:                                               ; preds = %6
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.xfs_btree_cur* @xfs_rmapbt_init_cursor(%struct.xfs_mount* %26, %struct.xfs_trans* %27, %struct.xfs_buf* %28, i32 %29)
  store %struct.xfs_btree_cur* %30, %struct.xfs_btree_cur** %15, align 8
  %31 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %15, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.xfs_owner_info*, %struct.xfs_owner_info** %13, align 8
  %35 = call i32 @xfs_rmap_map(%struct.xfs_btree_cur* %31, i32 %32, i32 %33, i32 0, %struct.xfs_owner_info* %34)
  store i32 %35, i32* %16, align 4
  %36 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %36, i32 %37)
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %25, %24
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @xfs_sb_version_hasrmapbt(i32*) #1

declare dso_local %struct.xfs_btree_cur* @xfs_rmapbt_init_cursor(%struct.xfs_mount*, %struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_rmap_map(%struct.xfs_btree_cur*, i32, i32, i32, %struct.xfs_owner_info*) #1

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
