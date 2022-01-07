; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_add_free_nid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_add_free_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i32 }
%struct.free_nid = type { i64, i32 }
%struct.nat_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@free_nid_slab = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@FREE_NID = common dso_local global i64 0, align 8
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@IS_CHECKPOINTED = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, i32, i32)* @add_free_nid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_free_nid(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f2fs_nm_info*, align 8
  %11 = alloca %struct.free_nid*, align 8
  %12 = alloca %struct.free_nid*, align 8
  %13 = alloca %struct.nat_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %17 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %16)
  store %struct.f2fs_nm_info* %17, %struct.f2fs_nm_info** %10, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %119

26:                                               ; preds = %4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @f2fs_check_nid_range(%struct.f2fs_sb_info* %27, i32 %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %119

33:                                               ; preds = %26
  %34 = load i32, i32* @free_nid_slab, align 4
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.free_nid* @f2fs_kmem_cache_alloc(i32 %34, i32 %35)
  store %struct.free_nid* %36, %struct.free_nid** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.free_nid*, %struct.free_nid** %11, align 8
  %39 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* @FREE_NID, align 8
  %41 = load %struct.free_nid*, %struct.free_nid** %11, align 8
  %42 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = load i32, i32* @__GFP_NOFAIL, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @radix_tree_preload(i32 %45)
  %47 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %10, align 8
  %48 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %33
  %53 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %10, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %53, i32 %54)
  store %struct.nat_entry* %55, %struct.nat_entry** %13, align 8
  %56 = load %struct.nat_entry*, %struct.nat_entry** %13, align 8
  %57 = icmp ne %struct.nat_entry* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.nat_entry*, %struct.nat_entry** %13, align 8
  %60 = load i32, i32* @IS_CHECKPOINTED, align 4
  %61 = call i32 @get_nat_flag(%struct.nat_entry* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.nat_entry*, %struct.nat_entry** %13, align 8
  %65 = call i64 @nat_get_blkaddr(%struct.nat_entry* %64)
  %66 = load i64, i64* @NULL_ADDR, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  br label %89

69:                                               ; preds = %63, %52
  %70 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %10, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.free_nid* @__lookup_free_nid_list(%struct.f2fs_nm_info* %70, i32 %71)
  store %struct.free_nid* %72, %struct.free_nid** %12, align 8
  %73 = load %struct.free_nid*, %struct.free_nid** %12, align 8
  %74 = icmp ne %struct.free_nid* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.free_nid*, %struct.free_nid** %12, align 8
  %77 = getelementptr inbounds %struct.free_nid, %struct.free_nid* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FREE_NID, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %81, %75
  br label %89

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %33
  store i32 1, i32* %15, align 4
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %86 = load %struct.free_nid*, %struct.free_nid** %11, align 8
  %87 = load i64, i64* @FREE_NID, align 8
  %88 = call i32 @__insert_free_nid(%struct.f2fs_sb_info* %85, %struct.free_nid* %86, i64 %87)
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %84, %82, %68
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @update_free_nid_bitmap(%struct.f2fs_sb_info* %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %10, align 8
  %102 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %92
  br label %106

106:                                              ; preds = %105, %89
  %107 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %10, align 8
  %108 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = call i32 (...) @radix_tree_preload_end()
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @free_nid_slab, align 4
  %115 = load %struct.free_nid*, %struct.free_nid** %11, align 8
  %116 = call i32 @kmem_cache_free(i32 %114, %struct.free_nid* %115)
  br label %117

117:                                              ; preds = %113, %106
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %32, %25
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_check_nid_range(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.free_nid* @f2fs_kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @radix_tree_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info*, i32) #1

declare dso_local i32 @get_nat_flag(%struct.nat_entry*, i32) #1

declare dso_local i64 @nat_get_blkaddr(%struct.nat_entry*) #1

declare dso_local %struct.free_nid* @__lookup_free_nid_list(%struct.f2fs_nm_info*, i32) #1

declare dso_local i32 @__insert_free_nid(%struct.f2fs_sb_info*, %struct.free_nid*, i64) #1

declare dso_local i32 @update_free_nid_bitmap(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.free_nid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
