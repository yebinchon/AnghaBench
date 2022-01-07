; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_handle_pte.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hmm.c_hmm_vma_handle_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_walk = type { i32, %struct.hmm_vma_walk* }
%struct.hmm_vma_walk = type { i64, i32*, %struct.hmm_range* }
%struct.hmm_range = type { i32*, i32* }

@HMM_PFN_NONE = common dso_local global i64 0, align 8
@HMM_PFN_VALID = common dso_local global i64 0, align 8
@HMM_PFN_DEVICE_PRIVATE = common dso_local global i64 0, align 8
@HMM_PFN_WRITE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@HMM_PFN_ERROR = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@CONFIG_ARCH_HAS_PTE_SPECIAL = common dso_local global i32 0, align 4
@HMM_PFN_SPECIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_walk*, i64, i64, i32*, i32*, i32*)* @hmm_vma_handle_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmm_vma_handle_pte(%struct.mm_walk* %0, i64 %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_walk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.hmm_vma_walk*, align 8
  %15 = alloca %struct.hmm_range*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mm_walk* %0, %struct.mm_walk** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %23 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %22, i32 0, i32 1
  %24 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %23, align 8
  store %struct.hmm_vma_walk* %24, %struct.hmm_vma_walk** %14, align 8
  %25 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %26 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %25, i32 0, i32 2
  %27 = load %struct.hmm_range*, %struct.hmm_range** %26, align 8
  store %struct.hmm_range* %27, %struct.hmm_range** %15, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %20, align 4
  %32 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %33 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @HMM_PFN_NONE, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %13, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %39 = load i32, i32* %19, align 4
  %40 = call i64 @pte_none(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %6
  %43 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @hmm_pte_need_fault(%struct.hmm_vma_walk* %43, i32 %44, i32 0, i32* %16, i32* %17)
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %42
  br label %233

52:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %254

53:                                               ; preds = %6
  %54 = load i32, i32* %19, align 4
  %55 = call i32 @pte_present(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %166, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @pte_to_swp_entry(i32 %58)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @non_swap_entry(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @pte_to_hmm_pfn_flags(%struct.hmm_range* %64, i32 %65)
  store i32 %66, i32* %18, align 4
  %67 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %18, align 4
  %70 = call i32 @hmm_pte_need_fault(%struct.hmm_vma_walk* %67, i32 %68, i32 %69, i32* %16, i32* %17)
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %63
  br label %233

77:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %254

78:                                               ; preds = %57
  %79 = load i32, i32* %21, align 4
  %80 = call i64 @is_device_private_entry(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %78
  %83 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %84 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @HMM_PFN_VALID, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %90 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @HMM_PFN_DEVICE_PRIVATE, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %88, %94
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %21, align 4
  %97 = call i64 @is_write_device_private_entry(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %82
  %100 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %101 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @HMM_PFN_WRITE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  br label %107

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106, %99
  %108 = phi i32 [ %105, %99 ], [ 0, %106 ]
  %109 = load i32, i32* %18, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %18, align 4
  %111 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i32 @hmm_pte_need_fault(%struct.hmm_vma_walk* %111, i32 %112, i32 %113, i32* %16, i32* %17)
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %17, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %107
  br label %233

121:                                              ; preds = %117
  %122 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %123 = load i32, i32* %21, align 4
  %124 = call i32 @swp_offset(i32 %123)
  %125 = call i32 @hmm_device_entry_from_pfn(%struct.hmm_range* %122, i32 %124)
  %126 = load i32*, i32** %13, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %127
  store i32 %130, i32* %128, align 4
  store i32 0, i32* %7, align 4
  br label %254

131:                                              ; preds = %78
  %132 = load i32, i32* %21, align 4
  %133 = call i64 @is_migration_entry(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %131
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %138, %135
  %142 = load i32*, i32** %12, align 8
  %143 = call i32 @pte_unmap(i32* %142)
  %144 = load i64, i64* %9, align 8
  %145 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %146 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %148 = getelementptr inbounds %struct.mm_walk, %struct.mm_walk* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @migration_entry_wait(i32 %149, i32* %150, i64 %151)
  %153 = load i32, i32* @EBUSY, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %7, align 4
  br label %254

155:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %254

156:                                              ; preds = %131
  %157 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %158 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @HMM_PFN_ERROR, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* @EFAULT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %7, align 4
  br label %254

166:                                              ; preds = %53
  %167 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %168 = load i32, i32* %19, align 4
  %169 = call i32 @pte_to_hmm_pfn_flags(%struct.hmm_range* %167, i32 %168)
  store i32 %169, i32* %18, align 4
  %170 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @hmm_pte_need_fault(%struct.hmm_vma_walk* %170, i32 %171, i32 %172, i32* %16, i32* %17)
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177, %174
  br label %233

181:                                              ; preds = %177
  %182 = load i32, i32* %19, align 4
  %183 = call i64 @pte_devmap(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %181
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @pte_pfn(i32 %186)
  %188 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %189 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32* @get_dev_pagemap(i32 %187, i32* %190)
  %192 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %193 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %192, i32 0, i32 1
  store i32* %191, i32** %193, align 8
  %194 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %195 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %185
  %203 = load i32, i32* @EBUSY, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %7, align 4
  br label %254

205:                                              ; preds = %185
  br label %225

206:                                              ; preds = %181
  %207 = load i32, i32* @CONFIG_ARCH_HAS_PTE_SPECIAL, align 4
  %208 = call i64 @IS_ENABLED(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %206
  %211 = load i32, i32* %19, align 4
  %212 = call i64 @pte_special(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %210
  %215 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %216 = getelementptr inbounds %struct.hmm_range, %struct.hmm_range* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* @HMM_PFN_SPECIAL, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %13, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @EFAULT, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %7, align 4
  br label %254

224:                                              ; preds = %210, %206
  br label %225

225:                                              ; preds = %224, %205
  %226 = load %struct.hmm_range*, %struct.hmm_range** %15, align 8
  %227 = load i32, i32* %19, align 4
  %228 = call i32 @pte_pfn(i32 %227)
  %229 = call i32 @hmm_device_entry_from_pfn(%struct.hmm_range* %226, i32 %228)
  %230 = load i32, i32* %18, align 4
  %231 = or i32 %229, %230
  %232 = load i32*, i32** %13, align 8
  store i32 %231, i32* %232, align 4
  store i32 0, i32* %7, align 4
  br label %254

233:                                              ; preds = %180, %120, %76, %51
  %234 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %235 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %245

238:                                              ; preds = %233
  %239 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %240 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @put_dev_pagemap(i32* %241)
  %243 = load %struct.hmm_vma_walk*, %struct.hmm_vma_walk** %14, align 8
  %244 = getelementptr inbounds %struct.hmm_vma_walk, %struct.hmm_vma_walk* %243, i32 0, i32 1
  store i32* null, i32** %244, align 8
  br label %245

245:                                              ; preds = %238, %233
  %246 = load i32*, i32** %12, align 8
  %247 = call i32 @pte_unmap(i32* %246)
  %248 = load i64, i64* %9, align 8
  %249 = load i64, i64* %10, align 8
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %17, align 4
  %252 = load %struct.mm_walk*, %struct.mm_walk** %8, align 8
  %253 = call i32 @hmm_vma_walk_hole_(i64 %248, i64 %249, i32 %250, i32 %251, %struct.mm_walk* %252)
  store i32 %253, i32* %7, align 4
  br label %254

254:                                              ; preds = %245, %225, %214, %202, %156, %155, %141, %121, %77, %52
  %255 = load i32, i32* %7, align 4
  ret i32 %255
}

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @hmm_pte_need_fault(%struct.hmm_vma_walk*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @non_swap_entry(i32) #1

declare dso_local i32 @pte_to_hmm_pfn_flags(%struct.hmm_range*, i32) #1

declare dso_local i64 @is_device_private_entry(i32) #1

declare dso_local i64 @is_write_device_private_entry(i32) #1

declare dso_local i32 @hmm_device_entry_from_pfn(%struct.hmm_range*, i32) #1

declare dso_local i32 @swp_offset(i32) #1

declare dso_local i64 @is_migration_entry(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

declare dso_local i32 @migration_entry_wait(i32, i32*, i64) #1

declare dso_local i64 @pte_devmap(i32) #1

declare dso_local i32* @get_dev_pagemap(i32, i32*) #1

declare dso_local i32 @pte_pfn(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @pte_special(i32) #1

declare dso_local i32 @put_dev_pagemap(i32*) #1

declare dso_local i32 @hmm_vma_walk_hole_(i64, i64, i32, i32, %struct.mm_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
