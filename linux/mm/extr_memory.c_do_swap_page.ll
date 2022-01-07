; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_swap_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_swap_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_16__*, %struct.vm_area_struct* }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { {}* }
%struct.vm_area_struct = type { i32, i32, i32 }
%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.swap_info_struct = type { i32 }

@VM_FAULT_HWPOISON = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@DELAYACCT_PF_SWAPIN = common dso_local global i32 0, align 4
@SWP_SYNCHRONOUS_IO = common dso_local global i32 0, align 4
@GFP_HIGHUSER_MOVABLE = common dso_local global i32 0, align 4
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@PGMAJFAULT = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4
@MM_SWAPENTS = common dso_local global i32 0, align 4
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_FAULT_WRITE = common dso_local global i32 0, align 4
@RMAP_EXCLUSIVE = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_swap_page(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.swap_info_struct*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 7
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %22 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %28 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pte_unmap_same(i32 %20, i32 %23, i32* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %507

33:                                               ; preds = %1
  %34 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %35 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pte_to_swp_entry(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  %39 = bitcast %struct.TYPE_19__* %8 to i8*
  %40 = bitcast %struct.TYPE_19__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @non_swap_entry(i64 %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %105

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @is_migration_entry(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %56 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %59 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @migration_entry_wait(i32 %54, i32 %57, i32 %60)
  br label %104

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @is_device_private_entry(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call %struct.TYPE_16__* @device_private_entry_to_page(i64 %69)
  %71 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %72 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %71, i32 0, i32 6
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %72, align 8
  %73 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %74 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %73, i32 0, i32 6
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = bitcast {}** %80 to i32 (%struct.vm_fault*)**
  %82 = load i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)** %81, align 8
  %83 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %84 = call i32 %82(%struct.vm_fault* %83)
  store i32 %84, i32* %12, align 4
  br label %103

85:                                               ; preds = %62
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @is_hwpoison_entry(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  store i32 %91, i32* %12, align 4
  br label %102

92:                                               ; preds = %85
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %94 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %95 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @print_bad_pte(%struct.vm_area_struct* %93, i32 %96, i32 %99, i32* null)
  %101 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %92, %90
  br label %103

103:                                              ; preds = %102, %67
  br label %104

104:                                              ; preds = %103, %51
  br label %507

105:                                              ; preds = %33
  %106 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %107 = call i32 @delayacct_set_flag(i32 %106)
  %108 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %109 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %110 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call %struct.page* @lookup_swap_cache(i64 %113, %struct.vm_area_struct* %108, i32 %111)
  store %struct.page* %114, %struct.page** %5, align 8
  %115 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %115, %struct.page** %6, align 8
  %116 = load %struct.page*, %struct.page** %5, align 8
  %117 = icmp ne %struct.page* %116, null
  br i1 %117, label %206, label %118

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call %struct.swap_info_struct* @swp_swap_info(i64 %120)
  store %struct.swap_info_struct* %121, %struct.swap_info_struct** %14, align 8
  %122 = load %struct.swap_info_struct*, %struct.swap_info_struct** %14, align 8
  %123 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SWP_SYNCHRONOUS_IO, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @__swap_count(i64 %130)
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %136 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %137 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.page* @alloc_page_vma(i32 %134, %struct.vm_area_struct* %135, i32 %138)
  store %struct.page* %139, %struct.page** %5, align 8
  %140 = load %struct.page*, %struct.page** %5, align 8
  %141 = icmp ne %struct.page* %140, null
  br i1 %141, label %142, label %155

142:                                              ; preds = %133
  %143 = load %struct.page*, %struct.page** %5, align 8
  %144 = call i32 @__SetPageLocked(%struct.page* %143)
  %145 = load %struct.page*, %struct.page** %5, align 8
  %146 = call i32 @__SetPageSwapBacked(%struct.page* %145)
  %147 = load %struct.page*, %struct.page** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @set_page_private(%struct.page* %147, i64 %149)
  %151 = load %struct.page*, %struct.page** %5, align 8
  %152 = call i32 @lru_cache_add_anon(%struct.page* %151)
  %153 = load %struct.page*, %struct.page** %5, align 8
  %154 = call i32 @swap_readpage(%struct.page* %153, i32 1)
  br label %155

155:                                              ; preds = %142, %133
  br label %163

156:                                              ; preds = %128, %118
  %157 = load i32, i32* @GFP_HIGHUSER_MOVABLE, align 4
  %158 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call %struct.page* @swapin_readahead(i64 %160, i32 %157, %struct.vm_fault* %158)
  store %struct.page* %161, %struct.page** %5, align 8
  %162 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %162, %struct.page** %6, align 8
  br label %163

163:                                              ; preds = %156, %155
  %164 = load %struct.page*, %struct.page** %5, align 8
  %165 = icmp ne %struct.page* %164, null
  br i1 %165, label %197, label %166

166:                                              ; preds = %163
  %167 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %168 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %171 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %174 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %177 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %176, i32 0, i32 1
  %178 = call i8* @pte_offset_map_lock(i32 %169, i32 %172, i32 %175, i32* %177)
  %179 = bitcast i8* %178 to i32*
  %180 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %181 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %180, i32 0, i32 2
  store i32* %179, i32** %181, align 8
  %182 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %183 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %187 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pte_same(i32 %185, i32 %188)
  %190 = call i64 @likely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %166
  %193 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %192, %166
  %195 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %196 = call i32 @delayacct_clear_flag(i32 %195)
  br label %499

197:                                              ; preds = %163
  %198 = load i32, i32* @VM_FAULT_MAJOR, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* @PGMAJFAULT, align 4
  %200 = call i32 @count_vm_event(i32 %199)
  %201 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %202 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PGMAJFAULT, align 4
  %205 = call i32 @count_memcg_event_mm(i32 %203, i32 %204)
  br label %215

206:                                              ; preds = %105
  %207 = load %struct.page*, %struct.page** %5, align 8
  %208 = call i64 @PageHWPoison(%struct.page* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32, i32* @VM_FAULT_HWPOISON, align 4
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %213 = call i32 @delayacct_clear_flag(i32 %212)
  br label %523

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214, %197
  %216 = load %struct.page*, %struct.page** %5, align 8
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %218 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %221 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @lock_page_or_retry(%struct.page* %216, i32 %219, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* @DELAYACCT_PF_SWAPIN, align 4
  %225 = call i32 @delayacct_clear_flag(i32 %224)
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %215
  %229 = load i32, i32* @VM_FAULT_RETRY, align 4
  %230 = load i32, i32* %12, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %12, align 4
  br label %523

232:                                              ; preds = %215
  %233 = load %struct.page*, %struct.page** %5, align 8
  %234 = call i32 @PageSwapCache(%struct.page* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %232
  %237 = load %struct.page*, %struct.page** %5, align 8
  %238 = call i64 @page_private(%struct.page* %237)
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %238, %240
  br label %242

242:                                              ; preds = %236, %232
  %243 = phi i1 [ true, %232 ], [ %241, %236 ]
  %244 = zext i1 %243 to i32
  %245 = call i64 @unlikely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load %struct.page*, %struct.page** %6, align 8
  %249 = icmp ne %struct.page* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %520

251:                                              ; preds = %247, %242
  %252 = load %struct.page*, %struct.page** %5, align 8
  %253 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %254 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %255 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = call %struct.page* @ksm_might_need_to_copy(%struct.page* %252, %struct.vm_area_struct* %253, i32 %256)
  store %struct.page* %257, %struct.page** %5, align 8
  %258 = load %struct.page*, %struct.page** %5, align 8
  %259 = icmp ne %struct.page* %258, null
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i64 @unlikely(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %251
  %265 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %265, i32* %12, align 4
  %266 = load %struct.page*, %struct.page** %6, align 8
  store %struct.page* %266, %struct.page** %5, align 8
  br label %520

267:                                              ; preds = %251
  %268 = load %struct.page*, %struct.page** %5, align 8
  %269 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %270 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @GFP_KERNEL, align 4
  %273 = call i64 @mem_cgroup_try_charge_delay(%struct.page* %268, i32 %271, i32 %272, %struct.mem_cgroup** %7, i32 0)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %267
  %276 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %276, i32* %12, align 4
  br label %520

277:                                              ; preds = %267
  %278 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %279 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %282 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %285 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %288 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %287, i32 0, i32 1
  %289 = call i8* @pte_offset_map_lock(i32 %280, i32 %283, i32 %286, i32* %288)
  %290 = bitcast i8* %289 to i32*
  %291 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %292 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %291, i32 0, i32 2
  store i32* %290, i32** %292, align 8
  %293 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %294 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %298 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @pte_same(i32 %296, i32 %299)
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = call i64 @unlikely(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %277
  br label %509

307:                                              ; preds = %277
  %308 = load %struct.page*, %struct.page** %5, align 8
  %309 = call i32 @PageUptodate(%struct.page* %308)
  %310 = icmp ne i32 %309, 0
  %311 = xor i1 %310, true
  %312 = zext i1 %311 to i32
  %313 = call i64 @unlikely(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %307
  %316 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %316, i32* %12, align 4
  br label %509

317:                                              ; preds = %307
  %318 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %319 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @MM_ANONPAGES, align 4
  %322 = call i32 @inc_mm_counter_fast(i32 %320, i32 %321)
  %323 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %324 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @MM_SWAPENTS, align 4
  %327 = call i32 @dec_mm_counter_fast(i32 %325, i32 %326)
  %328 = load %struct.page*, %struct.page** %5, align 8
  %329 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %330 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @mk_pte(%struct.page* %328, i32 %331)
  store i32 %332, i32* %9, align 4
  %333 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %334 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %358

339:                                              ; preds = %317
  %340 = load %struct.page*, %struct.page** %5, align 8
  %341 = call i64 @reuse_swap_page(%struct.page* %340, i32* null)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %358

343:                                              ; preds = %339
  %344 = load i32, i32* %9, align 4
  %345 = call i32 @pte_mkdirty(i32 %344)
  %346 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %347 = call i32 @maybe_mkwrite(i32 %345, %struct.vm_area_struct* %346)
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %349 = xor i32 %348, -1
  %350 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %351 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 8
  %354 = load i32, i32* @VM_FAULT_WRITE, align 4
  %355 = load i32, i32* %12, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %12, align 4
  %357 = load i32, i32* @RMAP_EXCLUSIVE, align 4
  store i32 %357, i32* %11, align 4
  br label %358

358:                                              ; preds = %343, %339, %317
  %359 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %360 = load %struct.page*, %struct.page** %5, align 8
  %361 = call i32 @flush_icache_page(%struct.vm_area_struct* %359, %struct.page* %360)
  %362 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %363 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = call i64 @pte_swp_soft_dirty(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %358
  %368 = load i32, i32* %9, align 4
  %369 = call i32 @pte_mksoft_dirty(i32 %368)
  store i32 %369, i32* %9, align 4
  br label %370

370:                                              ; preds = %367, %358
  %371 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %372 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %375 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %378 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %377, i32 0, i32 2
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %9, align 4
  %381 = call i32 @set_pte_at(i32 %373, i32 %376, i32* %379, i32 %380)
  %382 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %383 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %386 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %387 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %9, align 4
  %390 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %391 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %390, i32 0, i32 4
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @arch_do_swap_page(i32 %384, %struct.vm_area_struct* %385, i32 %388, i32 %389, i32 %392)
  %394 = load i32, i32* %9, align 4
  %395 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %396 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %395, i32 0, i32 4
  store i32 %394, i32* %396, align 4
  %397 = load %struct.page*, %struct.page** %5, align 8
  %398 = load %struct.page*, %struct.page** %6, align 8
  %399 = icmp ne %struct.page* %397, %398
  br i1 %399, label %400, label %403

400:                                              ; preds = %370
  %401 = load %struct.page*, %struct.page** %6, align 8
  %402 = icmp ne %struct.page* %401, null
  br label %403

403:                                              ; preds = %400, %370
  %404 = phi i1 [ false, %370 ], [ %402, %400 ]
  %405 = zext i1 %404 to i32
  %406 = call i64 @unlikely(i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %421

408:                                              ; preds = %403
  %409 = load %struct.page*, %struct.page** %5, align 8
  %410 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %411 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %412 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @page_add_new_anon_rmap(%struct.page* %409, %struct.vm_area_struct* %410, i32 %413, i32 0)
  %415 = load %struct.page*, %struct.page** %5, align 8
  %416 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %417 = call i32 @mem_cgroup_commit_charge(%struct.page* %415, %struct.mem_cgroup* %416, i32 0, i32 0)
  %418 = load %struct.page*, %struct.page** %5, align 8
  %419 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %420 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %418, %struct.vm_area_struct* %419)
  br label %434

421:                                              ; preds = %403
  %422 = load %struct.page*, %struct.page** %5, align 8
  %423 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %424 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %425 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* %11, align 4
  %428 = call i32 @do_page_add_anon_rmap(%struct.page* %422, %struct.vm_area_struct* %423, i32 %426, i32 %427)
  %429 = load %struct.page*, %struct.page** %5, align 8
  %430 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %431 = call i32 @mem_cgroup_commit_charge(%struct.page* %429, %struct.mem_cgroup* %430, i32 1, i32 0)
  %432 = load %struct.page*, %struct.page** %5, align 8
  %433 = call i32 @activate_page(%struct.page* %432)
  br label %434

434:                                              ; preds = %421, %408
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = call i32 @swap_free(i64 %436)
  %438 = load %struct.page*, %struct.page** %5, align 8
  %439 = call i64 @mem_cgroup_swap_full(%struct.page* %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %452, label %441

441:                                              ; preds = %434
  %442 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %443 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @VM_LOCKED, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %452, label %448

448:                                              ; preds = %441
  %449 = load %struct.page*, %struct.page** %5, align 8
  %450 = call i64 @PageMlocked(%struct.page* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %448, %441, %434
  %453 = load %struct.page*, %struct.page** %5, align 8
  %454 = call i32 @try_to_free_swap(%struct.page* %453)
  br label %455

455:                                              ; preds = %452, %448
  %456 = load %struct.page*, %struct.page** %5, align 8
  %457 = call i32 @unlock_page(%struct.page* %456)
  %458 = load %struct.page*, %struct.page** %5, align 8
  %459 = load %struct.page*, %struct.page** %6, align 8
  %460 = icmp ne %struct.page* %458, %459
  br i1 %460, label %461, label %469

461:                                              ; preds = %455
  %462 = load %struct.page*, %struct.page** %6, align 8
  %463 = icmp ne %struct.page* %462, null
  br i1 %463, label %464, label %469

464:                                              ; preds = %461
  %465 = load %struct.page*, %struct.page** %6, align 8
  %466 = call i32 @unlock_page(%struct.page* %465)
  %467 = load %struct.page*, %struct.page** %6, align 8
  %468 = call i32 @put_page(%struct.page* %467)
  br label %469

469:                                              ; preds = %464, %461, %455
  %470 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %471 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %490

476:                                              ; preds = %469
  %477 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %478 = call i32 @do_wp_page(%struct.vm_fault* %477)
  %479 = load i32, i32* %12, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %12, align 4
  %481 = load i32, i32* %12, align 4
  %482 = load i32, i32* @VM_FAULT_ERROR, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %476
  %486 = load i32, i32* @VM_FAULT_ERROR, align 4
  %487 = load i32, i32* %12, align 4
  %488 = and i32 %487, %486
  store i32 %488, i32* %12, align 4
  br label %489

489:                                              ; preds = %485, %476
  br label %507

490:                                              ; preds = %469
  %491 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %492 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %493 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %496 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %495, i32 0, i32 2
  %497 = load i32*, i32** %496, align 8
  %498 = call i32 @update_mmu_cache(%struct.vm_area_struct* %491, i32 %494, i32* %497)
  br label %499

499:                                              ; preds = %490, %194
  %500 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %501 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %500, i32 0, i32 2
  %502 = load i32*, i32** %501, align 8
  %503 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %504 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @pte_unmap_unlock(i32* %502, i32 %505)
  br label %507

507:                                              ; preds = %499, %489, %104, %32
  %508 = load i32, i32* %12, align 4
  store i32 %508, i32* %2, align 4
  br label %539

509:                                              ; preds = %315, %306
  %510 = load %struct.page*, %struct.page** %5, align 8
  %511 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %512 = call i32 @mem_cgroup_cancel_charge(%struct.page* %510, %struct.mem_cgroup* %511, i32 0)
  %513 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %514 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %513, i32 0, i32 2
  %515 = load i32*, i32** %514, align 8
  %516 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %517 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @pte_unmap_unlock(i32* %515, i32 %518)
  br label %520

520:                                              ; preds = %509, %275, %264, %250
  %521 = load %struct.page*, %struct.page** %5, align 8
  %522 = call i32 @unlock_page(%struct.page* %521)
  br label %523

523:                                              ; preds = %520, %228, %210
  %524 = load %struct.page*, %struct.page** %5, align 8
  %525 = call i32 @put_page(%struct.page* %524)
  %526 = load %struct.page*, %struct.page** %5, align 8
  %527 = load %struct.page*, %struct.page** %6, align 8
  %528 = icmp ne %struct.page* %526, %527
  br i1 %528, label %529, label %537

529:                                              ; preds = %523
  %530 = load %struct.page*, %struct.page** %6, align 8
  %531 = icmp ne %struct.page* %530, null
  br i1 %531, label %532, label %537

532:                                              ; preds = %529
  %533 = load %struct.page*, %struct.page** %6, align 8
  %534 = call i32 @unlock_page(%struct.page* %533)
  %535 = load %struct.page*, %struct.page** %6, align 8
  %536 = call i32 @put_page(%struct.page* %535)
  br label %537

537:                                              ; preds = %532, %529, %523
  %538 = load i32, i32* %12, align 4
  store i32 %538, i32* %2, align 4
  br label %539

539:                                              ; preds = %537, %507
  %540 = load i32, i32* %2, align 4
  ret i32 %540
}

declare dso_local i32 @pte_unmap_same(i32, i32, i32*, i32) #1

declare dso_local i64 @pte_to_swp_entry(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @non_swap_entry(i64) #1

declare dso_local i64 @is_migration_entry(i64) #1

declare dso_local i32 @migration_entry_wait(i32, i32, i32) #1

declare dso_local i64 @is_device_private_entry(i64) #1

declare dso_local %struct.TYPE_16__* @device_private_entry_to_page(i64) #1

declare dso_local i64 @is_hwpoison_entry(i64) #1

declare dso_local i32 @print_bad_pte(%struct.vm_area_struct*, i32, i32, i32*) #1

declare dso_local i32 @delayacct_set_flag(i32) #1

declare dso_local %struct.page* @lookup_swap_cache(i64, %struct.vm_area_struct*, i32) #1

declare dso_local %struct.swap_info_struct* @swp_swap_info(i64) #1

declare dso_local i32 @__swap_count(i64) #1

declare dso_local %struct.page* @alloc_page_vma(i32, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @__SetPageLocked(%struct.page*) #1

declare dso_local i32 @__SetPageSwapBacked(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @lru_cache_add_anon(%struct.page*) #1

declare dso_local i32 @swap_readpage(%struct.page*, i32) #1

declare dso_local %struct.page* @swapin_readahead(i64, i32, %struct.vm_fault*) #1

declare dso_local i8* @pte_offset_map_lock(i32, i32, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @delayacct_clear_flag(i32) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @count_memcg_event_mm(i32, i32) #1

declare dso_local i64 @PageHWPoison(%struct.page*) #1

declare dso_local i32 @lock_page_or_retry(%struct.page*, i32, i32) #1

declare dso_local i32 @PageSwapCache(%struct.page*) #1

declare dso_local i64 @page_private(%struct.page*) #1

declare dso_local %struct.page* @ksm_might_need_to_copy(%struct.page*, %struct.vm_area_struct*, i32) #1

declare dso_local i64 @mem_cgroup_try_charge_delay(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @inc_mm_counter_fast(i32, i32) #1

declare dso_local i32 @dec_mm_counter_fast(i32, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i64 @reuse_swap_page(%struct.page*, i32*) #1

declare dso_local i32 @maybe_mkwrite(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @flush_icache_page(%struct.vm_area_struct*, %struct.page*) #1

declare dso_local i64 @pte_swp_soft_dirty(i32) #1

declare dso_local i32 @pte_mksoft_dirty(i32) #1

declare dso_local i32 @set_pte_at(i32, i32, i32*, i32) #1

declare dso_local i32 @arch_do_swap_page(i32, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @do_page_add_anon_rmap(%struct.page*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @activate_page(%struct.page*) #1

declare dso_local i32 @swap_free(i64) #1

declare dso_local i64 @mem_cgroup_swap_full(%struct.page*) #1

declare dso_local i64 @PageMlocked(%struct.page*) #1

declare dso_local i32 @try_to_free_swap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @do_wp_page(%struct.vm_fault*) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i32, i32*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
