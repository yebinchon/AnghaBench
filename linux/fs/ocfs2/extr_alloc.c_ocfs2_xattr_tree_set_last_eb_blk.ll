; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_xattr_tree_set_last_eb_blk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_xattr_tree_set_last_eb_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.ocfs2_xattr_block* }
%struct.ocfs2_xattr_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ocfs2_xattr_tree_root }
%struct.ocfs2_xattr_tree_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*, i32)* @ocfs2_xattr_tree_set_last_eb_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xattr_tree_set_last_eb_blk(%struct.ocfs2_extent_tree* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_xattr_block*, align 8
  %6 = alloca %struct.ocfs2_xattr_tree_root*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %7, i32 0, i32 0
  %9 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %8, align 8
  store %struct.ocfs2_xattr_block* %9, %struct.ocfs2_xattr_block** %5, align 8
  %10 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %5, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ocfs2_xattr_tree_root* %12, %struct.ocfs2_xattr_tree_root** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @cpu_to_le64(i32 %13)
  %15 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
