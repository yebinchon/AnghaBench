; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leaf_lasthash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leaf_lasthash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)* }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir2_leaf = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i64, i32 }
%struct.xfs_buf = type { %struct.xfs_dir2_leaf* }

@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_lasthash(%struct.xfs_inode* %0, %struct.xfs_buf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_dir2_leaf*, align 8
  %9 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %10 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 0
  %13 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %12, align 8
  store %struct.xfs_dir2_leaf* %13, %struct.xfs_dir2_leaf** %8, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf*)** %17, align 8
  %19 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %8, align 8
  %20 = call i32 %18(%struct.xfs_dir3_icleaf_hdr* %10, %struct.xfs_dir2_leaf* %19)
  %21 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XFS_DIR3_LEAFN_MAGIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XFS_DIR3_LEAF1_MAGIC, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %35, %30, %25, %3
  %41 = phi i1 [ true, %30 ], [ true, %25 ], [ true, %3 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %72

55:                                               ; preds = %50
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %57 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)*, %struct.xfs_dir2_leaf_entry* (%struct.xfs_dir2_leaf*)** %59, align 8
  %61 = load %struct.xfs_dir2_leaf*, %struct.xfs_dir2_leaf** %8, align 8
  %62 = call %struct.xfs_dir2_leaf_entry* %60(%struct.xfs_dir2_leaf* %61)
  store %struct.xfs_dir2_leaf_entry* %62, %struct.xfs_dir2_leaf_entry** %9, align 8
  %63 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  %64 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %63, i64 %67
  %69 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %55, %54
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
