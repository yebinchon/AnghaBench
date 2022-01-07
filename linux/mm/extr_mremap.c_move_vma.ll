; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mremap.c_move_vma.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mremap.c_move_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.mm_struct* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.vm_area_struct*)* }
%struct.mm_struct = type { i32, i64, i64 }
%struct.vm_userfaultfd_ctx = type { i32 }
%struct.list_head = type { i32 }

@sysctl_max_map_count = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@MADV_UNMERGEABLE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i64 0, align 8
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_area_struct*, i64, i64, i64, i64, i32*, %struct.vm_userfaultfd_ctx*, %struct.list_head*)* @move_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @move_vma(%struct.vm_area_struct* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5, %struct.vm_userfaultfd_ctx* %6, %struct.list_head* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.vm_userfaultfd_ctx*, align 8
  %17 = alloca %struct.list_head*, align 8
  %18 = alloca %struct.mm_struct*, align 8
  %19 = alloca %struct.vm_area_struct*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.vm_userfaultfd_ctx* %6, %struct.vm_userfaultfd_ctx** %16, align 8
  store %struct.list_head* %7, %struct.list_head** %17, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 6
  %30 = load %struct.mm_struct*, %struct.mm_struct** %29, align 8
  store %struct.mm_struct* %30, %struct.mm_struct** %18, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %20, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %25, align 4
  %34 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @sysctl_max_map_count, align 4
  %38 = sub nsw i32 %37, 3
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %8
  %41 = load i64, i64* @ENOMEM, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %9, align 8
  br label %254

43:                                               ; preds = %8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %46, %47
  %49 = load i32, i32* @MADV_UNMERGEABLE, align 4
  %50 = call i32 @ksm_madvise(%struct.vm_area_struct* %44, i64 %45, i64 %48, i32 %49, i64* %20)
  store i32 %50, i32* %26, align 4
  %51 = load i32, i32* %26, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %26, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %9, align 8
  br label %254

56:                                               ; preds = %43
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %60, %63
  %65 = load i64, i64* @PAGE_SHIFT, align 8
  %66 = lshr i64 %64, %65
  %67 = add i64 %59, %66
  store i64 %67, i64* %21, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %21, align 8
  %71 = call %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct** %10, i64 %68, i64 %69, i64 %70, i32* %27)
  store %struct.vm_area_struct* %71, %struct.vm_area_struct** %19, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %73 = icmp ne %struct.vm_area_struct* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %56
  %75 = load i64, i64* @ENOMEM, align 8
  %76 = sub i64 0, %75
  store i64 %76, i64* %9, align 8
  br label %254

77:                                               ; preds = %56
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %27, align 4
  %84 = call i64 @move_page_tables(%struct.vm_area_struct* %78, i64 %79, %struct.vm_area_struct* %80, i64 %81, i64 %82, i32 %83)
  store i64 %84, i64* %22, align 8
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load i64, i64* @ENOMEM, align 8
  %90 = sub i64 0, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %26, align 4
  br label %113

92:                                               ; preds = %77
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 5
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = icmp ne %struct.TYPE_3__* %95, null
  br i1 %96, label %97, label %112

97:                                               ; preds = %92
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 5
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %101, align 8
  %103 = icmp ne i32 (%struct.vm_area_struct*)* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %106 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %105, i32 0, i32 5
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %108, align 8
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %111 = call i32 %109(%struct.vm_area_struct* %110)
  store i32 %111, i32* %26, align 4
  br label %112

112:                                              ; preds = %104, %97, %92
  br label %113

113:                                              ; preds = %112, %88
  %114 = load i32, i32* %26, align 4
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %22, align 8
  %123 = call i64 @move_page_tables(%struct.vm_area_struct* %118, i64 %119, %struct.vm_area_struct* %120, i64 %121, i64 %122, i32 1)
  %124 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  store %struct.vm_area_struct* %124, %struct.vm_area_struct** %10, align 8
  %125 = load i64, i64* %13, align 8
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %14, align 8
  store i64 %126, i64* %11, align 8
  %127 = load i32, i32* %26, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %14, align 8
  br label %143

129:                                              ; preds = %113
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %19, align 8
  %131 = load %struct.vm_userfaultfd_ctx*, %struct.vm_userfaultfd_ctx** %16, align 8
  %132 = call i32 @mremap_userfaultfd_prep(%struct.vm_area_struct* %130, %struct.vm_userfaultfd_ctx* %131)
  %133 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %135, %136
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %139, %140
  %142 = call i32 @arch_remap(%struct.mm_struct* %133, i64 %134, i64 %137, i64 %138, i64 %141)
  br label %143

143:                                              ; preds = %129, %117
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* @VM_ACCOUNT, align 8
  %146 = and i64 %144, %145
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %143
  %149 = load i64, i64* @VM_ACCOUNT, align 8
  %150 = xor i64 %149, -1
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %152 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = and i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %156 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = sub i64 %157, %160
  %162 = load i64, i64* %12, align 8
  %163 = sub i64 %161, %162
  store i64 %163, i64* %23, align 8
  %164 = load i64, i64* %11, align 8
  %165 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %166 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ugt i64 %164, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %148
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %12, align 8
  %172 = add i64 %170, %171
  %173 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %174 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  store i32 1, i32* %25, align 4
  br label %178

178:                                              ; preds = %177, %169, %148
  br label %179

179:                                              ; preds = %178, %143
  %180 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %181 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %24, align 8
  %183 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %185 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* @PAGE_SHIFT, align 8
  %189 = lshr i64 %187, %188
  %190 = call i32 @vm_stat_account(%struct.mm_struct* %183, i64 %186, i64 %189)
  %191 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %192 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @VM_PFNMAP, align 4
  %195 = sext i32 %194 to i64
  %196 = and i64 %193, %195
  %197 = trunc i64 %196 to i32
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %179
  %201 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %202 = call i32 @untrack_pfn_moved(%struct.vm_area_struct* %201)
  br label %203

203:                                              ; preds = %200, %179
  %204 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load i64, i64* %12, align 8
  %207 = load %struct.list_head*, %struct.list_head** %17, align 8
  %208 = call i64 @do_munmap(%struct.mm_struct* %204, i64 %205, i64 %206, %struct.list_head* %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load i64, i64* %23, align 8
  %212 = load i64, i64* @PAGE_SHIFT, align 8
  %213 = lshr i64 %211, %212
  %214 = call i32 @vm_unacct_memory(i64 %213)
  store i64 0, i64* %23, align 8
  br label %215

215:                                              ; preds = %210, %203
  %216 = load i64, i64* %24, align 8
  %217 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %218 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load i64, i64* %23, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %215
  %222 = load i64, i64* @VM_ACCOUNT, align 8
  %223 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %224 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = or i64 %225, %222
  store i64 %226, i64* %224, align 8
  %227 = load i32, i32* %25, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %221
  %230 = load i64, i64* @VM_ACCOUNT, align 8
  %231 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %232 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %231, i32 0, i32 4
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = or i64 %235, %230
  store i64 %236, i64* %234, align 8
  br label %237

237:                                              ; preds = %229, %221
  br label %238

238:                                              ; preds = %237, %215
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* @VM_LOCKED, align 8
  %241 = and i64 %239, %240
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %252

243:                                              ; preds = %238
  %244 = load i64, i64* %13, align 8
  %245 = load i64, i64* @PAGE_SHIFT, align 8
  %246 = lshr i64 %244, %245
  %247 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  %248 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = add i64 %249, %246
  store i64 %250, i64* %248, align 8
  %251 = load i32*, i32** %15, align 8
  store i32 1, i32* %251, align 4
  br label %252

252:                                              ; preds = %243, %238
  %253 = load i64, i64* %14, align 8
  store i64 %253, i64* %9, align 8
  br label %254

254:                                              ; preds = %252, %74, %53, %40
  %255 = load i64, i64* %9, align 8
  ret i64 %255
}

declare dso_local i32 @ksm_madvise(%struct.vm_area_struct*, i64, i64, i32, i64*) #1

declare dso_local %struct.vm_area_struct* @copy_vma(%struct.vm_area_struct**, i64, i64, i64, i32*) #1

declare dso_local i64 @move_page_tables(%struct.vm_area_struct*, i64, %struct.vm_area_struct*, i64, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mremap_userfaultfd_prep(%struct.vm_area_struct*, %struct.vm_userfaultfd_ctx*) #1

declare dso_local i32 @arch_remap(%struct.mm_struct*, i64, i64, i64, i64) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @untrack_pfn_moved(%struct.vm_area_struct*) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64, %struct.list_head*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
