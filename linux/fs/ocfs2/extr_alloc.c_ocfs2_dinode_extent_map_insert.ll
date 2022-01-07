; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_dinode_extent_map_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_dinode_extent_map_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*)* @ocfs2_dinode_extent_map_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dinode_extent_map_insert(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_rec* %1) #0 {
  %3 = alloca %struct.ocfs2_extent_tree*, align 8
  %4 = alloca %struct.ocfs2_extent_rec*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %3, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %4, align 8
  %6 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* @cache_info_to_inode(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %4, align 8
  %13 = call i32 @ocfs2_extent_map_insert_rec(%struct.inode* %11, %struct.ocfs2_extent_rec* %12)
  ret void
}

declare dso_local %struct.TYPE_2__* @cache_info_to_inode(i32) #1

declare dso_local i32 @ocfs2_extent_map_insert_rec(%struct.inode*, %struct.ocfs2_extent_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
