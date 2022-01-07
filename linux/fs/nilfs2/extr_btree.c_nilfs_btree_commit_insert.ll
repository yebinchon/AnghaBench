; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_commit_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_commit_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 (%struct.nilfs_bmap.0*, %struct.nilfs_btree_path*, i32, i64*, i64*)*, %struct.TYPE_2__ }
%struct.nilfs_bmap.0 = type opaque
%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@NILFS_BTREE_LEVEL_DATA = common dso_local global i64 0, align 8
@NILFS_BTREE_LEVEL_NODE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i64, i64)* @nilfs_btree_commit_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_commit_insert(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = inttoptr i64 %13 to %struct.buffer_head*
  %15 = call i32 @set_buffer_nilfs_volatile(%struct.buffer_head* %14)
  %16 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %17 = load i64, i64* @NILFS_BTREE_LEVEL_DATA, align 8
  %18 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %16, i64 %17
  %19 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %23 = call i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @nilfs_bmap_set_target_v(%struct.nilfs_bmap* %26, i64 %27, i64 %28)
  %30 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %31 = call %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap* %30)
  store %struct.inode* %31, %struct.inode** %11, align 8
  br label %32

32:                                               ; preds = %25, %5
  %33 = load i32, i32* @NILFS_BTREE_LEVEL_NODE_MIN, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %59, %32
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %40 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %40, i64 %43
  %45 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %44, i32 0, i32 1
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = call i32 @nilfs_bmap_commit_alloc_ptr(%struct.nilfs_bmap* %39, %struct.TYPE_2__* %45, %struct.inode* %46)
  %48 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %48, i64 %50
  %52 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %51, i32 0, i32 0
  %53 = load i32 (%struct.nilfs_bmap.0*, %struct.nilfs_btree_path*, i32, i64*, i64*)*, i32 (%struct.nilfs_bmap.0*, %struct.nilfs_btree_path*, i32, i64*, i64*)** %52, align 8
  %54 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %55 = bitcast %struct.nilfs_bmap* %54 to %struct.nilfs_bmap.0*
  %56 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 %53(%struct.nilfs_bmap.0* %55, %struct.nilfs_btree_path* %56, i32 %57, i64* %9, i64* %10)
  br label %59

59:                                               ; preds = %38
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %64 = call i32 @nilfs_bmap_dirty(%struct.nilfs_bmap* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %68 = call i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap* %67)
  br label %69

69:                                               ; preds = %66, %62
  ret void
}

declare dso_local i32 @set_buffer_nilfs_volatile(%struct.buffer_head*) #1

declare dso_local i64 @NILFS_BMAP_USE_VBN(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_target_v(%struct.nilfs_bmap*, i64, i64) #1

declare dso_local %struct.inode* @nilfs_bmap_get_dat(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_commit_alloc_ptr(%struct.nilfs_bmap*, %struct.TYPE_2__*, %struct.inode*) #1

declare dso_local i32 @nilfs_bmap_dirty(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_bmap_set_dirty(%struct.nilfs_bmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
