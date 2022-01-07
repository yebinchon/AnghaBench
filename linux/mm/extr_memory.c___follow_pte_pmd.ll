; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___follow_pte_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___follow_pte_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@MMU_NOTIFY_CLEAR = common dso_local global i32 0, align 4
@PMD_MASK = common dso_local global i64 0, align 8
@PMD_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, %struct.mmu_notifier_range*, i32**, i32**, i32**)* @__follow_pte_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__follow_pte_pmd(%struct.mm_struct* %0, i64 %1, %struct.mmu_notifier_range* %2, i32** %3, i32** %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mmu_notifier_range*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.mmu_notifier_range* %2, %struct.mmu_notifier_range** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32** %5, i32*** %13, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32* @pgd_offset(%struct.mm_struct* %19, i64 %20)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pgd_none(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pgd_bad(i32 %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %6
  br label %174

33:                                               ; preds = %26
  %34 = load i32*, i32** %14, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32* @p4d_offset(i32* %34, i64 %35)
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @p4d_none(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @p4d_bad(i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %33
  br label %174

48:                                               ; preds = %41
  %49 = load i32*, i32** %15, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32* @pud_offset(i32* %49, i64 %50)
  store i32* %51, i32** %16, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @pud_none(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pud_bad(i32 %58)
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %48
  br label %174

63:                                               ; preds = %56
  %64 = load i32*, i32** %16, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32* @pmd_offset(i32* %64, i64 %65)
  store i32* %66, i32** %17, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pmd_trans_huge(i32 %68)
  %70 = call i32 @VM_BUG_ON(i32 %69)
  %71 = load i32*, i32** %17, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @pmd_huge(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %119

75:                                               ; preds = %63
  %76 = load i32**, i32*** %12, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %174

79:                                               ; preds = %75
  %80 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %81 = icmp ne %struct.mmu_notifier_range* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %84 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %85 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @PMD_MASK, align 8
  %88 = and i64 %86, %87
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* @PMD_MASK, align 8
  %91 = and i64 %89, %90
  %92 = load i64, i64* @PMD_SIZE, align 8
  %93 = add i64 %91, %92
  %94 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %83, i32 %84, i32 0, i32* null, %struct.mm_struct* %85, i64 %88, i64 %93)
  %95 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %96 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %95)
  br label %97

97:                                               ; preds = %82, %79
  %98 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = call i32* @pmd_lock(%struct.mm_struct* %98, i32* %99)
  %101 = load i32**, i32*** %13, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @pmd_huge(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i32*, i32** %17, align 8
  %108 = load i32**, i32*** %12, align 8
  store i32* %107, i32** %108, align 8
  store i32 0, i32* %7, align 4
  br label %177

109:                                              ; preds = %97
  %110 = load i32**, i32*** %13, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %114 = icmp ne %struct.mmu_notifier_range* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %117 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %116)
  br label %118

118:                                              ; preds = %115, %109
  br label %119

119:                                              ; preds = %118, %63
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @pmd_none(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pmd_bad(i32 %126)
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %119
  br label %174

131:                                              ; preds = %124
  %132 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %133 = icmp ne %struct.mmu_notifier_range* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %131
  %135 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %136 = load i32, i32* @MMU_NOTIFY_CLEAR, align 4
  %137 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* @PAGE_MASK, align 8
  %140 = and i64 %138, %139
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* @PAGE_MASK, align 8
  %143 = and i64 %141, %142
  %144 = load i64, i64* @PAGE_SIZE, align 8
  %145 = add i64 %143, %144
  %146 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %135, i32 %136, i32 0, i32* null, %struct.mm_struct* %137, i64 %140, i64 %145)
  %147 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %148 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %147)
  br label %149

149:                                              ; preds = %134, %131
  %150 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %151 = load i32*, i32** %17, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i32**, i32*** %13, align 8
  %154 = call i32* @pte_offset_map_lock(%struct.mm_struct* %150, i32* %151, i64 %152, i32** %153)
  store i32* %154, i32** %18, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @pte_present(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %149
  br label %163

160:                                              ; preds = %149
  %161 = load i32*, i32** %18, align 8
  %162 = load i32**, i32*** %11, align 8
  store i32* %161, i32** %162, align 8
  store i32 0, i32* %7, align 4
  br label %177

163:                                              ; preds = %159
  %164 = load i32*, i32** %18, align 8
  %165 = load i32**, i32*** %13, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @pte_unmap_unlock(i32* %164, i32* %166)
  %168 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %169 = icmp ne %struct.mmu_notifier_range* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load %struct.mmu_notifier_range*, %struct.mmu_notifier_range** %10, align 8
  %172 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %171)
  br label %173

173:                                              ; preds = %170, %163
  br label %174

174:                                              ; preds = %173, %130, %78, %62, %47, %32
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %160, %106
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pgd_bad(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i64 @p4d_none(i32) #1

declare dso_local i32 @p4d_bad(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @pud_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_huge(i32) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, i32*, %struct.mm_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32* @pmd_lock(%struct.mm_struct*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pmd_bad(i32) #1

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
