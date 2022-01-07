; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_unuse_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MM_SWAPENTS = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i32*, i64, i32, %struct.page*)* @unuse_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unuse_pte(%struct.vm_area_struct* %0, i32* %1, i64 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.mem_cgroup*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.page* %4, %struct.page** %11, align 8
  store i32 1, i32* %16, align 4
  %17 = load %struct.page*, %struct.page** %11, align 8
  store %struct.page* %17, %struct.page** %12, align 8
  %18 = load %struct.page*, %struct.page** %11, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call %struct.page* @ksm_might_need_to_copy(%struct.page* %18, %struct.vm_area_struct* %19, i64 %20)
  store %struct.page* %21, %struct.page** %11, align 8
  %22 = load %struct.page*, %struct.page** %11, align 8
  %23 = icmp ne %struct.page* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %130

31:                                               ; preds = %5
  %32 = load %struct.page*, %struct.page** %11, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %34 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i64 @mem_cgroup_try_charge(%struct.page* %32, i32 %35, i32 %36, %struct.mem_cgroup** %13, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %16, align 4
  br label %119

42:                                               ; preds = %31
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32* @pte_offset_map_lock(i32 %45, i32* %46, i64 %47, i32** %14)
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @swp_entry_to_pte(i32 %51)
  %53 = call i32 @pte_same_as_swp(i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %42
  %60 = load %struct.page*, %struct.page** %11, align 8
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %13, align 8
  %62 = call i32 @mem_cgroup_cancel_charge(%struct.page* %60, %struct.mem_cgroup* %61, i32 0)
  store i32 0, i32* %16, align 4
  br label %115

63:                                               ; preds = %42
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MM_SWAPENTS, align 4
  %68 = call i32 @dec_mm_counter(i32 %66, i32 %67)
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MM_ANONPAGES, align 4
  %73 = call i32 @inc_mm_counter(i32 %71, i32 %72)
  %74 = load %struct.page*, %struct.page** %11, align 8
  %75 = call i32 @get_page(%struct.page* %74)
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %77 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load %struct.page*, %struct.page** %11, align 8
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mk_pte(%struct.page* %81, i32 %84)
  %86 = call i32 @pte_mkold(i32 %85)
  %87 = call i32 @set_pte_at(i32 %78, i64 %79, i32* %80, i32 %86)
  %88 = load %struct.page*, %struct.page** %11, align 8
  %89 = load %struct.page*, %struct.page** %12, align 8
  %90 = icmp eq %struct.page* %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %63
  %92 = load %struct.page*, %struct.page** %11, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @page_add_anon_rmap(%struct.page* %92, %struct.vm_area_struct* %93, i64 %94, i32 0)
  %96 = load %struct.page*, %struct.page** %11, align 8
  %97 = load %struct.mem_cgroup*, %struct.mem_cgroup** %13, align 8
  %98 = call i32 @mem_cgroup_commit_charge(%struct.page* %96, %struct.mem_cgroup* %97, i32 1, i32 0)
  br label %110

99:                                               ; preds = %63
  %100 = load %struct.page*, %struct.page** %11, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @page_add_new_anon_rmap(%struct.page* %100, %struct.vm_area_struct* %101, i64 %102, i32 0)
  %104 = load %struct.page*, %struct.page** %11, align 8
  %105 = load %struct.mem_cgroup*, %struct.mem_cgroup** %13, align 8
  %106 = call i32 @mem_cgroup_commit_charge(%struct.page* %104, %struct.mem_cgroup* %105, i32 0, i32 0)
  %107 = load %struct.page*, %struct.page** %11, align 8
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %109 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %107, %struct.vm_area_struct* %108)
  br label %110

110:                                              ; preds = %99, %91
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @swap_free(i32 %111)
  %113 = load %struct.page*, %struct.page** %11, align 8
  %114 = call i32 @activate_page(%struct.page* %113)
  br label %115

115:                                              ; preds = %110, %59
  %116 = load i32*, i32** %15, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @pte_unmap_unlock(i32* %116, i32* %117)
  br label %119

119:                                              ; preds = %115, %39
  %120 = load %struct.page*, %struct.page** %11, align 8
  %121 = load %struct.page*, %struct.page** %12, align 8
  %122 = icmp ne %struct.page* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.page*, %struct.page** %11, align 8
  %125 = call i32 @unlock_page(%struct.page* %124)
  %126 = load %struct.page*, %struct.page** %11, align 8
  %127 = call i32 @put_page(%struct.page* %126)
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i32, i32* %16, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %28
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.page* @ksm_might_need_to_copy(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mem_cgroup_try_charge(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32* @pte_offset_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i32 @pte_same_as_swp(i32, i32) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @dec_mm_counter(i32, i32) #1

declare dso_local i32 @inc_mm_counter(i32, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @set_pte_at(i32, i64, i32*, i32) #1

declare dso_local i32 @pte_mkold(i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @page_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @swap_free(i32) #1

declare dso_local i32 @activate_page(%struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
