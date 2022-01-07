; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_cow.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }
%struct.hstate = type { i32 }
%struct.mmu_notifier_range = type { i32, i32 }

@HPAGE_RESV_OWNER = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*, i32*)* @hugetlb_cow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_cow(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32* %3, %struct.page* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hstate*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.mmu_notifier_range, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.page* %4, %struct.page** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %23 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %22)
  store %struct.hstate* %23, %struct.hstate** %15, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.hstate*, %struct.hstate** %15, align 8
  %26 = call i64 @huge_page_mask(%struct.hstate* %25)
  %27 = and i64 %24, %26
  store i64 %27, i64* %20, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @huge_ptep_get(i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.page* @pte_page(i32 %30)
  store %struct.page* %31, %struct.page** %16, align 8
  br label %32

32:                                               ; preds = %107, %6
  %33 = load %struct.page*, %struct.page** %16, align 8
  %34 = call i32 @page_mapcount(%struct.page* %33)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.page*, %struct.page** %16, align 8
  %38 = call i64 @PageAnon(%struct.page* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.page*, %struct.page** %16, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %43 = call i32 @page_move_anon_rmap(%struct.page* %41, %struct.vm_area_struct* %42)
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %45 = load i64, i64* %20, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @set_huge_ptep_writable(%struct.vm_area_struct* %44, i64 %45, i32* %46)
  store i32 0, i32* %7, align 4
  br label %207

48:                                               ; preds = %36, %32
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %50 = load i32, i32* @HPAGE_RESV_OWNER, align 4
  %51 = call i64 @is_vma_resv_set(%struct.vm_area_struct* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.page*, %struct.page** %16, align 8
  %55 = load %struct.page*, %struct.page** %12, align 8
  %56 = icmp ne %struct.page* %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %18, align 4
  br label %58

58:                                               ; preds = %57, %53, %48
  %59 = load %struct.page*, %struct.page** %16, align 8
  %60 = call i32 @get_page(%struct.page* %59)
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %64 = load i64, i64* %20, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call %struct.page* @alloc_huge_page(%struct.vm_area_struct* %63, i64 %64, i32 %65)
  store %struct.page* %66, %struct.page** %17, align 8
  %67 = load %struct.page*, %struct.page** %17, align 8
  %68 = call i64 @IS_ERR(%struct.page* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %58
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %70
  %74 = load %struct.page*, %struct.page** %16, align 8
  %75 = call i32 @put_page(%struct.page* %74)
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @huge_pte_none(i32 %76)
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %81 = load %struct.page*, %struct.page** %16, align 8
  %82 = load i64, i64* %20, align 8
  %83 = call i32 @unmap_ref_private(%struct.mm_struct* %79, %struct.vm_area_struct* %80, %struct.page* %81, i64 %82)
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @huge_pte_none(i32 %84)
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load %struct.hstate*, %struct.hstate** %15, align 8
  %92 = call i64 @huge_page_size(%struct.hstate* %91)
  %93 = call i32* @huge_pte_offset(%struct.mm_struct* %89, i64 %90, i64 %92)
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %73
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @huge_ptep_get(i32* %97)
  %99 = load i32, i32* %14, align 4
  %100 = call i64 @pte_same(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br label %102

102:                                              ; preds = %96, %73
  %103 = phi i1 [ false, %73 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  %105 = call i64 @likely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %32

108:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %207

109:                                              ; preds = %70
  %110 = load %struct.page*, %struct.page** %17, align 8
  %111 = call i32 @PTR_ERR(%struct.page* %110)
  %112 = call i32 @vmf_error(i32 %111)
  store i32 %112, i32* %19, align 4
  br label %201

113:                                              ; preds = %58
  %114 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %115 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %114)
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %119, i32* %19, align 4
  br label %193

120:                                              ; preds = %113
  %121 = load %struct.page*, %struct.page** %17, align 8
  %122 = load %struct.page*, %struct.page** %16, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %125 = load %struct.hstate*, %struct.hstate** %15, align 8
  %126 = call i32 @pages_per_huge_page(%struct.hstate* %125)
  %127 = call i32 @copy_user_huge_page(%struct.page* %121, %struct.page* %122, i64 %123, %struct.vm_area_struct* %124, i32 %126)
  %128 = load %struct.page*, %struct.page** %17, align 8
  %129 = call i32 @__SetPageUptodate(%struct.page* %128)
  %130 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %132 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* %20, align 8
  %135 = load %struct.hstate*, %struct.hstate** %15, align 8
  %136 = call i64 @huge_page_size(%struct.hstate* %135)
  %137 = add i64 %134, %136
  %138 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %21, i32 %130, i32 0, %struct.vm_area_struct* %131, %struct.mm_struct* %132, i64 %133, i64 %137)
  %139 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %21)
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %143 = load i64, i64* %20, align 8
  %144 = load %struct.hstate*, %struct.hstate** %15, align 8
  %145 = call i64 @huge_page_size(%struct.hstate* %144)
  %146 = call i32* @huge_pte_offset(%struct.mm_struct* %142, i64 %143, i64 %145)
  store i32* %146, i32** %11, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %120
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @huge_ptep_get(i32* %150)
  %152 = load i32, i32* %14, align 4
  %153 = call i64 @pte_same(i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %149, %120
  %156 = phi i1 [ false, %120 ], [ %154, %149 ]
  %157 = zext i1 %156 to i32
  %158 = call i64 @likely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %155
  %161 = load %struct.page*, %struct.page** %17, align 8
  %162 = call i32 @ClearPagePrivate(%struct.page* %161)
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %164 = load i64, i64* %20, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = call i32 @huge_ptep_clear_flush(%struct.vm_area_struct* %163, i64 %164, i32* %165)
  %167 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %168 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %21, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.mmu_notifier_range, %struct.mmu_notifier_range* %21, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @mmu_notifier_invalidate_range(%struct.mm_struct* %167, i32 %169, i32 %171)
  %173 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %174 = load i64, i64* %20, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %177 = load %struct.page*, %struct.page** %17, align 8
  %178 = call i32 @make_huge_pte(%struct.vm_area_struct* %176, %struct.page* %177, i32 1)
  %179 = call i32 @set_huge_pte_at(%struct.mm_struct* %173, i64 %174, i32* %175, i32 %178)
  %180 = load %struct.page*, %struct.page** %16, align 8
  %181 = call i32 @page_remove_rmap(%struct.page* %180, i32 1)
  %182 = load %struct.page*, %struct.page** %17, align 8
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %184 = load i64, i64* %20, align 8
  %185 = call i32 @hugepage_add_new_anon_rmap(%struct.page* %182, %struct.vm_area_struct* %183, i64 %184)
  %186 = load %struct.page*, %struct.page** %17, align 8
  %187 = call i32 @set_page_huge_active(%struct.page* %186)
  %188 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %188, %struct.page** %17, align 8
  br label %189

189:                                              ; preds = %160, %155
  %190 = load i32*, i32** %13, align 8
  %191 = call i32 @spin_unlock(i32* %190)
  %192 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %21)
  br label %193

193:                                              ; preds = %189, %118
  %194 = load %struct.hstate*, %struct.hstate** %15, align 8
  %195 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %196 = load i64, i64* %20, align 8
  %197 = load %struct.page*, %struct.page** %17, align 8
  %198 = call i32 @restore_reserve_on_error(%struct.hstate* %194, %struct.vm_area_struct* %195, i64 %196, %struct.page* %197)
  %199 = load %struct.page*, %struct.page** %17, align 8
  %200 = call i32 @put_page(%struct.page* %199)
  br label %201

201:                                              ; preds = %193, %109
  %202 = load %struct.page*, %struct.page** %16, align 8
  %203 = call i32 @put_page(%struct.page* %202)
  %204 = load i32*, i32** %13, align 8
  %205 = call i32 @spin_lock(i32* %204)
  %206 = load i32, i32* %19, align 4
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %201, %108, %40
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @huge_page_mask(%struct.hstate*) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local i32 @page_move_anon_rmap(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @set_huge_ptep_writable(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i64 @is_vma_resv_set(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.page* @alloc_huge_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @huge_pte_none(i32) #1

declare dso_local i32 @unmap_ref_private(%struct.mm_struct*, %struct.vm_area_struct*, %struct.page*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @pte_same(i32, i32) #1

declare dso_local i32 @vmf_error(i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local i32 @copy_user_huge_page(%struct.page*, %struct.page*, i64, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @huge_ptep_clear_flush(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @make_huge_pte(%struct.vm_area_struct*, %struct.page*, i32) #1

declare dso_local i32 @page_remove_rmap(%struct.page*, i32) #1

declare dso_local i32 @hugepage_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @set_page_huge_active(%struct.page*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i32 @restore_reserve_on_error(%struct.hstate*, %struct.vm_area_struct*, i64, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
