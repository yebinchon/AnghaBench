; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mremap.c_move_page_tables.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mremap.c_move_page_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.mmu_notifier_range = type { i32 }

@MMU_NOTIFY_UNMAP = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @move_page_tables(%struct.vm_area_struct* %0, i64 %1, %struct.vm_area_struct* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mmu_notifier_range, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %15, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @flush_cache_range(%struct.vm_area_struct* %23, i64 %24, i64 %25)
  %27 = load i32, i32* @MMU_NOTIFY_UNMAP, align 4
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i32 @mmu_notifier_range_init(%struct.mmu_notifier_range* %16, i32 %27, i32 0, %struct.vm_area_struct* %28, i32 %31, i64 %32, i64 %33)
  %35 = call i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range* %16)
  br label %36

36:                                               ; preds = %167, %6
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %174

40:                                               ; preds = %36
  %41 = call i32 (...) @cond_resched()
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @PMD_SIZE, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* @PMD_MASK, align 8
  %46 = and i64 %44, %45
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %51, %52
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %56, %57
  store i64 %58, i64* %13, align 8
  br label %59

59:                                               ; preds = %55, %40
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32* @get_old_pmd(i32 %62, i64 %63)
  store i32* %64, i32** %17, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  br label %167

68:                                               ; preds = %59
  %69 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %70 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32* @alloc_new_pmd(i32 %71, %struct.vm_area_struct* %72, i64 %73)
  store i32* %74, i32** %18, align 8
  %75 = load i32*, i32** %18, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  br label %174

78:                                               ; preds = %68
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @is_swap_pmd(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @pmd_trans_huge(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %126

88:                                               ; preds = %83, %78
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %97 = call i32 @take_rmap_locks(%struct.vm_area_struct* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @move_huge_pmd(%struct.vm_area_struct* %99, i64 %100, i64 %101, i64 %102, i32* %103, i32* %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %110 = call i32 @drop_rmap_locks(%struct.vm_area_struct* %109)
  br label %111

111:                                              ; preds = %108, %98
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %167

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %88
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @split_huge_pmd(%struct.vm_area_struct* %117, i32* %118, i64 %119)
  %121 = load i32*, i32** %17, align 8
  %122 = call i64 @pmd_trans_unstable(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %167

125:                                              ; preds = %116
  br label %132

126:                                              ; preds = %83
  %127 = load i64, i64* %13, align 8
  %128 = load i64, i64* @PMD_SIZE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130, %126
  br label %132

132:                                              ; preds = %131, %125
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %18, align 8
  %137 = call i64 @pte_alloc(i32 %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %174

140:                                              ; preds = %132
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @PMD_SIZE, align 8
  %143 = add i64 %141, %142
  %144 = load i64, i64* @PMD_MASK, align 8
  %145 = and i64 %143, %144
  store i64 %145, i64* %14, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %10, align 8
  %149 = sub i64 %147, %148
  %150 = icmp ugt i64 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %140
  %152 = load i64, i64* %14, align 8
  %153 = load i64, i64* %10, align 8
  %154 = sub i64 %152, %153
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %151, %140
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %13, align 8
  %161 = add i64 %159, %160
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @move_ptes(%struct.vm_area_struct* %156, i32* %157, i64 %158, i64 %161, %struct.vm_area_struct* %162, i32* %163, i64 %164, i32 %165)
  br label %167

167:                                              ; preds = %155, %124, %114, %67
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %8, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %8, align 8
  %171 = load i64, i64* %13, align 8
  %172 = load i64, i64* %10, align 8
  %173 = add i64 %172, %171
  store i64 %173, i64* %10, align 8
  br label %36

174:                                              ; preds = %139, %77, %36
  %175 = call i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range* %16)
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* %8, align 8
  %178 = add i64 %176, %177
  %179 = load i64, i64* %15, align 8
  %180 = sub i64 %178, %179
  ret i64 %180
}

declare dso_local i32 @flush_cache_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_range_init(%struct.mmu_notifier_range*, i32, i32, %struct.vm_area_struct*, i32, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range_start(%struct.mmu_notifier_range*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32* @get_old_pmd(i32, i64) #1

declare dso_local i32* @alloc_new_pmd(i32, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @is_swap_pmd(i32) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i32 @take_rmap_locks(%struct.vm_area_struct*) #1

declare dso_local i32 @move_huge_pmd(%struct.vm_area_struct*, i64, i64, i64, i32*, i32*) #1

declare dso_local i32 @drop_rmap_locks(%struct.vm_area_struct*) #1

declare dso_local i32 @split_huge_pmd(%struct.vm_area_struct*, i32*, i64) #1

declare dso_local i64 @pmd_trans_unstable(i32*) #1

declare dso_local i64 @pte_alloc(i32, i32*) #1

declare dso_local i32 @move_ptes(%struct.vm_area_struct*, i32*, i64, i64, %struct.vm_area_struct*, i32*, i64, i32) #1

declare dso_local i32 @mmu_notifier_invalidate_range_end(%struct.mmu_notifier_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
