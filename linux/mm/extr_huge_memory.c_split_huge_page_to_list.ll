; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_split_huge_page_to_list.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_split_huge_page_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.pglist_data = type { i32 }
%struct.deferred_split = type { i32, i32 }
%struct.anon_vma = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@xas = common dso_local global i32 0, align 4
@NR_SHMEM_THPS = common dso_local global i32 0, align 4
@NR_FILE_THPS = common dso_local global i32 0, align 4
@CONFIG_DEBUG_VM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"total_mapcount: %u, page_count(): %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"total_mapcount(head) > 0\00", align 1
@THP_SPLIT_PAGE = common dso_local global i32 0, align 4
@THP_SPLIT_PAGE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_huge_page_to_list(%struct.page* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.pglist_data*, align 8
  %8 = alloca %struct.deferred_split*, align 8
  %9 = alloca %struct.anon_vma*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_3__, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call %struct.page* @compound_head(%struct.page* %19)
  store %struct.page* %20, %struct.page** %6, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = call i32 @page_to_nid(%struct.page* %21)
  %23 = call %struct.pglist_data* @NODE_DATA(i32 %22)
  store %struct.pglist_data* %23, %struct.pglist_data** %7, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call %struct.deferred_split* @get_deferred_split_queue(%struct.page* %24)
  store %struct.deferred_split* %25, %struct.deferred_split** %8, align 8
  store %struct.anon_vma* null, %struct.anon_vma** %9, align 8
  store %struct.address_space* null, %struct.address_space** %10, align 8
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = call i32 @is_huge_zero_page(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %4, align 8
  %29 = call i32 @VM_BUG_ON_PAGE(i32 %27, %struct.page* %28)
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @PageLocked(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = call i32 @VM_BUG_ON_PAGE(i32 %34, %struct.page* %35)
  %37 = load %struct.page*, %struct.page** %4, align 8
  %38 = call i32 @PageCompound(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.page*, %struct.page** %4, align 8
  %43 = call i32 @VM_BUG_ON_PAGE(i32 %41, %struct.page* %42)
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i64 @PageWriteback(%struct.page* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %259

50:                                               ; preds = %2
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = call i64 @PageAnon(%struct.page* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.page*, %struct.page** %6, align 8
  %56 = call %struct.anon_vma* @page_get_anon_vma(%struct.page* %55)
  store %struct.anon_vma* %56, %struct.anon_vma** %9, align 8
  %57 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %58 = icmp ne %struct.anon_vma* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  br label %248

62:                                               ; preds = %54
  store i32 -1, i32* %17, align 4
  store %struct.address_space* null, %struct.address_space** %10, align 8
  %63 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %64 = call i32 @anon_vma_lock_write(%struct.anon_vma* %63)
  br label %83

65:                                               ; preds = %50
  %66 = load %struct.page*, %struct.page** %6, align 8
  %67 = getelementptr inbounds %struct.page, %struct.page* %66, i32 0, i32 0
  %68 = load %struct.address_space*, %struct.address_space** %67, align 8
  store %struct.address_space* %68, %struct.address_space** %10, align 8
  %69 = load %struct.address_space*, %struct.address_space** %10, align 8
  %70 = icmp ne %struct.address_space* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %248

74:                                               ; preds = %65
  store %struct.anon_vma* null, %struct.anon_vma** %9, align 8
  %75 = load %struct.address_space*, %struct.address_space** %10, align 8
  %76 = call i32 @i_mmap_lock_read(%struct.address_space* %75)
  %77 = load %struct.address_space*, %struct.address_space** %10, align 8
  %78 = getelementptr inbounds %struct.address_space, %struct.address_space* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @i_size_read(i32 %79)
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = call i32 @DIV_ROUND_UP(i32 %80, i32 %81)
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %74, %62
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = call i32 @can_split_huge_page(%struct.page* %84, i32* %13)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  br label %233

90:                                               ; preds = %83
  %91 = load %struct.page*, %struct.page** %4, align 8
  %92 = call i32 @PageMlocked(%struct.page* %91)
  store i32 %92, i32* %15, align 4
  %93 = load %struct.page*, %struct.page** %6, align 8
  %94 = call i32 @unmap_page(%struct.page* %93)
  %95 = load %struct.page*, %struct.page** %6, align 8
  %96 = call i32 @compound_mapcount(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %6, align 8
  %98 = call i32 @VM_BUG_ON_PAGE(i32 %96, %struct.page* %97)
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = call i32 (...) @lru_add_drain()
  br label %103

103:                                              ; preds = %101, %90
  %104 = load %struct.pglist_data*, %struct.pglist_data** %7, align 8
  %105 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %104, i32 0, i32 0
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.address_space*, %struct.address_space** %10, align 8
  %109 = icmp ne %struct.address_space* %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %103
  %111 = load i32, i32* @xas, align 4
  %112 = load %struct.address_space*, %struct.address_space** %10, align 8
  %113 = getelementptr inbounds %struct.address_space, %struct.address_space* %112, i32 0, i32 0
  %114 = load %struct.page*, %struct.page** %6, align 8
  %115 = call i32 @page_index(%struct.page* %114)
  %116 = call i32 @XA_STATE(i32 %111, i32* %113, i32 %115)
  %117 = load %struct.address_space*, %struct.address_space** %10, align 8
  %118 = getelementptr inbounds %struct.address_space, %struct.address_space* %117, i32 0, i32 0
  %119 = call i32 @xa_lock(i32* %118)
  %120 = call %struct.page* @xas_load(i32* @xas)
  %121 = load %struct.page*, %struct.page** %6, align 8
  %122 = icmp ne %struct.page* %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %110
  br label %216

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %103
  %126 = load %struct.deferred_split*, %struct.deferred_split** %8, align 8
  %127 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %126, i32 0, i32 0
  %128 = call i32 @spin_lock(i32* %127)
  %129 = load %struct.page*, %struct.page** %6, align 8
  %130 = call i32 @page_count(%struct.page* %129)
  store i32 %130, i32* %11, align 4
  %131 = load %struct.page*, %struct.page** %6, align 8
  %132 = call i32 @total_mapcount(%struct.page* %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %191, label %135

135:                                              ; preds = %125
  %136 = load %struct.page*, %struct.page** %6, align 8
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 1, %137
  %139 = call i64 @page_ref_freeze(%struct.page* %136, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %191

141:                                              ; preds = %135
  %142 = load %struct.page*, %struct.page** %6, align 8
  %143 = call i32 @page_deferred_list(%struct.page* %142)
  %144 = call i32 @list_empty(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = load %struct.deferred_split*, %struct.deferred_split** %8, align 8
  %148 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 4
  %151 = load %struct.page*, %struct.page** %6, align 8
  %152 = call i32 @page_deferred_list(%struct.page* %151)
  %153 = call i32 @list_del(i32 %152)
  br label %154

154:                                              ; preds = %146, %141
  %155 = load %struct.address_space*, %struct.address_space** %10, align 8
  %156 = icmp ne %struct.address_space* %155, null
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load %struct.page*, %struct.page** %4, align 8
  %159 = call i64 @PageSwapBacked(%struct.page* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load %struct.page*, %struct.page** %4, align 8
  %163 = load i32, i32* @NR_SHMEM_THPS, align 4
  %164 = call i32 @__dec_node_page_state(%struct.page* %162, i32 %163)
  br label %169

165:                                              ; preds = %157
  %166 = load %struct.page*, %struct.page** %4, align 8
  %167 = load i32, i32* @NR_FILE_THPS, align 4
  %168 = call i32 @__dec_node_page_state(%struct.page* %166, i32 %167)
  br label %169

169:                                              ; preds = %165, %161
  br label %170

170:                                              ; preds = %169, %154
  %171 = load %struct.deferred_split*, %struct.deferred_split** %8, align 8
  %172 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %171, i32 0, i32 0
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load %struct.page*, %struct.page** %4, align 8
  %175 = load %struct.list_head*, %struct.list_head** %5, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i64, i64* %16, align 8
  %178 = call i32 @__split_huge_page(%struct.page* %174, %struct.list_head* %175, i32 %176, i64 %177)
  %179 = load %struct.page*, %struct.page** %6, align 8
  %180 = call i64 @PageSwapCache(%struct.page* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %184 = load %struct.page*, %struct.page** %6, align 8
  %185 = call i32 @page_private(%struct.page* %184)
  store i32 %185, i32* %183, align 4
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @split_swap_cluster(i32 %187)
  store i32 %188, i32* %14, align 4
  br label %190

189:                                              ; preds = %170
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %189, %182
  br label %232

191:                                              ; preds = %135, %125
  %192 = load i32, i32* @CONFIG_DEBUG_VM, align 4
  %193 = call i64 @IS_ENABLED(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %212

195:                                              ; preds = %191
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %195
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @pr_alert(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load %struct.page*, %struct.page** %4, align 8
  %203 = call i64 @PageTail(%struct.page* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load %struct.page*, %struct.page** %6, align 8
  %207 = call i32 @dump_page(%struct.page* %206, i8* null)
  br label %208

208:                                              ; preds = %205, %198
  %209 = load %struct.page*, %struct.page** %4, align 8
  %210 = call i32 @dump_page(%struct.page* %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %211 = call i32 (...) @BUG()
  br label %212

212:                                              ; preds = %208, %195, %191
  %213 = load %struct.deferred_split*, %struct.deferred_split** %8, align 8
  %214 = getelementptr inbounds %struct.deferred_split, %struct.deferred_split* %213, i32 0, i32 0
  %215 = call i32 @spin_unlock(i32* %214)
  br label %216

216:                                              ; preds = %212, %123
  %217 = load %struct.address_space*, %struct.address_space** %10, align 8
  %218 = icmp ne %struct.address_space* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load %struct.address_space*, %struct.address_space** %10, align 8
  %221 = getelementptr inbounds %struct.address_space, %struct.address_space* %220, i32 0, i32 0
  %222 = call i32 @xa_unlock(i32* %221)
  br label %223

223:                                              ; preds = %219, %216
  %224 = load %struct.pglist_data*, %struct.pglist_data** %7, align 8
  %225 = getelementptr inbounds %struct.pglist_data, %struct.pglist_data* %224, i32 0, i32 0
  %226 = load i64, i64* %16, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  %228 = load %struct.page*, %struct.page** %6, align 8
  %229 = call i32 @remap_page(%struct.page* %228)
  %230 = load i32, i32* @EBUSY, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %14, align 4
  br label %232

232:                                              ; preds = %223, %190
  br label %233

233:                                              ; preds = %232, %87
  %234 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %235 = icmp ne %struct.anon_vma* %234, null
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %238 = call i32 @anon_vma_unlock_write(%struct.anon_vma* %237)
  %239 = load %struct.anon_vma*, %struct.anon_vma** %9, align 8
  %240 = call i32 @put_anon_vma(%struct.anon_vma* %239)
  br label %241

241:                                              ; preds = %236, %233
  %242 = load %struct.address_space*, %struct.address_space** %10, align 8
  %243 = icmp ne %struct.address_space* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.address_space*, %struct.address_space** %10, align 8
  %246 = call i32 @i_mmap_unlock_read(%struct.address_space* %245)
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %71, %59
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* @THP_SPLIT_PAGE, align 4
  br label %255

253:                                              ; preds = %248
  %254 = load i32, i32* @THP_SPLIT_PAGE_FAILED, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  %257 = call i32 @count_vm_event(i32 %256)
  %258 = load i32, i32* %14, align 4
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %255, %47
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local %struct.page* @compound_head(%struct.page*) #1

declare dso_local %struct.pglist_data* @NODE_DATA(i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local %struct.deferred_split* @get_deferred_split_queue(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @is_huge_zero_page(%struct.page*) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i64 @PageAnon(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_get_anon_vma(%struct.page*) #1

declare dso_local i32 @anon_vma_lock_write(%struct.anon_vma*) #1

declare dso_local i32 @i_mmap_lock_read(%struct.address_space*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @can_split_huge_page(%struct.page*, i32*) #1

declare dso_local i32 @PageMlocked(%struct.page*) #1

declare dso_local i32 @unmap_page(%struct.page*) #1

declare dso_local i32 @compound_mapcount(%struct.page*) #1

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i32 @xa_lock(i32*) #1

declare dso_local %struct.page* @xas_load(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @total_mapcount(%struct.page*) #1

declare dso_local i64 @page_ref_freeze(%struct.page*, i32) #1

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @page_deferred_list(%struct.page*) #1

declare dso_local i32 @list_del(i32) #1

declare dso_local i64 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @__dec_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__split_huge_page(%struct.page*, %struct.list_head*, i32, i64) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @split_swap_cluster(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pr_alert(i8*, i32, i32) #1

declare dso_local i64 @PageTail(%struct.page*) #1

declare dso_local i32 @dump_page(%struct.page*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @xa_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @remap_page(%struct.page*) #1

declare dso_local i32 @anon_vma_unlock_write(%struct.anon_vma*) #1

declare dso_local i32 @put_anon_vma(%struct.anon_vma*) #1

declare dso_local i32 @i_mmap_unlock_read(%struct.address_space*) #1

declare dso_local i32 @count_vm_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
