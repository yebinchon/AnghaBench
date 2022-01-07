; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_mmap_region.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_mmap_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.file = type { i32 }
%struct.list_head = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i64, %struct.file*, i32 }
%struct.rb_node = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@VM_ACCOUNT = common dso_local global i32 0, align 4
@NULL_VM_UFFD_CTX = common dso_local global i32 0, align 4
@VM_DENYWRITE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@VM_SPECIAL = common dso_local global i32 0, align 4
@VM_LOCKED_CLEAR_MASK = common dso_local global i32 0, align 4
@VM_SOFTDIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmap_region(%struct.file* %0, i64 %1, i64 %2, i32 %3, i64 %4, %struct.list_head* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca %struct.vm_area_struct*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rb_node**, align 8
  %19 = alloca %struct.rb_node*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  store %struct.mm_struct* %24, %struct.mm_struct** %14, align 8
  store i64 0, i64* %20, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @PAGE_SHIFT, align 8
  %29 = lshr i64 %27, %28
  %30 = call i32 @may_expand_vm(%struct.mm_struct* %25, i32 %26, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %6
  %33 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %35, %36
  %38 = call i64 @count_vma_pages_range(%struct.mm_struct* %33, i64 %34, i64 %37)
  store i64 %38, i64* %21, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = lshr i64 %41, %42
  %44 = load i64, i64* %21, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @may_expand_vm(%struct.mm_struct* %39, i32 %40, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i64, i64* @ENOMEM, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %7, align 8
  br label %345

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %6
  br label %53

53:                                               ; preds = %71, %52
  %54 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %56, %57
  %59 = call i64 @find_vma_links(%struct.mm_struct* %54, i64 %55, i64 %58, %struct.vm_area_struct** %16, %struct.rb_node*** %18, %struct.rb_node** %19)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.list_head*, %struct.list_head** %13, align 8
  %66 = call i64 @do_munmap(%struct.mm_struct* %62, i64 %63, i64 %64, %struct.list_head* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i64, i64* @ENOMEM, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %7, align 8
  br label %345

71:                                               ; preds = %61
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.file*, %struct.file** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @accountable_mapping(%struct.file* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = lshr i64 %78, %79
  store i64 %80, i64* %20, align 8
  %81 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %82 = load i64, i64* %20, align 8
  %83 = call i64 @security_vm_enough_memory_mm(%struct.mm_struct* %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i64, i64* @ENOMEM, align 8
  %87 = sub i64 0, %86
  store i64 %87, i64* %7, align 8
  br label %345

88:                                               ; preds = %77
  %89 = load i32, i32* @VM_ACCOUNT, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %88, %72
  %93 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %94 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.file*, %struct.file** %8, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* @NULL_VM_UFFD_CTX, align 4
  %103 = call %struct.vm_area_struct* @vma_merge(%struct.mm_struct* %93, %struct.vm_area_struct* %94, i64 %95, i64 %98, i32 %99, i32* null, %struct.file* %100, i64 %101, i32* null, i32 %102)
  store %struct.vm_area_struct* %103, %struct.vm_area_struct** %15, align 8
  %104 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %105 = icmp ne %struct.vm_area_struct* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %236

107:                                              ; preds = %92
  %108 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %109 = call %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct* %108)
  store %struct.vm_area_struct* %109, %struct.vm_area_struct** %15, align 8
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %111 = icmp ne %struct.vm_area_struct* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* @ENOMEM, align 8
  %114 = sub i64 0, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %17, align 4
  br label %336

116:                                              ; preds = %107
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %119 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %120, %121
  %123 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %124 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @vm_get_page_prot(i32 %128)
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.file*, %struct.file** %8, align 8
  %136 = icmp ne %struct.file* %135, null
  br i1 %136, label %137, label %188

137:                                              ; preds = %116
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @VM_DENYWRITE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load %struct.file*, %struct.file** %8, align 8
  %144 = call i32 @deny_write_access(%struct.file* %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %333

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %137
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @VM_SHARED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load %struct.file*, %struct.file** %8, align 8
  %156 = getelementptr inbounds %struct.file, %struct.file* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @mapping_map_writable(i32 %157)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %324

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %149
  %164 = load %struct.file*, %struct.file** %8, align 8
  %165 = call %struct.file* @get_file(%struct.file* %164)
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %167 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %166, i32 0, i32 4
  store %struct.file* %165, %struct.file** %167, align 8
  %168 = load %struct.file*, %struct.file** %8, align 8
  %169 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %170 = call i32 @call_mmap(%struct.file* %168, %struct.vm_area_struct* %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  br label %299

174:                                              ; preds = %163
  %175 = load i64, i64* %9, align 8
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %177 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %175, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @WARN_ON_ONCE(i32 %180)
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %183 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %9, align 8
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %186 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %11, align 4
  br label %204

188:                                              ; preds = %116
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @VM_SHARED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %195 = call i32 @shmem_zero_setup(%struct.vm_area_struct* %194)
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %333

199:                                              ; preds = %193
  br label %203

200:                                              ; preds = %188
  %201 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %202 = call i32 @vma_set_anonymous(%struct.vm_area_struct* %201)
  br label %203

203:                                              ; preds = %200, %199
  br label %204

204:                                              ; preds = %203, %174
  %205 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %206 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %207 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %208 = load %struct.rb_node**, %struct.rb_node*** %18, align 8
  %209 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %210 = call i32 @vma_link(%struct.mm_struct* %205, %struct.vm_area_struct* %206, %struct.vm_area_struct* %207, %struct.rb_node** %208, %struct.rb_node* %209)
  %211 = load %struct.file*, %struct.file** %8, align 8
  %212 = icmp ne %struct.file* %211, null
  br i1 %212, label %213, label %232

213:                                              ; preds = %204
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @VM_SHARED, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.file*, %struct.file** %8, align 8
  %220 = getelementptr inbounds %struct.file, %struct.file* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @mapping_unmap_writable(i32 %221)
  br label %223

223:                                              ; preds = %218, %213
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* @VM_DENYWRITE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load %struct.file*, %struct.file** %8, align 8
  %230 = call i32 @allow_write_access(%struct.file* %229)
  br label %231

231:                                              ; preds = %228, %223
  br label %232

232:                                              ; preds = %231, %204
  %233 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %234 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %233, i32 0, i32 4
  %235 = load %struct.file*, %struct.file** %234, align 8
  store %struct.file* %235, %struct.file** %8, align 8
  br label %236

236:                                              ; preds = %232, %106
  %237 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %238 = call i32 @perf_event_mmap(%struct.vm_area_struct* %237)
  %239 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i64, i64* %10, align 8
  %242 = load i64, i64* @PAGE_SHIFT, align 8
  %243 = lshr i64 %241, %242
  %244 = call i32 @vm_stat_account(%struct.mm_struct* %239, i32 %240, i64 %243)
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* @VM_LOCKED, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %284

249:                                              ; preds = %236
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @VM_SPECIAL, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %249
  %255 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %256 = call i64 @vma_is_dax(%struct.vm_area_struct* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  %259 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %260 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %269, label %262

262:                                              ; preds = %258
  %263 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  %266 = load %struct.mm_struct*, %struct.mm_struct** %265, align 8
  %267 = call %struct.vm_area_struct* @get_gate_vma(%struct.mm_struct* %266)
  %268 = icmp eq %struct.vm_area_struct* %263, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %262, %258, %254, %249
  %270 = load i32, i32* @VM_LOCKED_CLEAR_MASK, align 4
  %271 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %272 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = and i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %283

275:                                              ; preds = %262
  %276 = load i64, i64* %10, align 8
  %277 = load i64, i64* @PAGE_SHIFT, align 8
  %278 = lshr i64 %276, %277
  %279 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %280 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %281, %278
  store i64 %282, i64* %280, align 8
  br label %283

283:                                              ; preds = %275, %269
  br label %284

284:                                              ; preds = %283, %236
  %285 = load %struct.file*, %struct.file** %8, align 8
  %286 = icmp ne %struct.file* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %289 = call i32 @uprobe_mmap(%struct.vm_area_struct* %288)
  br label %290

290:                                              ; preds = %287, %284
  %291 = load i32, i32* @VM_SOFTDIRTY, align 4
  %292 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %293 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %297 = call i32 @vma_set_page_prot(%struct.vm_area_struct* %296)
  %298 = load i64, i64* %9, align 8
  store i64 %298, i64* %7, align 8
  br label %345

299:                                              ; preds = %173
  %300 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %301 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %300, i32 0, i32 4
  store %struct.file* null, %struct.file** %301, align 8
  %302 = load %struct.file*, %struct.file** %8, align 8
  %303 = call i32 @fput(%struct.file* %302)
  %304 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %305 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %306 = load %struct.vm_area_struct*, %struct.vm_area_struct** %16, align 8
  %307 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %308 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %311 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @unmap_region(%struct.mm_struct* %304, %struct.vm_area_struct* %305, %struct.vm_area_struct* %306, i64 %309, i64 %312)
  store i64 0, i64* %20, align 8
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @VM_SHARED, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %299
  %319 = load %struct.file*, %struct.file** %8, align 8
  %320 = getelementptr inbounds %struct.file, %struct.file* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @mapping_unmap_writable(i32 %321)
  br label %323

323:                                              ; preds = %318, %299
  br label %324

324:                                              ; preds = %323, %161
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* @VM_DENYWRITE, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load %struct.file*, %struct.file** %8, align 8
  %331 = call i32 @allow_write_access(%struct.file* %330)
  br label %332

332:                                              ; preds = %329, %324
  br label %333

333:                                              ; preds = %332, %198, %147
  %334 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %335 = call i32 @vm_area_free(%struct.vm_area_struct* %334)
  br label %336

336:                                              ; preds = %333, %112
  %337 = load i64, i64* %20, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i64, i64* %20, align 8
  %341 = call i32 @vm_unacct_memory(i64 %340)
  br label %342

342:                                              ; preds = %339, %336
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %7, align 8
  br label %345

345:                                              ; preds = %342, %290, %85, %68, %48
  %346 = load i64, i64* %7, align 8
  ret i64 %346
}

declare dso_local i32 @may_expand_vm(%struct.mm_struct*, i32, i64) #1

declare dso_local i64 @count_vma_pages_range(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @find_vma_links(%struct.mm_struct*, i64, i64, %struct.vm_area_struct**, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i64 @do_munmap(%struct.mm_struct*, i64, i64, %struct.list_head*) #1

declare dso_local i64 @accountable_mapping(%struct.file*, i32) #1

declare dso_local i64 @security_vm_enough_memory_mm(%struct.mm_struct*, i64) #1

declare dso_local %struct.vm_area_struct* @vma_merge(%struct.mm_struct*, %struct.vm_area_struct*, i64, i64, i32, i32*, %struct.file*, i64, i32*, i32) #1

declare dso_local %struct.vm_area_struct* @vm_area_alloc(%struct.mm_struct*) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @deny_write_access(%struct.file*) #1

declare dso_local i32 @mapping_map_writable(i32) #1

declare dso_local %struct.file* @get_file(%struct.file*) #1

declare dso_local i32 @call_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @shmem_zero_setup(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_set_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_link(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node**, %struct.rb_node*) #1

declare dso_local i32 @mapping_unmap_writable(i32) #1

declare dso_local i32 @allow_write_access(%struct.file*) #1

declare dso_local i32 @perf_event_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_stat_account(%struct.mm_struct*, i32, i64) #1

declare dso_local i64 @vma_is_dax(%struct.vm_area_struct*) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local %struct.vm_area_struct* @get_gate_vma(%struct.mm_struct*) #1

declare dso_local i32 @uprobe_mmap(%struct.vm_area_struct*) #1

declare dso_local i32 @vma_set_page_prot(%struct.vm_area_struct*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @unmap_region(%struct.mm_struct*, %struct.vm_area_struct*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @vm_area_free(%struct.vm_area_struct*) #1

declare dso_local i32 @vm_unacct_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
