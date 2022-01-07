; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_numa_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_do_huge_pmd_numa_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, i32*, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32 }
%struct.anon_vma = type { i32 }
%struct.page = type { i32 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@NUMA_HINT_FAULTS = common dso_local global i32 0, align 4
@NUMA_HINT_FAULTS_LOCAL = common dso_local global i32 0, align 4
@TNF_FAULT_LOCAL = common dso_local global i32 0, align 4
@TNF_NO_GROUP = common dso_local global i32 0, align 4
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8
@TNF_MIGRATED = common dso_local global i32 0, align 4
@TNF_MIGRATE_FAIL = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_huge_pmd_numa_page(%struct.vm_fault* %0, i32 %1) #0 {
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.anon_vma*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %17, i32 0, i32 3
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %18, align 8
  store %struct.vm_area_struct* %19, %struct.vm_area_struct** %5, align 8
  store %struct.anon_vma* null, %struct.anon_vma** %6, align 8
  %20 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %21 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %25, i32* %9, align 4
  %26 = call i32 (...) @numa_node_id()
  store i32 %26, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %31 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @pmd_lock(i32 %29, i32* %32)
  %34 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %38 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pmd_same(i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %267

48:                                               ; preds = %2
  %49 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %50 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pmd_trans_migrating(i32 %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %48
  %57 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %58 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.page* @pmd_page(i32 %60)
  store %struct.page* %61, %struct.page** %7, align 8
  %62 = load %struct.page*, %struct.page** %7, align 8
  %63 = call i32 @get_page_unless_zero(%struct.page* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56
  br label %267

66:                                               ; preds = %56
  %67 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %68 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @spin_unlock(i32 %69)
  %71 = load %struct.page*, %struct.page** %7, align 8
  %72 = call i32 @put_and_wait_on_page_locked(%struct.page* %71)
  br label %272

73:                                               ; preds = %48
  %74 = load i32, i32* %4, align 4
  %75 = call %struct.page* @pmd_page(i32 %74)
  store %struct.page* %75, %struct.page** %7, align 8
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = call i32 @is_huge_zero_page(%struct.page* %76)
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = call i32 @page_to_nid(%struct.page* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.page*, %struct.page** %7, align 8
  %82 = call i32 @page_cpupid_last(%struct.page* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* @NUMA_HINT_FAULTS, align 4
  %84 = call i32 @count_vm_numa_event(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load i32, i32* @NUMA_HINT_FAULTS_LOCAL, align 4
  %90 = call i32 @count_vm_numa_event(i32 %89)
  %91 = load i32, i32* @TNF_FAULT_LOCAL, align 4
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %88, %73
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @pmd_savedwrite(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @TNF_NO_GROUP, align 4
  %100 = load i32, i32* %16, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.page*, %struct.page** %7, align 8
  %104 = call i32 @trylock_page(%struct.page* %103)
  store i32 %104, i32* %13, align 4
  %105 = load %struct.page*, %struct.page** %7, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @mpol_misplaced(%struct.page* %105, %struct.vm_area_struct* %106, i64 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @NUMA_NO_NODE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %226

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116, %102
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct.page*, %struct.page** %7, align 8
  %123 = call i32 @get_page_unless_zero(%struct.page* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %267

126:                                              ; preds = %120
  %127 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %128 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @spin_unlock(i32 %129)
  %131 = load %struct.page*, %struct.page** %7, align 8
  %132 = call i32 @put_and_wait_on_page_locked(%struct.page* %131)
  br label %272

133:                                              ; preds = %117
  %134 = load %struct.page*, %struct.page** %7, align 8
  %135 = call i32 @get_page(%struct.page* %134)
  %136 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %137 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @spin_unlock(i32 %138)
  %140 = load %struct.page*, %struct.page** %7, align 8
  %141 = call %struct.anon_vma* @page_lock_anon_vma_read(%struct.page* %140)
  store %struct.anon_vma* %141, %struct.anon_vma** %6, align 8
  %142 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %143 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @spin_lock(i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %148 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @pmd_same(i32 %146, i32 %150)
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %133
  %158 = load %struct.page*, %struct.page** %7, align 8
  %159 = call i32 @unlock_page(%struct.page* %158)
  %160 = load %struct.page*, %struct.page** %7, align 8
  %161 = call i32 @put_page(%struct.page* %160)
  %162 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %162, i32* %9, align 4
  br label %267

163:                                              ; preds = %133
  %164 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %165 = icmp ne %struct.anon_vma* %164, null
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.page*, %struct.page** %7, align 8
  %172 = call i32 @put_page(%struct.page* %171)
  %173 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %173, i32* %9, align 4
  br label %226

174:                                              ; preds = %163
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %176 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @mm_tlb_flush_pending(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %185 = add i64 %183, %184
  %186 = call i32 @flush_tlb_range(%struct.vm_area_struct* %181, i64 %182, i64 %185)
  %187 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %188 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* %8, align 8
  %192 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %193 = add i64 %191, %192
  %194 = call i32 @mmu_notifier_invalidate_range(i32 %189, i64 %190, i64 %193)
  br label %195

195:                                              ; preds = %180, %174
  %196 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %197 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @spin_unlock(i32 %198)
  %200 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %201 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %204 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %205 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %4, align 4
  %208 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %209 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.page*, %struct.page** %7, align 8
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @migrate_misplaced_transhuge_page(i32 %202, %struct.vm_area_struct* %203, i32* %206, i32 %207, i64 %210, %struct.page* %211, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %195
  %217 = load i32, i32* @TNF_MIGRATED, align 4
  %218 = load i32, i32* %16, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %11, align 4
  store i32 %220, i32* %9, align 4
  br label %225

221:                                              ; preds = %195
  %222 = load i32, i32* @TNF_MIGRATE_FAIL, align 4
  %223 = load i32, i32* %16, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %221, %216
  br label %272

226:                                              ; preds = %170, %115
  %227 = load %struct.page*, %struct.page** %7, align 8
  %228 = call i32 @PageLocked(%struct.page* %227)
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = call i32 @BUG_ON(i32 %231)
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @pmd_savedwrite(i32 %233)
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %4, align 4
  %236 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %237 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @pmd_modify(i32 %235, i32 %238)
  store i32 %239, i32* %4, align 4
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @pmd_mkyoung(i32 %240)
  store i32 %241, i32* %4, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %226
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @pmd_mkwrite(i32 %245)
  store i32 %246, i32* %4, align 4
  br label %247

247:                                              ; preds = %244, %226
  %248 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %249 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i64, i64* %8, align 8
  %252 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %253 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = call i32 @set_pmd_at(i32 %250, i64 %251, i32* %254, i32 %255)
  %257 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %258 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %259 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %262 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @update_mmu_cache_pmd(%struct.vm_area_struct* %257, i64 %260, i32* %263)
  %265 = load %struct.page*, %struct.page** %7, align 8
  %266 = call i32 @unlock_page(%struct.page* %265)
  br label %267

267:                                              ; preds = %247, %157, %125, %65, %47
  %268 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %269 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @spin_unlock(i32 %270)
  br label %272

272:                                              ; preds = %267, %225, %126, %66
  %273 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %274 = icmp ne %struct.anon_vma* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.anon_vma*, %struct.anon_vma** %6, align 8
  %277 = call i32 @page_unlock_anon_vma_read(%struct.anon_vma* %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @NUMA_NO_NODE, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %278
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @HPAGE_PMD_NR, align 4
  %286 = load i32, i32* %16, align 4
  %287 = call i32 @task_numa_fault(i32 %283, i32 %284, i32 %285, i32 %286)
  br label %288

288:                                              ; preds = %282, %278
  ret i32 0
}

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @pmd_lock(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_same(i32, i32) #1

declare dso_local i32 @pmd_trans_migrating(i32) #1

declare dso_local %struct.page* @pmd_page(i32) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @put_and_wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_huge_zero_page(%struct.page*) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @page_cpupid_last(%struct.page*) #1

declare dso_local i32 @count_vm_numa_event(i32) #1

declare dso_local i32 @pmd_savedwrite(i32) #1

declare dso_local i32 @trylock_page(%struct.page*) #1

declare dso_local i32 @mpol_misplaced(%struct.page*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_lock_anon_vma_read(%struct.page*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i64 @mm_tlb_flush_pending(i32) #1

declare dso_local i32 @flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mmu_notifier_invalidate_range(i32, i64, i64) #1

declare dso_local i32 @migrate_misplaced_transhuge_page(i32, %struct.vm_area_struct*, i32*, i32, i64, %struct.page*, i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @pmd_modify(i32, i32) #1

declare dso_local i32 @pmd_mkyoung(i32) #1

declare dso_local i32 @pmd_mkwrite(i32) #1

declare dso_local i32 @set_pmd_at(i32, i64, i32*, i32) #1

declare dso_local i32 @update_mmu_cache_pmd(%struct.vm_area_struct*, i64, i32*) #1

declare dso_local i32 @page_unlock_anon_vma_read(%struct.anon_vma*) #1

declare dso_local i32 @task_numa_fault(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
