; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_extent_list = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reserve_new_metadata(%struct.ocfs2_super* %0, %struct.ocfs2_extent_list* %1, %struct.ocfs2_alloc_context** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_extent_list*, align 8
  %6 = alloca %struct.ocfs2_alloc_context**, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %5, align 8
  store %struct.ocfs2_alloc_context** %2, %struct.ocfs2_alloc_context*** %6, align 8
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %8 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %9 = call i32 @ocfs2_extend_meta_needed(%struct.ocfs2_extent_list* %8)
  %10 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %11 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %7, i32 %9, %struct.ocfs2_alloc_context** %10)
  ret i32 %11
}

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @ocfs2_extend_meta_needed(%struct.ocfs2_extent_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
