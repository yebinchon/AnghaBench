; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_anonymous_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_anonymous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@THP_FAULT_FALLBACK = common dso_local global i32 0, align 4
@VM_UFFD_MISSING = common dso_local global i32 0, align 4
@HPAGE_PMD_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_huge_pmd_anonymous_page(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 4
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  store %struct.vm_area_struct* %14, %struct.vm_area_struct** %4, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @transhuge_vma_suitable(%struct.vm_area_struct* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %25, i32* %2, align 4
  br label %195

26:                                               ; preds = %1
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %32, i32* %2, align 4
  br label %195

33:                                               ; preds = %26
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @khugepaged_enter(%struct.vm_area_struct* %34, i32 %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %42, i32* %2, align 4
  br label %195

43:                                               ; preds = %33
  %44 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %45 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %170, label %50

50:                                               ; preds = %43
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mm_forbids_zeropage(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %170, label %56

56:                                               ; preds = %50
  %57 = call i64 (...) @transparent_hugepage_use_zero_page()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %170

59:                                               ; preds = %56
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pte_alloc_one(i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %71, i32* %2, align 4
  br label %195

72:                                               ; preds = %59
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.page* @mm_get_huge_zero_page(i32 %75)
  store %struct.page* %76, %struct.page** %9, align 8
  %77 = load %struct.page*, %struct.page** %9, align 8
  %78 = icmp ne %struct.page* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @pte_free(i32 %86, i32 %87)
  %89 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %90 = call i32 @count_vm_event(i32 %89)
  %91 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %91, i32* %2, align 4
  br label %195

92:                                               ; preds = %72
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %97 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @pmd_lock(i32 %95, i32* %98)
  %100 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %101 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %102 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %103 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @pmd_none(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %154

108:                                              ; preds = %92
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %110 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @check_stable_address_space(i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %117 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @spin_unlock(i32 %118)
  br label %153

120:                                              ; preds = %108
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %122 = call i64 @userfaultfd_missing(%struct.vm_area_struct* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %126 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @spin_unlock(i32 %127)
  %129 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %130 = load i32, i32* @VM_UFFD_MISSING, align 4
  %131 = call i32 @handle_userfault(%struct.vm_fault* %129, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %134 = and i32 %132, %133
  %135 = call i32 @VM_BUG_ON(i32 %134)
  br label %152

136:                                              ; preds = %120
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %144 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.page*, %struct.page** %9, align 8
  %147 = call i32 @set_huge_zero_page(i32 %137, i32 %140, %struct.vm_area_struct* %141, i64 %142, i32* %145, %struct.page* %146)
  %148 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %149 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @spin_unlock(i32 %150)
  store i32 1, i32* %10, align 4
  br label %152

152:                                              ; preds = %136, %124
  br label %153

153:                                              ; preds = %152, %115
  br label %159

154:                                              ; preds = %92
  %155 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %156 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @spin_unlock(i32 %157)
  br label %159

159:                                              ; preds = %154, %153
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %159
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %164 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @pte_free(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %159
  %169 = load i32, i32* %11, align 4
  store i32 %169, i32* %2, align 4
  br label %195

170:                                              ; preds = %56, %50, %43
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %172 = call i32 @alloc_hugepage_direct_gfpmask(%struct.vm_area_struct* %171)
  store i32 %172, i32* %5, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i32, i32* @HPAGE_PMD_ORDER, align 4
  %177 = call %struct.page* @alloc_hugepage_vma(i32 %173, %struct.vm_area_struct* %174, i64 %175, i32 %176)
  store %struct.page* %177, %struct.page** %6, align 8
  %178 = load %struct.page*, %struct.page** %6, align 8
  %179 = icmp ne %struct.page* %178, null
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %170
  %185 = load i32, i32* @THP_FAULT_FALLBACK, align 4
  %186 = call i32 @count_vm_event(i32 %185)
  %187 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  store i32 %187, i32* %2, align 4
  br label %195

188:                                              ; preds = %170
  %189 = load %struct.page*, %struct.page** %6, align 8
  %190 = call i32 @prep_transhuge_page(%struct.page* %189)
  %191 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %192 = load %struct.page*, %struct.page** %6, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @__do_huge_pmd_anonymous_page(%struct.vm_fault* %191, %struct.page* %192, i32 %193)
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %188, %184, %168, %83, %70, %41, %31, %24
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @transhuge_vma_suitable(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @khugepaged_enter(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @mm_forbids_zeropage(i32) #1

declare dso_local i64 @transparent_hugepage_use_zero_page(...) #1

declare dso_local i32 @pte_alloc_one(i32) #1

declare dso_local %struct.page* @mm_get_huge_zero_page(i32) #1

declare dso_local i32 @pte_free(i32, i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @pmd_lock(i32, i32*) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @check_stable_address_space(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i64 @userfaultfd_missing(%struct.vm_area_struct*) #1

declare dso_local i32 @handle_userfault(%struct.vm_fault*, i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @set_huge_zero_page(i32, i32, %struct.vm_area_struct*, i64, i32*, %struct.page*) #1

declare dso_local i32 @alloc_hugepage_direct_gfpmask(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @alloc_hugepage_vma(i32, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @prep_transhuge_page(%struct.page*) #1

declare dso_local i32 @__do_huge_pmd_anonymous_page(%struct.vm_fault*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
