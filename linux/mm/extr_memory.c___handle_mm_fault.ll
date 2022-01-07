; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c___handle_mm_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c___handle_mm_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.vm_fault = type { i64, i32, i32*, i32*, i32, i32, %struct.vm_area_struct* }

@PAGE_MASK = common dso_local global i64 0, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_FALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, i64, i32)* @__handle_mm_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__handle_mm_fault(%struct.vm_area_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_fault, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mm_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %16, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = call i32 @__get_fault_gfp_mask(%struct.vm_area_struct* %25)
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 5
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @linear_page_index(%struct.vm_area_struct* %28, i64 %29)
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 6
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  store %struct.vm_area_struct* %32, %struct.vm_area_struct** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load %struct.mm_struct*, %struct.mm_struct** %37, align 8
  store %struct.mm_struct* %38, %struct.mm_struct** %10, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32* @pgd_offset(%struct.mm_struct* %39, i64 %40)
  store i32* %41, i32** %11, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32* @p4d_alloc(%struct.mm_struct* %42, i32* %43, i64 %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %49, i32* %4, align 4
  br label %218

50:                                               ; preds = %3
  %51 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32* @pud_alloc(%struct.mm_struct* %51, i32* %52, i64 %53)
  %55 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 3
  store i32* %54, i32** %55, align 8
  %56 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %60, i32* %4, align 4
  br label %218

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pud_none(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = call i64 @__transparent_hugepage_enabled(%struct.vm_area_struct* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = call i32 @create_huge_pud(%struct.vm_fault* %8)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %218

79:                                               ; preds = %71
  br label %114

80:                                               ; preds = %67, %61
  %81 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  %84 = call i32 (...) @barrier()
  %85 = load i32, i32* %14, align 4
  %86 = call i64 @pud_trans_huge(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %14, align 4
  %90 = call i64 @pud_devmap(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %113

92:                                               ; preds = %88, %80
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @pud_write(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @wp_huge_pud(%struct.vm_fault* %8, i32 %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %4, align 4
  br label %218

108:                                              ; preds = %99
  br label %112

109:                                              ; preds = %95, %92
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @huge_pud_set_accessed(%struct.vm_fault* %8, i32 %110)
  store i32 0, i32* %4, align 4
  br label %218

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %88
  br label %114

114:                                              ; preds = %113, %79
  %115 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %116 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32* @pmd_alloc(%struct.mm_struct* %115, i32* %117, i64 %118)
  %120 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  store i32* %119, i32** %120, align 8
  %121 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %114
  %125 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %125, i32* %4, align 4
  br label %218

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @pmd_none(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %126
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %134 = call i64 @__transparent_hugepage_enabled(%struct.vm_area_struct* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = call i32 @create_huge_pmd(%struct.vm_fault* %8)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %4, align 4
  br label %218

144:                                              ; preds = %136
  br label %216

145:                                              ; preds = %132, %126
  %146 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %15, align 4
  %149 = call i32 (...) @barrier()
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @is_swap_pmd(i32 %150)
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %145
  %155 = call i64 (...) @thp_migration_supported()
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = call i64 @is_pmd_migration_entry(i32 %158)
  %160 = icmp ne i64 %159, 0
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %157, %154
  %163 = phi i1 [ false, %154 ], [ %161, %157 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @VM_BUG_ON(i32 %164)
  %166 = load i32, i32* %15, align 4
  %167 = call i64 @is_pmd_migration_entry(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %171 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @pmd_migration_entry_wait(%struct.mm_struct* %170, i32* %172)
  br label %174

174:                                              ; preds = %169, %162
  store i32 0, i32* %4, align 4
  br label %218

175:                                              ; preds = %145
  %176 = load i32, i32* %15, align 4
  %177 = call i64 @pmd_trans_huge(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %15, align 4
  %181 = call i64 @pmd_devmap(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %215

183:                                              ; preds = %179, %175
  %184 = load i32, i32* %15, align 4
  %185 = call i64 @pmd_protnone(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %183
  %188 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %189 = call i64 @vma_is_accessible(%struct.vm_area_struct* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @do_huge_pmd_numa_page(%struct.vm_fault* %8, i32 %192)
  store i32 %193, i32* %4, align 4
  br label %218

194:                                              ; preds = %187, %183
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %194
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @pmd_write(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %197
  %202 = load i32, i32* %15, align 4
  %203 = call i32 @wp_huge_pmd(%struct.vm_fault* %8, i32 %202)
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* @VM_FAULT_FALLBACK, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %13, align 4
  store i32 %209, i32* %4, align 4
  br label %218

210:                                              ; preds = %201
  br label %214

211:                                              ; preds = %197, %194
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @huge_pmd_set_accessed(%struct.vm_fault* %8, i32 %212)
  store i32 0, i32* %4, align 4
  br label %218

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214, %179
  br label %216

216:                                              ; preds = %215, %144
  %217 = call i32 @handle_pte_fault(%struct.vm_fault* %8)
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %211, %208, %191, %174, %142, %124, %109, %106, %77, %59, %48
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @__get_fault_gfp_mask(%struct.vm_area_struct*) #1

declare dso_local i32 @linear_page_index(%struct.vm_area_struct*, i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32* @p4d_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i32* @pud_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @__transparent_hugepage_enabled(%struct.vm_area_struct*) #1

declare dso_local i32 @create_huge_pud(%struct.vm_fault*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @pud_trans_huge(i32) #1

declare dso_local i64 @pud_devmap(i32) #1

declare dso_local i32 @pud_write(i32) #1

declare dso_local i32 @wp_huge_pud(%struct.vm_fault*, i32) #1

declare dso_local i32 @huge_pud_set_accessed(%struct.vm_fault*, i32) #1

declare dso_local i32* @pmd_alloc(%struct.mm_struct*, i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @create_huge_pmd(%struct.vm_fault*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_swap_pmd(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @thp_migration_supported(...) #1

declare dso_local i64 @is_pmd_migration_entry(i32) #1

declare dso_local i32 @pmd_migration_entry_wait(%struct.mm_struct*, i32*) #1

declare dso_local i64 @pmd_trans_huge(i32) #1

declare dso_local i64 @pmd_devmap(i32) #1

declare dso_local i64 @pmd_protnone(i32) #1

declare dso_local i64 @vma_is_accessible(%struct.vm_area_struct*) #1

declare dso_local i32 @do_huge_pmd_numa_page(%struct.vm_fault*, i32) #1

declare dso_local i32 @pmd_write(i32) #1

declare dso_local i32 @wp_huge_pmd(%struct.vm_fault*, i32) #1

declare dso_local i32 @huge_pmd_set_accessed(%struct.vm_fault*, i32) #1

declare dso_local i32 @handle_pte_fault(%struct.vm_fault*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
