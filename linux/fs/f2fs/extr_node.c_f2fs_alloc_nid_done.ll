; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_alloc_nid_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_alloc_nid_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32 }
%struct.free_nid = type { i32 }

@PREALLOC_NID = common dso_local global i32 0, align 4
@free_nid_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_nm_info*, align 8
  %6 = alloca %struct.free_nid*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %7)
  store %struct.f2fs_nm_info* %8, %struct.f2fs_nm_info** %5, align 8
  %9 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %10 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.free_nid* @__lookup_free_nid_list(%struct.f2fs_nm_info* %12, i32 %13)
  store %struct.free_nid* %14, %struct.free_nid** %6, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %17 = icmp ne %struct.free_nid* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %15, i32 %19)
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %22 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %23 = load i32, i32* @PREALLOC_NID, align 4
  %24 = call i32 @__remove_free_nid(%struct.f2fs_sb_info* %21, %struct.free_nid* %22, i32 %23)
  %25 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %26 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* @free_nid_slab, align 4
  %29 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %30 = call i32 @kmem_cache_free(i32 %28, %struct.free_nid* %29)
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.free_nid* @__lookup_free_nid_list(%struct.f2fs_nm_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__remove_free_nid(%struct.f2fs_sb_info*, %struct.free_nid*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.free_nid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
