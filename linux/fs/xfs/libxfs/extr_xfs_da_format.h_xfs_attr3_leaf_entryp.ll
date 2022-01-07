; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.h_xfs_attr3_leaf_entryp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.h_xfs_attr3_leaf_entryp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_attr_leaf_entry = type { i32 }
%struct.TYPE_7__ = type { %struct.xfs_attr_leaf_entry*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.xfs_attr3_leafblock = type { %struct.xfs_attr_leaf_entry* }

@XFS_ATTR3_LEAF_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_attr_leaf_entry* (%struct.TYPE_7__*)* @xfs_attr3_leaf_entryp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @XFS_ATTR3_LEAF_MAGIC, align 4
  %10 = call i64 @cpu_to_be16(i32 %9)
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = bitcast %struct.TYPE_7__* %13 to %struct.xfs_attr3_leafblock*
  %15 = getelementptr inbounds %struct.xfs_attr3_leafblock, %struct.xfs_attr3_leafblock* %14, i32 0, i32 0
  %16 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %15, align 8
  %17 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %16, i64 0
  store %struct.xfs_attr_leaf_entry* %17, %struct.xfs_attr_leaf_entry** %2, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %20, align 8
  %22 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %21, i64 0
  store %struct.xfs_attr_leaf_entry* %22, %struct.xfs_attr_leaf_entry** %2, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %2, align 8
  ret %struct.xfs_attr_leaf_entry* %24
}

declare dso_local i64 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
