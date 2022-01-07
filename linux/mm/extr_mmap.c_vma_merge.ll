; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_vma_merge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_vma_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { i64, i64, i64, i32, %struct.vm_area_struct* }
%struct.anon_vma = type { i32 }
%struct.file = type { i32 }
%struct.mempolicy = type { i32 }
%struct.vm_userfaultfd_ctx = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_SPECIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i64 %3, i64 %4, %struct.anon_vma* %5, %struct.file* %6, i64 %7, %struct.mempolicy* %8, i32 %9) #0 {
  %11 = alloca %struct.vm_area_struct*, align 8
  %12 = alloca %struct.vm_userfaultfd_ctx, align 4
  %13 = alloca %struct.mm_struct*, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.anon_vma*, align 8
  %19 = alloca %struct.file*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.mempolicy*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.vm_area_struct*, align 8
  %24 = alloca %struct.vm_area_struct*, align 8
  %25 = alloca i32, align 4
  %26 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %12, i32 0, i32 0
  store i32 %9, i32* %26, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %13, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store %struct.anon_vma* %5, %struct.anon_vma** %18, align 8
  store %struct.file* %6, %struct.file** %19, align 8
  store i64 %7, i64* %20, align 8
  store %struct.mempolicy* %8, %struct.mempolicy** %21, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* %15, align 8
  %29 = sub i64 %27, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %22, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* @VM_SPECIAL, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %10
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %11, align 8
  br label %256

37:                                               ; preds = %10
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %39 = icmp ne %struct.vm_area_struct* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 4
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %42, align 8
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %24, align 8
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %46 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %45, i32 0, i32 0
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %46, align 8
  store %struct.vm_area_struct* %47, %struct.vm_area_struct** %24, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  store %struct.vm_area_struct* %49, %struct.vm_area_struct** %23, align 8
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  %51 = icmp ne %struct.vm_area_struct* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 4
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %60, align 8
  store %struct.vm_area_struct* %61, %struct.vm_area_struct** %24, align 8
  br label %62

62:                                               ; preds = %58, %52, %48
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %64 = icmp ne %struct.vm_area_struct* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ule i64 %66, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @VM_WARN_ON(i32 %73)
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  %76 = icmp ne %struct.vm_area_struct* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  %80 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ugt i64 %78, %81
  br label %83

83:                                               ; preds = %77, %71
  %84 = phi i1 [ false, %71 ], [ %82, %77 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @VM_WARN_ON(i32 %85)
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp uge i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @VM_WARN_ON(i32 %90)
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %93 = icmp ne %struct.vm_area_struct* %92, null
  br i1 %93, label %94, label %185

94:                                               ; preds = %83
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %15, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %185

100:                                              ; preds = %94
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %102 = call %struct.mempolicy* @vma_policy(%struct.vm_area_struct* %101)
  %103 = load %struct.mempolicy*, %struct.mempolicy** %21, align 8
  %104 = call i64 @mpol_equal(%struct.mempolicy* %102, %struct.mempolicy* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %185

106:                                              ; preds = %100
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.anon_vma*, %struct.anon_vma** %18, align 8
  %110 = load %struct.file*, %struct.file** %19, align 8
  %111 = load i64, i64* %20, align 8
  %112 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @can_vma_merge_after(%struct.vm_area_struct* %107, i64 %108, %struct.anon_vma* %109, %struct.file* %110, i64 %111, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %185

116:                                              ; preds = %106
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %118 = icmp ne %struct.vm_area_struct* %117, null
  br i1 %118, label %119, label %165

119:                                              ; preds = %116
  %120 = load i64, i64* %16, align 8
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %165

125:                                              ; preds = %119
  %126 = load %struct.mempolicy*, %struct.mempolicy** %21, align 8
  %127 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %128 = call %struct.mempolicy* @vma_policy(%struct.vm_area_struct* %127)
  %129 = call i64 @mpol_equal(%struct.mempolicy* %126, %struct.mempolicy* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %165

131:                                              ; preds = %125
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %133 = load i64, i64* %17, align 8
  %134 = load %struct.anon_vma*, %struct.anon_vma** %18, align 8
  %135 = load %struct.file*, %struct.file** %19, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %22, align 8
  %138 = add i64 %136, %137
  %139 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %12, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @can_vma_merge_before(%struct.vm_area_struct* %132, i64 %133, %struct.anon_vma* %134, %struct.file* %135, i64 %138, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %131
  %144 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %145 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @is_mergeable_anon_vma(i32 %146, i32 %149, i32* null)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %143
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %158 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %161 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %164 = call i32 @__vma_adjust(%struct.vm_area_struct* %153, i64 %156, i64 %159, i64 %162, i32* null, %struct.vm_area_struct* %163)
  store i32 %164, i32* %25, align 4
  br label %176

165:                                              ; preds = %143, %131, %125, %119, %116
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %168 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %172 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %175 = call i32 @__vma_adjust(%struct.vm_area_struct* %166, i64 %169, i64 %170, i64 %173, i32* null, %struct.vm_area_struct* %174)
  store i32 %175, i32* %25, align 4
  br label %176

176:                                              ; preds = %165, %152
  %177 = load i32, i32* %25, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %11, align 8
  br label %256

180:                                              ; preds = %176
  %181 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %182 = load i64, i64* %17, align 8
  %183 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %181, i64 %182)
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  store %struct.vm_area_struct* %184, %struct.vm_area_struct** %11, align 8
  br label %256

185:                                              ; preds = %106, %100, %94, %83
  %186 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %187 = icmp ne %struct.vm_area_struct* %186, null
  br i1 %187, label %188, label %255

188:                                              ; preds = %185
  %189 = load i64, i64* %16, align 8
  %190 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %191 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %255

194:                                              ; preds = %188
  %195 = load %struct.mempolicy*, %struct.mempolicy** %21, align 8
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %197 = call %struct.mempolicy* @vma_policy(%struct.vm_area_struct* %196)
  %198 = call i64 @mpol_equal(%struct.mempolicy* %195, %struct.mempolicy* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %255

200:                                              ; preds = %194
  %201 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %202 = load i64, i64* %17, align 8
  %203 = load %struct.anon_vma*, %struct.anon_vma** %18, align 8
  %204 = load %struct.file*, %struct.file** %19, align 8
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* %22, align 8
  %207 = add i64 %205, %206
  %208 = getelementptr inbounds %struct.vm_userfaultfd_ctx, %struct.vm_userfaultfd_ctx* %12, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @can_vma_merge_before(%struct.vm_area_struct* %201, i64 %202, %struct.anon_vma* %203, %struct.file* %204, i64 %207, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %255

212:                                              ; preds = %200
  %213 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %214 = icmp ne %struct.vm_area_struct* %213, null
  br i1 %214, label %215, label %232

215:                                              ; preds = %212
  %216 = load i64, i64* %15, align 8
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %218 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ult i64 %216, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %215
  %222 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %223 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %224 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %15, align 8
  %227 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %228 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %231 = call i32 @__vma_adjust(%struct.vm_area_struct* %222, i64 %225, i64 %226, i64 %229, i32* null, %struct.vm_area_struct* %230)
  store i32 %231, i32* %25, align 4
  br label %246

232:                                              ; preds = %215, %212
  %233 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  %234 = load i64, i64* %15, align 8
  %235 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %236 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %239 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %22, align 8
  %242 = sub i64 %240, %241
  %243 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  %244 = call i32 @__vma_adjust(%struct.vm_area_struct* %233, i64 %234, i64 %237, i64 %242, i32* null, %struct.vm_area_struct* %243)
  store i32 %244, i32* %25, align 4
  %245 = load %struct.vm_area_struct*, %struct.vm_area_struct** %24, align 8
  store %struct.vm_area_struct* %245, %struct.vm_area_struct** %23, align 8
  br label %246

246:                                              ; preds = %232, %221
  %247 = load i32, i32* %25, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %11, align 8
  br label %256

250:                                              ; preds = %246
  %251 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  %252 = load i64, i64* %17, align 8
  %253 = call i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct* %251, i64 %252)
  %254 = load %struct.vm_area_struct*, %struct.vm_area_struct** %23, align 8
  store %struct.vm_area_struct* %254, %struct.vm_area_struct** %11, align 8
  br label %256

255:                                              ; preds = %200, %194, %188, %185
  store %struct.vm_area_struct* null, %struct.vm_area_struct** %11, align 8
  br label %256

256:                                              ; preds = %255, %250, %249, %180, %179, %36
  %257 = load %struct.vm_area_struct*, %struct.vm_area_struct** %11, align 8
  ret %struct.vm_area_struct* %257
}

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i64 @mpol_equal(%struct.mempolicy*, %struct.mempolicy*) #1

declare dso_local %struct.mempolicy* @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i64 @can_vma_merge_after(%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64, i32) #1

declare dso_local i64 @can_vma_merge_before(%struct.vm_area_struct*, i64, %struct.anon_vma*, %struct.file*, i64, i32) #1

declare dso_local i64 @is_mergeable_anon_vma(i32, i32, i32*) #1

declare dso_local i32 @__vma_adjust(%struct.vm_area_struct*, i64, i64, i64, i32*, %struct.vm_area_struct*) #1

declare dso_local i32 @khugepaged_enter_vma_merge(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
