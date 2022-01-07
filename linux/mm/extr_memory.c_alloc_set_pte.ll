; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_alloc_set_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_alloc_set_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32*, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32 }
%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }

@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@CONFIG_TRANSPARENT_HUGE_PAGECACHE = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i64 0, align 8
@VM_FAULT_NOPAGE = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @alloc_set_pte(%struct.vm_fault* %0, %struct.mem_cgroup* %1, %struct.page* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.mem_cgroup*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %5, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %8, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pmd_none(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = call i64 @PageTransCompound(%struct.page* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load i32, i32* @CONFIG_TRANSPARENT_HUGE_PAGECACHE, align 4
  %32 = call i64 @IS_ENABLED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = call i32 @VM_BUG_ON_PAGE(%struct.mem_cgroup* %35, %struct.page* %36)
  %38 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = call i64 @do_set_pmd(%struct.vm_fault* %38, %struct.page* %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @VM_FAULT_FALLBACK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i64, i64* %11, align 8
  store i64 %45, i64* %4, align 8
  br label %146

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %30, %26, %3
  %48 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %49 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %54 = call i64 @pte_alloc_one_map(%struct.vm_fault* %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %4, align 8
  br label %146

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %47
  %61 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %62 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pte_none(i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i64, i64* @VM_FAULT_NOPAGE, align 8
  store i64 %72, i64* %4, align 8
  br label %146

73:                                               ; preds = %60
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %75 = load %struct.page*, %struct.page** %7, align 8
  %76 = call i32 @flush_icache_page(%struct.vm_area_struct* %74, %struct.page* %75)
  %77 = load %struct.page*, %struct.page** %7, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mk_pte(%struct.page* %77, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @pte_mkdirty(i32 %85)
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %88 = call i32 @maybe_mkwrite(i32 %86, %struct.vm_area_struct* %87)
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84, %73
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VM_SHARED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %92
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MM_ANONPAGES, align 4
  %104 = call i32 @inc_mm_counter_fast(i32 %102, i32 %103)
  %105 = load %struct.page*, %struct.page** %7, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %107 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %108 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @page_add_new_anon_rmap(%struct.page* %105, %struct.vm_area_struct* %106, i32 %109, i32 0)
  %111 = load %struct.page*, %struct.page** %7, align 8
  %112 = load %struct.mem_cgroup*, %struct.mem_cgroup** %6, align 8
  %113 = call i32 @mem_cgroup_commit_charge(%struct.page* %111, %struct.mem_cgroup* %112, i32 0, i32 0)
  %114 = load %struct.page*, %struct.page** %7, align 8
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %116 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %114, %struct.vm_area_struct* %115)
  br label %126

117:                                              ; preds = %92, %89
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.page*, %struct.page** %7, align 8
  %122 = call i32 @mm_counter_file(%struct.page* %121)
  %123 = call i32 @inc_mm_counter_fast(i32 %120, i32 %122)
  %124 = load %struct.page*, %struct.page** %7, align 8
  %125 = call i32 @page_add_file_rmap(%struct.page* %124, i32 0)
  br label %126

126:                                              ; preds = %117, %99
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %128 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %131 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %134 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @set_pte_at(i32 %129, i32 %132, i32* %135, i32 %136)
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %139 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %140 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %143 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @update_mmu_cache(%struct.vm_area_struct* %138, i32 %141, i32* %144)
  store i64 0, i64* %4, align 8
  br label %146

146:                                              ; preds = %126, %71, %57, %44
  %147 = load i64, i64* %4, align 8
  ret i64 %147
}

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @PageTransCompound(%struct.page*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(%struct.mem_cgroup*, %struct.page*) #1

declare dso_local i64 @do_set_pmd(%struct.vm_fault*, %struct.page*) #1

declare dso_local i64 @pte_alloc_one_map(%struct.vm_fault*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @flush_icache_page(%struct.vm_area_struct*, %struct.page*) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @inc_mm_counter_fast(i32, i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @mm_counter_file(%struct.page*) #1

declare dso_local i32 @page_add_file_rmap(%struct.page*, i32) #1

declare dso_local i32 @set_pte_at(i32, i32, i32*, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
