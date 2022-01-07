; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_fault.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }
%struct.hstate = type { i32 }

@VM_FAULT_HWPOISON_LARGE = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@hugetlb_fault_mutex_table = common dso_local global i32* null, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugetlb_fault(%struct.mm_struct* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.hstate*, align 8
  %19 = alloca %struct.address_space*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.page* null, %struct.page** %16, align 8
  store %struct.page* null, %struct.page** %17, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %23 = call %struct.hstate* @hstate_vma(%struct.vm_area_struct* %22)
  store %struct.hstate* %23, %struct.hstate** %18, align 8
  store i32 0, i32* %20, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.hstate*, %struct.hstate** %18, align 8
  %26 = call i64 @huge_page_mask(%struct.hstate* %25)
  %27 = and i64 %24, %26
  store i64 %27, i64* %21, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %29 = load i64, i64* %21, align 8
  %30 = load %struct.hstate*, %struct.hstate** %18, align 8
  %31 = call i32 @huge_page_size(%struct.hstate* %30)
  %32 = call i32* @huge_pte_offset(%struct.mm_struct* %28, i64 %29, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @huge_ptep_get(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @is_hugetlb_entry_migration(i32 %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @migration_entry_wait_huge(%struct.vm_area_struct* %43, %struct.mm_struct* %44, i32* %45)
  store i32 0, i32* %5, align 4
  br label %243

47:                                               ; preds = %35
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @is_hugetlb_entry_hwpoisoned(i32 %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @VM_FAULT_HWPOISON_LARGE, align 4
  %54 = load %struct.hstate*, %struct.hstate** %18, align 8
  %55 = call i32 @hstate_index(%struct.hstate* %54)
  %56 = call i32 @VM_FAULT_SET_HINDEX(i32 %55)
  %57 = or i32 %53, %56
  store i32 %57, i32* %5, align 4
  br label %243

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  br label %71

60:                                               ; preds = %4
  %61 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %62 = load i64, i64* %21, align 8
  %63 = load %struct.hstate*, %struct.hstate** %18, align 8
  %64 = call i32 @huge_page_size(%struct.hstate* %63)
  %65 = call i32* @huge_pte_alloc(%struct.mm_struct* %61, i64 %62, i32 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %69, i32* %5, align 4
  br label %243

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.address_space*, %struct.address_space** %75, align 8
  store %struct.address_space* %76, %struct.address_space** %19, align 8
  %77 = load %struct.hstate*, %struct.hstate** %18, align 8
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %79 = load i64, i64* %21, align 8
  %80 = call i32 @vma_hugecache_offset(%struct.hstate* %77, %struct.vm_area_struct* %78, i64 %79)
  store i32 %80, i32* %15, align 4
  %81 = load %struct.hstate*, %struct.hstate** %18, align 8
  %82 = load %struct.address_space*, %struct.address_space** %19, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i64, i64* %21, align 8
  %85 = call i64 @hugetlb_fault_mutex_hash(%struct.hstate* %81, %struct.address_space* %82, i32 %83, i64 %84)
  store i64 %85, i64* %14, align 8
  %86 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @huge_ptep_get(i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i64 @huge_pte_none(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %71
  %96 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %98 = load %struct.address_space*, %struct.address_space** %19, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i64, i64* %8, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @hugetlb_no_page(%struct.mm_struct* %96, %struct.vm_area_struct* %97, %struct.address_space* %98, i32 %99, i64 %100, i32* %101, i32 %102)
  store i32 %103, i32* %13, align 4
  br label %231

104:                                              ; preds = %71
  store i32 0, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @pte_present(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %231

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @huge_pte_write(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %114
  %119 = load %struct.hstate*, %struct.hstate** %18, align 8
  %120 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %121 = load i64, i64* %21, align 8
  %122 = call i64 @vma_needs_reservation(%struct.hstate* %119, %struct.vm_area_struct* %120, i64 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %125, i32* %13, align 4
  br label %231

126:                                              ; preds = %118
  %127 = load %struct.hstate*, %struct.hstate** %18, align 8
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %129 = load i64, i64* %21, align 8
  %130 = call i32 @vma_end_reservation(%struct.hstate* %127, %struct.vm_area_struct* %128, i64 %129)
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @VM_MAYSHARE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %126
  %138 = load %struct.hstate*, %struct.hstate** %18, align 8
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %140 = load i64, i64* %21, align 8
  %141 = call %struct.page* @hugetlbfs_pagecache_page(%struct.hstate* %138, %struct.vm_area_struct* %139, i64 %140)
  store %struct.page* %141, %struct.page** %17, align 8
  br label %142

142:                                              ; preds = %137, %126
  br label %143

143:                                              ; preds = %142, %114, %109
  %144 = load %struct.hstate*, %struct.hstate** %18, align 8
  %145 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = call i32* @huge_pte_lock(%struct.hstate* %144, %struct.mm_struct* %145, i32* %146)
  store i32* %147, i32** %12, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @huge_ptep_get(i32* %149)
  %151 = call i32 @pte_same(i32 %148, i32 %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %220

158:                                              ; preds = %143
  %159 = load i32, i32* %11, align 4
  %160 = call %struct.page* @pte_page(i32 %159)
  store %struct.page* %160, %struct.page** %16, align 8
  %161 = load %struct.page*, %struct.page** %16, align 8
  %162 = load %struct.page*, %struct.page** %17, align 8
  %163 = icmp ne %struct.page* %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.page*, %struct.page** %16, align 8
  %166 = call i32 @trylock_page(%struct.page* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  store i32 1, i32* %20, align 4
  br label %220

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %158
  %171 = load %struct.page*, %struct.page** %16, align 8
  %172 = call i32 @get_page(%struct.page* %171)
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @huge_pte_write(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %177
  %182 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load %struct.page*, %struct.page** %17, align 8
  %187 = load i32*, i32** %12, align 8
  %188 = call i32 @hugetlb_cow(%struct.mm_struct* %182, %struct.vm_area_struct* %183, i64 %184, i32* %185, %struct.page* %186, i32* %187)
  store i32 %188, i32* %13, align 4
  br label %210

189:                                              ; preds = %177
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @huge_pte_mkdirty(i32 %190)
  store i32 %191, i32* %11, align 4
  br label %192

192:                                              ; preds = %189, %170
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @pte_mkyoung(i32 %193)
  store i32 %194, i32* %11, align 4
  %195 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %196 = load i64, i64* %21, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %201 = and i32 %199, %200
  %202 = call i64 @huge_ptep_set_access_flags(%struct.vm_area_struct* %195, i64 %196, i32* %197, i32 %198, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %192
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load i32*, i32** %10, align 8
  %208 = call i32 @update_mmu_cache(%struct.vm_area_struct* %205, i64 %206, i32* %207)
  br label %209

209:                                              ; preds = %204, %192
  br label %210

210:                                              ; preds = %209, %181
  %211 = load %struct.page*, %struct.page** %16, align 8
  %212 = load %struct.page*, %struct.page** %17, align 8
  %213 = icmp ne %struct.page* %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.page*, %struct.page** %16, align 8
  %216 = call i32 @unlock_page(%struct.page* %215)
  br label %217

217:                                              ; preds = %214, %210
  %218 = load %struct.page*, %struct.page** %16, align 8
  %219 = call i32 @put_page(%struct.page* %218)
  br label %220

220:                                              ; preds = %217, %168, %157
  %221 = load i32*, i32** %12, align 8
  %222 = call i32 @spin_unlock(i32* %221)
  %223 = load %struct.page*, %struct.page** %17, align 8
  %224 = icmp ne %struct.page* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.page*, %struct.page** %17, align 8
  %227 = call i32 @unlock_page(%struct.page* %226)
  %228 = load %struct.page*, %struct.page** %17, align 8
  %229 = call i32 @put_page(%struct.page* %228)
  br label %230

230:                                              ; preds = %225, %220
  br label %231

231:                                              ; preds = %230, %124, %108, %95
  %232 = load i32*, i32** @hugetlb_fault_mutex_table, align 8
  %233 = load i64, i64* %14, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = call i32 @mutex_unlock(i32* %234)
  %236 = load i32, i32* %20, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load %struct.page*, %struct.page** %16, align 8
  %240 = call i32 @wait_on_page_locked(%struct.page* %239)
  br label %241

241:                                              ; preds = %238, %231
  %242 = load i32, i32* %13, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %241, %68, %52, %42
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local %struct.hstate* @hstate_vma(%struct.vm_area_struct*) #1

declare dso_local i64 @huge_page_mask(%struct.hstate*) #1

declare dso_local i32* @huge_pte_offset(%struct.mm_struct*, i64, i32) #1

declare dso_local i32 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_hugetlb_entry_migration(i32) #1

declare dso_local i32 @migration_entry_wait_huge(%struct.vm_area_struct*, %struct.mm_struct*, i32*) #1

declare dso_local i32 @is_hugetlb_entry_hwpoisoned(i32) #1

declare dso_local i32 @VM_FAULT_SET_HINDEX(i32) #1

declare dso_local i32 @hstate_index(%struct.hstate*) #1

declare dso_local i32* @huge_pte_alloc(%struct.mm_struct*, i64, i32) #1

declare dso_local i32 @vma_hugecache_offset(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i64 @hugetlb_fault_mutex_hash(%struct.hstate*, %struct.address_space*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @huge_pte_none(i32) #1

declare dso_local i32 @hugetlb_no_page(%struct.mm_struct*, %struct.vm_area_struct*, %struct.address_space*, i32, i64, i32*, i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @huge_pte_write(i32) #1

declare dso_local i64 @vma_needs_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @vma_end_reservation(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local %struct.page* @hugetlbfs_pagecache_page(%struct.hstate*, %struct.vm_area_struct*, i64) #1

declare dso_local i32* @huge_pte_lock(%struct.hstate*, %struct.mm_struct*, i32*) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local %struct.page* @pte_page(i32) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @hugetlb_cow(%struct.mm_struct*, %struct.vm_area_struct*, i64, i32*, %struct.page*, i32*) #1

declare dso_local i32 @huge_pte_mkdirty(i32) #1

declare dso_local i32 @pte_mkyoung(i32) #1

declare dso_local i64 @huge_ptep_set_access_flags(%struct.vm_area_struct*, i64, i32*, i32, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
