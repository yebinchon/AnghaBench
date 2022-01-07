; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___do_huge_pmd_anonymous_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___do_huge_pmd_anonymous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@THP_FAULT_FALLBACK = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4
@VM_UFFD_MISSING = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4
@THP_FAULT_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*, %struct.page*, i32)* @__do_huge_pmd_anonymous_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_huge_pmd_anonymous_page(%struct.vm_fault* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 3
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %8, align 8
  %18 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.page*, %struct.page** %6, align 8
  %24 = call i32 @PageCompound(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i32 @VM_BUG_ON_PAGE(i32 %27, %struct.page* %28)
  %30 = load %struct.page*, %struct.page** %6, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @mem_cgroup_try_charge_delay(%struct.page* %30, i32 %33, i32 %34, %struct.mem_cgroup** %9, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load %struct.page*, %struct.page** %6, align 8
  %39 = call i32 @put_page(%struct.page* %38)
  %40 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %41 = call i32 @count_vm_event(i32 %40)
  %42 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %42, i32* %4, align 4
  br label %198

43:                                               ; preds = %3
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pte_alloc_one(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %55, i32* %12, align 4
  br label %182

56:                                               ; preds = %43
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %59 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @HPAGE_PMD_NR, align 4
  %62 = call i32 @clear_huge_page(%struct.page* %57, i64 %60, i32 %61)
  %63 = load %struct.page*, %struct.page** %6, align 8
  %64 = call i32 @__SetPageUptodate(%struct.page* %63)
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @pmd_lock(i32 %67, i32* %70)
  %72 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %73 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %75 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pmd_none(i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %56
  br label %177

85:                                               ; preds = %56
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @check_stable_address_space(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %177

93:                                               ; preds = %85
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %95 = call i64 @userfaultfd_missing(%struct.vm_area_struct* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %99 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @spin_unlock(i32 %100)
  %102 = load %struct.page*, %struct.page** %6, align 8
  %103 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %104 = call i32 @mem_cgroup_cancel_charge(%struct.page* %102, %struct.mem_cgroup* %103, i32 1)
  %105 = load %struct.page*, %struct.page** %6, align 8
  %106 = call i32 @put_page(%struct.page* %105)
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @pte_free(i32 %109, i64 %110)
  %112 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %113 = load i32, i32* @VM_UFFD_MISSING, align 4
  %114 = call i32 @handle_userfault(%struct.vm_fault* %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %117 = and i32 %115, %116
  %118 = call i32 @VM_BUG_ON(i32 %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %4, align 4
  br label %198

120:                                              ; preds = %93
  %121 = load %struct.page*, %struct.page** %6, align 8
  %122 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %123 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mk_huge_pmd(%struct.page* %121, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @pmd_mkdirty(i32 %126)
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %129 = call i32 @maybe_pmd_mkwrite(i32 %127, %struct.vm_area_struct* %128)
  store i32 %129, i32* %13, align 4
  %130 = load %struct.page*, %struct.page** %6, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @page_add_new_anon_rmap(%struct.page* %130, %struct.vm_area_struct* %131, i64 %132, i32 1)
  %134 = load %struct.page*, %struct.page** %6, align 8
  %135 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %136 = call i32 @mem_cgroup_commit_charge(%struct.page* %134, %struct.mem_cgroup* %135, i32 0, i32 1)
  %137 = load %struct.page*, %struct.page** %6, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %139 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %137, %struct.vm_area_struct* %138)
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %144 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @pgtable_trans_huge_deposit(i32 %142, i32* %145, i64 %146)
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* %11, align 8
  %152 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %153 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @set_pmd_at(i32 %150, i64 %151, i32* %154, i32 %155)
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %158 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @MM_ANONPAGES, align 4
  %161 = load i32, i32* @HPAGE_PMD_NR, align 4
  %162 = call i32 @add_mm_counter(i32 %159, i32 %160, i32 %161)
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %164 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @mm_inc_nr_ptes(i32 %165)
  %167 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %168 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @spin_unlock(i32 %169)
  %171 = load i32, i32* @THP_FAULT_ALLOC, align 4
  %172 = call i32 @count_vm_event(i32 %171)
  %173 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %174 = load i32, i32* @THP_FAULT_ALLOC, align 4
  %175 = call i32 @count_memcg_events(%struct.mem_cgroup* %173, i32 %174, i32 1)
  br label %176

176:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %198

177:                                              ; preds = %92, %84
  %178 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %179 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @spin_unlock(i32 %180)
  br label %182

182:                                              ; preds = %177, %54
  %183 = load i64, i64* %10, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %187 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @pte_free(i32 %188, i64 %189)
  br label %191

191:                                              ; preds = %185, %182
  %192 = load %struct.page*, %struct.page** %6, align 8
  %193 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %194 = call i32 @mem_cgroup_cancel_charge(%struct.page* %192, %struct.mem_cgroup* %193, i32 1)
  %195 = load %struct.page*, %struct.page** %6, align 8
  %196 = call i32 @put_page(%struct.page* %195)
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %191, %176, %97, %37
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i64 @mem_cgroup_try_charge_delay(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i64 @pte_alloc_one(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @clear_huge_page(%struct.page*, i64, i32) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @pmd_lock(i32, i32*) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @check_stable_address_space(i32) #1

declare dso_local i64 @userfaultfd_missing(%struct.vm_area_struct*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @pte_free(i32, i64) #1

declare dso_local i32 @handle_userfault(%struct.vm_fault*, i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @mk_huge_pmd(%struct.page*, i32) #1

declare dso_local i32 @maybe_pmd_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pmd_mkdirty(i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @pgtable_trans_huge_deposit(i32, i32*, i64) #1

declare dso_local i32 @set_pmd_at(i32, i64, i32*, i32) #1

declare dso_local i32 @add_mm_counter(i32, i32, i32) #1

declare dso_local i32 @mm_inc_nr_ptes(i32) #1

declare dso_local i32 @count_memcg_events(%struct.mem_cgroup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
