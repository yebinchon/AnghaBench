; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory.c_do_anonymous_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory.c_do_anonymous_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i32, i32, i32*, i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, i32, i32 }
%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i64 0, align 8
@VM_FAULT_OOM = common dso_local global i64 0, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@VM_UFFD_MISSING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@MM_ANONPAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vm_fault*)* @do_anonymous_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_anonymous_page(%struct.vm_fault* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 5
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VM_SHARED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @VM_FAULT_SIGBUS, align 8
  store i64 %19, i64* %2, align 8
  br label %259

20:                                               ; preds = %1
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %25 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pte_alloc(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* @VM_FAULT_OOM, align 8
  store i64 %30, i64* %2, align 8
  br label %259

31:                                               ; preds = %20
  %32 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %33 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pmd_trans_unstable(i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i64 0, i64* %2, align 8
  br label %259

39:                                               ; preds = %31
  %40 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %41 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %108, label %46

46:                                               ; preds = %39
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mm_forbids_zeropage(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %108, label %52

52:                                               ; preds = %46
  %53 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %54 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @my_zero_pfn(i32 %55)
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %58 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pfn_pte(i32 %56, i32 %59)
  %61 = call i32 @pte_mkspecial(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %63 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %66 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %72 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %71, i32 0, i32 1
  %73 = call i8* @pte_offset_map_lock(i32 %64, i32 %67, i32 %70, i32* %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %76 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %78 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pte_none(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %52
  br label %239

84:                                               ; preds = %52
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %86 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @check_stable_address_space(i32 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %239

92:                                               ; preds = %84
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %94 = call i64 @userfaultfd_missing(%struct.vm_area_struct* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %101 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pte_unmap_unlock(i32* %99, i32 %102)
  %104 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %105 = load i32, i32* @VM_UFFD_MISSING, align 4
  %106 = call i64 @handle_userfault(%struct.vm_fault* %104, i32 %105)
  store i64 %106, i64* %2, align 8
  br label %259

107:                                              ; preds = %92
  br label %219

108:                                              ; preds = %46, %39
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %110 = call i32 @anon_vma_prepare(%struct.vm_area_struct* %109)
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %257

114:                                              ; preds = %108
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %116 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %117 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct* %115, i32 %118)
  store %struct.page* %119, %struct.page** %6, align 8
  %120 = load %struct.page*, %struct.page** %6, align 8
  %121 = icmp ne %struct.page* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  br label %257

123:                                              ; preds = %114
  %124 = load %struct.page*, %struct.page** %6, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %126 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i64 @mem_cgroup_try_charge_delay(%struct.page* %124, i32 %127, i32 %128, %struct.mem_cgroup** %5, i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %254

132:                                              ; preds = %123
  %133 = load %struct.page*, %struct.page** %6, align 8
  %134 = call i32 @__SetPageUptodate(%struct.page* %133)
  %135 = load %struct.page*, %struct.page** %6, align 8
  %136 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %137 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @mk_pte(%struct.page* %135, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %141 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @VM_WRITE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %132
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @pte_mkdirty(i32 %147)
  %149 = call i32 @pte_mkwrite(i32 %148)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %146, %132
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %152 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %155 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %158 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %161 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %160, i32 0, i32 1
  %162 = call i8* @pte_offset_map_lock(i32 %153, i32 %156, i32 %159, i32* %161)
  %163 = bitcast i8* %162 to i32*
  %164 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %165 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %164, i32 0, i32 2
  store i32* %163, i32** %165, align 8
  %166 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %167 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @pte_none(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %150
  br label %248

173:                                              ; preds = %150
  %174 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %175 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @check_stable_address_space(i32 %176)
  store i64 %177, i64* %7, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %248

181:                                              ; preds = %173
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %183 = call i64 @userfaultfd_missing(%struct.vm_area_struct* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %187 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %190 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @pte_unmap_unlock(i32* %188, i32 %191)
  %193 = load %struct.page*, %struct.page** %6, align 8
  %194 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %195 = call i32 @mem_cgroup_cancel_charge(%struct.page* %193, %struct.mem_cgroup* %194, i32 0)
  %196 = load %struct.page*, %struct.page** %6, align 8
  %197 = call i32 @put_page(%struct.page* %196)
  %198 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %199 = load i32, i32* @VM_UFFD_MISSING, align 4
  %200 = call i64 @handle_userfault(%struct.vm_fault* %198, i32 %199)
  store i64 %200, i64* %2, align 8
  br label %259

201:                                              ; preds = %181
  %202 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %203 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @MM_ANONPAGES, align 4
  %206 = call i32 @inc_mm_counter_fast(i32 %204, i32 %205)
  %207 = load %struct.page*, %struct.page** %6, align 8
  %208 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %209 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %210 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @page_add_new_anon_rmap(%struct.page* %207, %struct.vm_area_struct* %208, i32 %211, i32 0)
  %213 = load %struct.page*, %struct.page** %6, align 8
  %214 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %215 = call i32 @mem_cgroup_commit_charge(%struct.page* %213, %struct.mem_cgroup* %214, i32 0, i32 0)
  %216 = load %struct.page*, %struct.page** %6, align 8
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %218 = call i32 @lru_cache_add_active_or_unevictable(%struct.page* %216, %struct.vm_area_struct* %217)
  br label %219

219:                                              ; preds = %201, %107
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %221 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %224 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %227 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @set_pte_at(i32 %222, i32 %225, i32* %228, i32 %229)
  %231 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %232 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %233 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %236 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @update_mmu_cache(%struct.vm_area_struct* %231, i32 %234, i32* %237)
  br label %239

239:                                              ; preds = %248, %219, %91, %83
  %240 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %241 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %244 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @pte_unmap_unlock(i32* %242, i32 %245)
  %247 = load i64, i64* %7, align 8
  store i64 %247, i64* %2, align 8
  br label %259

248:                                              ; preds = %180, %172
  %249 = load %struct.page*, %struct.page** %6, align 8
  %250 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %251 = call i32 @mem_cgroup_cancel_charge(%struct.page* %249, %struct.mem_cgroup* %250, i32 0)
  %252 = load %struct.page*, %struct.page** %6, align 8
  %253 = call i32 @put_page(%struct.page* %252)
  br label %239

254:                                              ; preds = %131
  %255 = load %struct.page*, %struct.page** %6, align 8
  %256 = call i32 @put_page(%struct.page* %255)
  br label %257

257:                                              ; preds = %254, %122, %113
  %258 = load i64, i64* @VM_FAULT_OOM, align 8
  store i64 %258, i64* %2, align 8
  br label %259

259:                                              ; preds = %257, %239, %185, %96, %38, %29, %18
  %260 = load i64, i64* %2, align 8
  ret i64 %260
}

declare dso_local i64 @pte_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pmd_trans_unstable(i32) #1

declare dso_local i32 @mm_forbids_zeropage(i32) #1

declare dso_local i32 @pte_mkspecial(i32) #1

declare dso_local i32 @pfn_pte(i32, i32) #1

declare dso_local i32 @my_zero_pfn(i32) #1

declare dso_local i8* @pte_offset_map_lock(i32, i32, i32, i32*) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i64 @check_stable_address_space(i32) #1

declare dso_local i64 @userfaultfd_missing(%struct.vm_area_struct*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32) #1

declare dso_local i64 @handle_userfault(%struct.vm_fault*, i32) #1

declare dso_local i32 @anon_vma_prepare(%struct.vm_area_struct*) #1

declare dso_local %struct.page* @alloc_zeroed_user_highpage_movable(%struct.vm_area_struct*, i32) #1

declare dso_local i64 @mem_cgroup_try_charge_delay(%struct.page*, i32, i32, %struct.mem_cgroup**, i32) #1

declare dso_local i32 @__SetPageUptodate(%struct.page*) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @pte_mkwrite(i32) #1

declare dso_local i32 @pte_mkdirty(i32) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.page*, %struct.mem_cgroup*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @inc_mm_counter_fast(i32, i32) #1

declare dso_local i32 @page_add_new_anon_rmap(%struct.page*, %struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @mem_cgroup_commit_charge(%struct.page*, %struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @lru_cache_add_active_or_unevictable(%struct.page*, %struct.vm_area_struct*) #1

declare dso_local i32 @set_pte_at(i32, i32, i32*, i32) #1

declare dso_local i32 @update_mmu_cache(%struct.vm_area_struct*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
