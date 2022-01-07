; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c___replace_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_uprobes.c___replace_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.page = type { i32 }
%struct.page_vma_mapped_walk = type { i64, i32*, %struct.vm_area_struct*, i32 }
%struct.mmu_notifier_range = type { i32 }
%struct.mem_cgroup = type { i32 }

@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, %struct.page*, %struct.page*)* @__replace_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__replace_page(%struct.vm_area_struct* %0, i64 %1, %struct.page* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca %struct.page_vma_mapped_walk, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mmu_notifier_range, align 4
  %14 = alloca %struct.mem_cgroup*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 2
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %10, align 8
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  store %struct.vm_area_struct* %22, %struct.vm_area_struct** %21, align 8
  %23 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 3
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = call i32 @compound_head(%struct.page* %24)
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %13, i32 %26, i32 0, %struct.vm_area_struct* %27, %struct.mm_struct* %28, i64 %29, i64 %32)
  %34 = load %struct.page*, %struct.page** %9, align 8
  %35 = icmp ne %struct.page* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %4
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 2
  %40 = load %struct.mm_struct*, %struct.mm_struct** %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @mem_cgroup_try_charge(%struct.page* %37, %struct.mm_struct* %40, i32 %41, %struct.mem_cgroup** %14, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %5, align 4
  br label %157

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.page*, %struct.page** %8, align 8
  %50 = call i32 @lock_page(%struct.page* %49)
  %51 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %13)
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  %54 = call i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk* %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %48
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.page*, %struct.page** %9, align 8
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %14, align 8
  %62 = call i32 @mem_cgroup_cancel_charge(%struct.page* %60, %struct.mem_cgroup* %61, i32 0)
  br label %63

63:                                               ; preds = %59, %56
  br label %152

64:                                               ; preds = %48
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %65, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @VM_BUG_ON_PAGE(i32 %69, %struct.page* %70)
  %72 = load %struct.page*, %struct.page** %9, align 8
  %73 = icmp ne %struct.page* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %64
  %75 = load %struct.page*, %struct.page** %9, align 8
  %76 = call i32 @get_page(%struct.page* %75)
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @page_add_new_anon_rmap(%struct.page* %77, %struct.vm_area_struct* %78, i64 %79, i32 0)
  %81 = load %struct.page*, %struct.page** %9, align 8
  %82 = load %struct.mem_cgroup*, %struct.mem_cgroup** %14, align 8
  %83 = call i32 @mem_cgroup_commit_charge(%struct.page* %81, %struct.mem_cgroup* %82, i32 0, i32 0)
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %86 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %84, %struct.vm_area_struct* %85)
  br label %91

87:                                               ; preds = %64
  %88 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %89 = load i32, i32* @MM_ANONPAGES, align 4
  %90 = call i32 @dec_mm_counter(%struct.mm_struct* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %74
  %92 = load %struct.page*, %struct.page** %8, align 8
  %93 = call i32 @PageAnon(%struct.page* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %97 = load %struct.page*, %struct.page** %8, align 8
  %98 = call i32 @mm_counter_file(%struct.page* %97)
  %99 = call i32 @dec_mm_counter(%struct.mm_struct* %96, i32 %98)
  %100 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %101 = load i32, i32* @MM_ANONPAGES, align 4
  %102 = call i32 @inc_mm_counter(%struct.mm_struct* %100, i32 %101)
  br label %103

103:                                              ; preds = %95, %91
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pte_pfn(i32 %108)
  %110 = call i32 @flush_cache_page(%struct.vm_area_struct* %104, i64 %105, i32 %109)
  %111 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ptep_clear_flush_notify(%struct.vm_area_struct* %111, i64 %112, i32* %114)
  %116 = load %struct.page*, %struct.page** %9, align 8
  %117 = icmp ne %struct.page* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %103
  %119 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds %struct.page_vma_mapped_walk, %struct.page_vma_mapped_walk* %11, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.page*, %struct.page** %9, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %125 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @mk_pte(%struct.page* %123, i32 %126)
  %128 = call i32 @set_pte_at_notify(%struct.mm_struct* %119, i64 %120, i32* %122, i32 %127)
  br label %129

129:                                              ; preds = %118, %103
  %130 = load %struct.page*, %struct.page** %8, align 8
  %131 = call i32 @page_remove_rmap(%struct.page* %130, i32 0)
  %132 = load %struct.page*, %struct.page** %8, align 8
  %133 = call i32 @page_mapped(%struct.page* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = load %struct.page*, %struct.page** %8, align 8
  %137 = call i32 @try_to_free_swap(%struct.page* %136)
  br label %138

138:                                              ; preds = %135, %129
  %139 = call i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk* %11)
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @VM_LOCKED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load %struct.page*, %struct.page** %8, align 8
  %148 = call i32 @munlock_vma_page(%struct.page* %147)
  br label %149

149:                                              ; preds = %146, %138
  %150 = load %struct.page*, %struct.page** %8, align 8
  %151 = call i32 @put_page(%struct.page* %150)
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %149, %63
  %153 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %13)
  %154 = load %struct.page*, %struct.page** %8, align 8
  %155 = call i32 @unlock_page(%struct.page* %154)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %152, %45
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @compound_head(%struct.page*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mem_cgroup_try_charge(%struct.page*, %struct.mm_struct*, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @page_vma_mapped_walk(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @dec_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local i32 @mm_counter_file(%struct.page*) #1

declare dso_local i32 @inc_mm_counter(%struct.mm_struct*, i32) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i32 @ptep_clear_flush_notify(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @set_pte_at_notify(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @page_mapped(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @page_vma_mapped_walk_done(%struct.page_vma_mapped_walk*) #1

declare dso_local i32 @munlock_vma_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
