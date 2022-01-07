; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_copy_hugetlb_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_copy_hugetlb_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }
%struct.page = type { i32 }
%struct.hstate = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_hugetlb_page_range(%struct.mm_struct* %0, %struct.mm_struct* %1, %struct.vm_area_struct* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hstate*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mmu_notifier_range, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %6, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %21)
  store %struct.hstate* %22, %struct.hstate** %14, align 8
  %23 = load %struct.hstate*, %struct.hstate** %14, align 8
  %24 = call i64 @huge_page_size(%struct.hstate* %23)
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @VM_SHARED, align 4
  %29 = load i32, i32* @VM_MAYWRITE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @VM_MAYWRITE, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %3
  %38 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %16, i32 %38, i32 0, %struct.vm_area_struct* %39, %struct.mm_struct* %40, i64 %43, i64 %46)
  %48 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %16)
  br label %49

49:                                               ; preds = %37, %3
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %183, %49
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %54, %57
  br i1 %58, label %59, label %187

59:                                               ; preds = %53
  %60 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %15, align 8
  %63 = call i32* @huge_pte_offset(%struct.mm_struct* %60, i64 %61, i64 %62)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %183

67:                                               ; preds = %59
  %68 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32* @huge_pte_alloc(%struct.mm_struct* %68, i64 %69, i64 %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %17, align 4
  br label %187

77:                                               ; preds = %67
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @huge_ptep_get(i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @huge_pte_none(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %77
  br label %183

88:                                               ; preds = %83
  %89 = load %struct.hstate*, %struct.hstate** %14, align 8
  %90 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32* @huge_pte_lock(%struct.hstate* %89, %struct.mm_struct* %90, i32* %91)
  store i32* %92, i32** %19, align 8
  %93 = load %struct.hstate*, %struct.hstate** %14, align 8
  %94 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32* @huge_pte_lockptr(%struct.hstate* %93, %struct.mm_struct* %94, i32* %95)
  store i32* %96, i32** %18, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %99 = call i32 @spin_lock_nested(i32* %97, i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @huge_ptep_get(i32* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @huge_ptep_get(i32* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @huge_pte_none(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %88
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @huge_pte_none(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107, %88
  br label %178

112:                                              ; preds = %107
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @is_hugetlb_entry_migration(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @is_hugetlb_entry_hwpoisoned(i32 %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i1 [ true, %112 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %120
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @pte_to_swp_entry(i32 %126)
  store i32 %127, i32* %20, align 4
  %128 = load i32, i32* %20, align 4
  %129 = call i64 @is_write_migration_entry(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = call i32 @make_migration_entry_read(i32* %20)
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @swp_entry_to_pte(i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i64, i64* %15, align 8
  %143 = call i32 @set_huge_swap_pte_at(%struct.mm_struct* %138, i64 %139, i32* %140, i32 %141, i64 %142)
  br label %144

144:                                              ; preds = %134, %131, %125
  %145 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i64, i64* %15, align 8
  %150 = call i32 @set_huge_swap_pte_at(%struct.mm_struct* %145, i64 %146, i32* %147, i32 %148, i64 %149)
  br label %177

151:                                              ; preds = %120
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %156 = load i64, i64* %12, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @huge_ptep_set_wrprotect(%struct.mm_struct* %155, i64 %156, i32* %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load i32*, i32** %7, align 8
  %161 = call i32 @huge_ptep_get(i32* %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call %struct.page* @pte_page(i32 %162)
  store %struct.page* %163, %struct.page** %11, align 8
  %164 = load %struct.page*, %struct.page** %11, align 8
  %165 = call i32 @get_page(%struct.page* %164)
  %166 = load %struct.page*, %struct.page** %11, align 8
  %167 = call i32 @page_dup_rmap(%struct.page* %166, i32 1)
  %168 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @set_huge_pte_at(%struct.mm_struct* %168, i64 %169, i32* %170, i32 %171)
  %173 = load %struct.hstate*, %struct.hstate** %14, align 8
  %174 = call i32 @pages_per_huge_page(%struct.hstate* %173)
  %175 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %176 = call i32 @hugetlb_count_add(i32 %174, %struct.mm_struct* %175)
  br label %177

177:                                              ; preds = %159, %144
  br label %178

178:                                              ; preds = %177, %111
  %179 = load i32*, i32** %18, align 8
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load i32*, i32** %19, align 8
  %182 = call i32 @spin_unlock(i32* %181)
  br label %183

183:                                              ; preds = %178, %87, %66
  %184 = load i64, i64* %15, align 8
  %185 = load i64, i64* %12, align 8
  %186 = add i64 %185, %184
  store i64 %186, i64* %12, align 8
  br label %53

187:                                              ; preds = %74, %53
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %16)
  br label %192

192:                                              ; preds = %190, %187
  %193 = load i32, i32* %17, align 4
  ret i32 %193
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64, i64) #1

declare dso_local i32* @huge_pte_alloc(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i64 @huge_pte_none(i32) #1

declare dso_local i32* @huge_pte_lock(%struct.hstate*, %struct.mm_struct*, i32*) #1

declare dso_local i32* @huge_pte_lockptr(%struct.hstate*, %struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @is_hugetlb_entry_migration(i32) #1

declare dso_local i64 @is_hugetlb_entry_hwpoisoned(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i64 @is_write_migration_entry(i32) #1

declare dso_local i32 @make_migration_entry_read(i32*) #1

declare dso_local i32 @swp_entry_to_pte(i32) #1

declare dso_local i32 @set_huge_swap_pte_at(%struct.mm_struct*, i64, i32*, i32, i64) #1

declare dso_local i32 @huge_ptep_set_wrprotect(%struct.mm_struct*, i64, i32*) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @page_dup_rmap(%struct.page*, i32) #1

declare dso_local i32 @set_huge_pte_at(%struct.mm_struct*, i64, i32*, i32) #1

declare dso_local i32 @hugetlb_count_add(i32, %struct.mm_struct*) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
