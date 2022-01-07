; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_allfit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_allfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock*, %struct.xfs_mount* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }

@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4
@XFS_ATTR_SF_ENTSIZE_MAX = common dso_local global i64 0, align 8
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_allfit(%struct.xfs_buf* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %12, align 8
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %16, i32 0, i32 0
  %18 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %17, align 8
  store %struct.xfs_attr_leafblock* %18, %struct.xfs_attr_leafblock** %6, align 8
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %23 = call i32 @xfs_attr3_leaf_hdr_from_disk(i32 %21, %struct.xfs_attr3_icleaf_hdr* %9, %struct.xfs_attr_leafblock* %22)
  %24 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %25 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %24)
  store %struct.xfs_attr_leaf_entry* %25, %struct.xfs_attr_leaf_entry** %7, align 8
  store i32 4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %79, %2
  %27 = load i32, i32* %11, align 4
  %28 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %84

31:                                               ; preds = %26
  %32 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %33 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %79

39:                                               ; preds = %31
  %40 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %41 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %109

47:                                               ; preds = %39
  %48 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.TYPE_7__* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock* %48, i32 %49)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XFS_ATTR_SF_ENTSIZE_MAX, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %109

57:                                               ; preds = %47
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @be16_to_cpu(i32 %60)
  %62 = load i64, i64* @XFS_ATTR_SF_ENTSIZE_MAX, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %109

65:                                               ; preds = %57
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 3, %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @be16_to_cpu(i32 %72)
  %74 = add i64 %69, %73
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %65, %38
  %80 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %81 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %80, i32 1
  store %struct.xfs_attr_leaf_entry* %81, %struct.xfs_attr_leaf_entry** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %86 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %84
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %95 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 -1, i32* %3, align 4
  br label %109

105:                                              ; preds = %100, %93, %84
  %106 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @xfs_attr_shortform_bytesfit(%struct.xfs_inode* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %104, %64, %56, %46
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(i32, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local %struct.TYPE_7__* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock*, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_attr_shortform_bytesfit(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
