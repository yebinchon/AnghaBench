; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mprotect.c_mprotect_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mprotect.c_mprotect_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32, i32, i32, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_MIXEDMAP = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@prot_none_walk_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_ACCOUNT = common dso_local global i64 0, align 8
@VM_HUGETLB = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i64 0, align 8
@VM_NORESERVE = common dso_local global i64 0, align 8
@VM_SOFTDIRTY = common dso_local global i64 0, align 8
@VM_LOCKED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mprotect_fixup(%struct.vm_area_struct* %0, %struct.vm_area_struct** %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.vm_area_struct**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct** %1, %struct.vm_area_struct*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 8
  %22 = load %struct.mm_struct*, %struct.mm_struct** %21, align 8
  store %struct.mm_struct* %22, %struct.mm_struct** %12, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = sub i64 %26, %27
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = lshr i64 %28, %29
  store i64 %30, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %18, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %13, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %36 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %35, %struct.vm_area_struct** %36, align 8
  store i32 0, i32* %6, align 4
  br label %254

37:                                               ; preds = %5
  %38 = call i64 (...) @arch_has_pfn_modify_check()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @VM_PFNMAP, align 4
  %45 = load i32, i32* @VM_MIXEDMAP, align 4
  %46 = or i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = and i64 %43, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %40
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @VM_READ, align 8
  %53 = load i64, i64* @VM_WRITE, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* @VM_EXEC, align 8
  %56 = or i64 %54, %55
  %57 = and i64 %51, %56
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @vm_get_page_prot(i64 %60)
  store i32 %61, i32* %19, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @walk_page_range(i32 %64, i64 %65, i64 %66, i32* @prot_none_walk_ops, i32* %19)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %6, align 4
  br label %254

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %50, %40, %37
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @VM_WRITE, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %73
  %79 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @may_expand_vm(%struct.mm_struct* %79, i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %78
  %85 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i64 @may_expand_vm(%struct.mm_struct* %85, i64 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %254

93:                                               ; preds = %84, %78
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @VM_ACCOUNT, align 8
  %96 = load i64, i64* @VM_WRITE, align 8
  %97 = or i64 %95, %96
  %98 = load i64, i64* @VM_HUGETLB, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* @VM_SHARED, align 8
  %101 = or i64 %99, %100
  %102 = load i64, i64* @VM_NORESERVE, align 8
  %103 = or i64 %101, %102
  %104 = and i64 %94, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %93
  %107 = load i64, i64* %14, align 8
  store i64 %107, i64* %15, align 8
  %108 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %254

115:                                              ; preds = %106
  %116 = load i64, i64* @VM_ACCOUNT, align 8
  %117 = load i64, i64* %11, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %115, %93
  br label %120

120:                                              ; preds = %119, %73
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %124, %127
  %129 = load i64, i64* @PAGE_SHIFT, align 8
  %130 = lshr i64 %128, %129
  %131 = add i64 %123, %130
  store i64 %131, i64* %16, align 8
  %132 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %133 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %134 = load %struct.vm_area_struct*, %struct.vm_area_struct** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %146 = call i32 @vma_policy(%struct.vm_area_struct* %145)
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %132, %struct.vm_area_struct* %134, i64 %135, i64 %136, i64 %137, i32 %140, i32 %143, i64 %144, i32 %146, i32 %149)
  %151 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %150, %struct.vm_area_struct** %151, align 8
  %152 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %152, align 8
  %154 = icmp ne %struct.vm_area_struct* %153, null
  br i1 %154, label %155, label %167

155:                                              ; preds = %120
  %156 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  %157 = load %struct.vm_area_struct*, %struct.vm_area_struct** %156, align 8
  store %struct.vm_area_struct* %157, %struct.vm_area_struct** %7, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = xor i64 %160, %161
  %163 = load i64, i64* @VM_SOFTDIRTY, align 8
  %164 = xor i64 %163, -1
  %165 = and i64 %162, %164
  %166 = call i32 @VM_WARN_ON(i64 %165)
  br label %200

167:                                              ; preds = %120
  %168 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %169 = load %struct.vm_area_struct**, %struct.vm_area_struct*** %8, align 8
  store %struct.vm_area_struct* %168, %struct.vm_area_struct** %169, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %172 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %167
  %176 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %178 = load i64, i64* %9, align 8
  %179 = call i32 @split_vma(%struct.mm_struct* %176, %struct.vm_area_struct* %177, i64 %178, i32 1)
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %17, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %250

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %167
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %187 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %185, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %184
  %191 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %192 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %193 = load i64, i64* %10, align 8
  %194 = call i32 @split_vma(%struct.mm_struct* %191, %struct.vm_area_struct* %192, i64 %193, i32 0)
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %250

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %184
  br label %200

200:                                              ; preds = %199, %155
  %201 = load i64, i64* %11, align 8
  %202 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %203 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  %204 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %206 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @vma_wants_writenotify(%struct.vm_area_struct* %204, i32 %207)
  store i32 %208, i32* %18, align 4
  %209 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %210 = call i32 @vma_set_page_prot(%struct.vm_area_struct* %209)
  %211 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %215 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @change_protection(%struct.vm_area_struct* %211, i64 %212, i64 %213, i32 %216, i32 %217, i32 0)
  %219 = load i64, i64* %13, align 8
  %220 = load i64, i64* @VM_WRITE, align 8
  %221 = load i64, i64* @VM_SHARED, align 8
  %222 = or i64 %220, %221
  %223 = load i64, i64* @VM_LOCKED, align 8
  %224 = or i64 %222, %223
  %225 = and i64 %219, %224
  %226 = load i64, i64* @VM_LOCKED, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %200
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* @VM_WRITE, align 8
  %231 = and i64 %229, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %10, align 8
  %237 = call i32 @populate_vma_page_range(%struct.vm_area_struct* %234, i64 %235, i64 %236, i32* null)
  br label %238

238:                                              ; preds = %233, %228, %200
  %239 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %240 = load i64, i64* %13, align 8
  %241 = load i64, i64* %14, align 8
  %242 = sub nsw i64 0, %241
  %243 = call i32 @vm_stat_account(%struct.mm_struct* %239, i64 %240, i64 %242)
  %244 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* %14, align 8
  %247 = call i32 @vm_stat_account(%struct.mm_struct* %244, i64 %245, i64 %246)
  %248 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %249 = call i32 @perf_event_mmap(%struct.vm_area_struct* %248)
  store i32 0, i32* %6, align 4
  br label %254

250:                                              ; preds = %197, %182
  %251 = load i64, i64* %15, align 8
  %252 = call i32 @vm_unacct_memory(i64 %251)
  %253 = load i32, i32* %17, align 4
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %250, %238, %112, %90, %70, %34
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local i64 @arch_has_pfn_modify_check(...) #1

declare dso_local i32 @vm_get_page_prot(i64) #1

declare dso_local i32 @walk_page_range(i32, i64, i64, i32*, i32*) #1

declare dso_local i64 @may_expand_vm(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @vma_policy(%struct.vm_area_struct*) #1

declare dso_local i32 @VM_WARN_ON(i64) #1

declare dso_local i32 @split_vma(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @vma_wants_writenotify(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @vma_set_page_prot(%struct.vm_area_struct*) #1

declare dso_local i32 @change_protection(%struct.vm_area_struct*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @populate_vma_page_range(%struct.vm_area_struct*, i64, i64, i32*) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
