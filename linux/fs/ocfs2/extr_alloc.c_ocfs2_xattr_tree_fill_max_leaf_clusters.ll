; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_xattr_tree_fill_max_leaf_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_xattr_tree_fill_max_leaf_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32, i32 }
%struct.super_block = type { i32 }

@OCFS2_MAX_XATTR_TREE_LEAF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*)* @ocfs2_xattr_tree_fill_max_leaf_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xattr_tree_fill_max_leaf_clusters(%struct.ocfs2_extent_tree* %0) #0 {
  %2 = alloca %struct.ocfs2_extent_tree*, align 8
  %3 = alloca %struct.super_block*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %2, align 8
  %4 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %6)
  store %struct.super_block* %7, %struct.super_block** %3, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = load i32, i32* @OCFS2_MAX_XATTR_TREE_LEAF_SIZE, align 4
  %10 = call i32 @ocfs2_clusters_for_bytes(%struct.super_block* %8, i32 %9)
  %11 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  ret void
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
