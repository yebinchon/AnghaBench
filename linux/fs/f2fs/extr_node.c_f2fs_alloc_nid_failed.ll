; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_alloc_nid_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_alloc_nid_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i32 }
%struct.free_nid = type { i32 }

@FREE_NIDS = common dso_local global i32 0, align 4
@PREALLOC_NID = common dso_local global i32 0, align 4
@FREE_NID = common dso_local global i32 0, align 4
@free_nid_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_nm_info*, align 8
  %6 = alloca %struct.free_nid*, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %8)
  store %struct.f2fs_nm_info* %9, %struct.f2fs_nm_info** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %58

13:                                               ; preds = %2
  %14 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %15 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.free_nid* @__lookup_free_nid_list(%struct.f2fs_nm_info* %17, i32 %18)
  store %struct.free_nid* %19, %struct.free_nid** %6, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %22 = icmp ne %struct.free_nid* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %20, i32 %24)
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %27 = load i32, i32* @FREE_NIDS, align 4
  %28 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %13
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %33 = load i32, i32* @PREALLOC_NID, align 4
  %34 = call i32 @__remove_free_nid(%struct.f2fs_sb_info* %31, %struct.free_nid* %32, i32 %33)
  store i32 1, i32* %7, align 4
  br label %41

35:                                               ; preds = %13
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %37 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %38 = load i32, i32* @PREALLOC_NID, align 4
  %39 = load i32, i32* @FREE_NID, align 4
  %40 = call i32 @__move_free_nid(%struct.f2fs_sb_info* %36, %struct.free_nid* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %43 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @update_free_nid_bitmap(%struct.f2fs_sb_info* %46, i32 %47, i32 1, i32 0)
  %49 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %50 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %41
  %55 = load i32, i32* @free_nid_slab, align 4
  %56 = load %struct.free_nid*, %struct.free_nid** %6, align 8
  %57 = call i32 @kmem_cache_free(i32 %55, %struct.free_nid* %56)
  br label %58

58:                                               ; preds = %12, %54, %41
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.free_nid* @__lookup_free_nid_list(%struct.f2fs_nm_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_available_free_memory(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__remove_free_nid(%struct.f2fs_sb_info*, %struct.free_nid*, i32) #1

declare dso_local i32 @__move_free_nid(%struct.f2fs_sb_info*, %struct.free_nid*, i32, i32) #1

declare dso_local i32 @update_free_nid_bitmap(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.free_nid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
