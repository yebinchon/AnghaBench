; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mmap.c_do_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mmap.c_do_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { i64, i32 }
%struct.file = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.list_head = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.inode = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i64 0, align 8
@READ_IMPLIES_EXEC = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i64 0, align 8
@MAP_FIXED_NOREPLACE = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@sysctl_max_map_count = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@MAP_LOCKED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@LEGACY_MAP_MASK = common dso_local global i64 0, align 8
@MAP_TYPE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@ETXTBSY = common dso_local global i64 0, align 8
@VM_SHARED = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@MAP_NORESERVE = common dso_local global i64 0, align 8
@sysctl_overcommit_memory = common dso_local global i64 0, align 8
@OVERCOMMIT_NEVER = common dso_local global i64 0, align 8
@VM_NORESERVE = common dso_local global i32 0, align 4
@VM_LOCKED = common dso_local global i32 0, align 4
@MAP_POPULATE = common dso_local global i64 0, align 8
@MAP_NONBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_mmap(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i64 %6, i64* %7, %struct.list_head* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca %struct.list_head*, align 8
  %20 = alloca %struct.mm_struct*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.vm_area_struct*, align 8
  %23 = alloca %struct.inode*, align 8
  %24 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i64* %7, i64** %18, align 8
  store %struct.list_head* %8, %struct.list_head** %19, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.mm_struct*, %struct.mm_struct** %26, align 8
  store %struct.mm_struct* %27, %struct.mm_struct** %20, align 8
  store i32 0, i32* %21, align 4
  %28 = load i64*, i64** %18, align 8
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %9
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %10, align 8
  br label %431

34:                                               ; preds = %9
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @PROT_READ, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @READ_IMPLIES_EXEC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.file*, %struct.file** %11, align 8
  %48 = icmp ne %struct.file* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.file*, %struct.file** %11, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 2
  %52 = call i64 @path_noexec(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %46
  %55 = load i64, i64* @PROT_EXEC, align 8
  %56 = load i64, i64* %14, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %54, %49
  br label %59

59:                                               ; preds = %58, %39, %34
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* @MAP_FIXED_NOREPLACE, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i64, i64* @MAP_FIXED, align 8
  %66 = load i64, i64* %15, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %15, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @MAP_FIXED, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @round_hint_to_min(i64 %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @PAGE_ALIGN(i64 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @ENOMEM, align 8
  %83 = sub i64 0, %82
  store i64 %83, i64* %10, align 8
  br label %431

84:                                               ; preds = %76
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @PAGE_SHIFT, align 8
  %88 = lshr i64 %86, %87
  %89 = add i64 %85, %88
  %90 = load i64, i64* %17, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i64, i64* @EOVERFLOW, align 8
  %94 = sub i64 0, %93
  store i64 %94, i64* %10, align 8
  br label %431

95:                                               ; preds = %84
  %96 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %97 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @sysctl_max_map_count, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i64, i64* @ENOMEM, align 8
  %103 = sub i64 0, %102
  store i64 %103, i64* %10, align 8
  br label %431

104:                                              ; preds = %95
  %105 = load %struct.file*, %struct.file** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call i64 @get_unmapped_area(%struct.file* %105, i64 %106, i64 %107, i64 %108, i64 %109)
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i64 @offset_in_page(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i64, i64* %12, align 8
  store i64 %115, i64* %10, align 8
  br label %431

116:                                              ; preds = %104
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* @MAP_FIXED_NOREPLACE, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %122, i64 %123)
  store %struct.vm_area_struct* %124, %struct.vm_area_struct** %22, align 8
  %125 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %126 = icmp ne %struct.vm_area_struct* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  %129 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %131, %132
  %134 = icmp ult i64 %130, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load i64, i64* @EEXIST, align 8
  %137 = sub i64 0, %136
  store i64 %137, i64* %10, align 8
  br label %431

138:                                              ; preds = %127, %121
  br label %139

139:                                              ; preds = %138, %116
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* @PROT_EXEC, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %145 = call i32 @execute_only_pkey(%struct.mm_struct* %144)
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 0, i32* %21, align 4
  br label %149

149:                                              ; preds = %148, %143
  br label %150

150:                                              ; preds = %149, %139
  %151 = load i64, i64* %14, align 8
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @calc_vm_prot_bits(i64 %151, i32 %152)
  %154 = load i64, i64* %15, align 8
  %155 = call i32 @calc_vm_flag_bits(i64 %154)
  %156 = or i32 %153, %155
  %157 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %158 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %156, %159
  %161 = load i32, i32* @VM_MAYREAD, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @VM_MAYWRITE, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @VM_MAYEXEC, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %16, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %16, align 4
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* @MAP_LOCKED, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %150
  %174 = call i32 (...) @can_do_mlock()
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i64, i64* @EPERM, align 8
  %178 = sub i64 0, %177
  store i64 %178, i64* %10, align 8
  br label %431

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179, %150
  %181 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  %182 = load i32, i32* %16, align 4
  %183 = load i64, i64* %13, align 8
  %184 = call i64 @mlock_future_check(%struct.mm_struct* %181, i32 %182, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i64, i64* @EAGAIN, align 8
  %188 = sub i64 0, %187
  store i64 %188, i64* %10, align 8
  br label %431

189:                                              ; preds = %180
  %190 = load %struct.file*, %struct.file** %11, align 8
  %191 = icmp ne %struct.file* %190, null
  br i1 %191, label %192, label %349

192:                                              ; preds = %189
  %193 = load %struct.file*, %struct.file** %11, align 8
  %194 = call %struct.inode* @file_inode(%struct.file* %193)
  store %struct.inode* %194, %struct.inode** %23, align 8
  %195 = load %struct.file*, %struct.file** %11, align 8
  %196 = load %struct.inode*, %struct.inode** %23, align 8
  %197 = load i64, i64* %17, align 8
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @file_mmap_ok(%struct.file* %195, %struct.inode* %196, i64 %197, i64 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %192
  %202 = load i64, i64* @EOVERFLOW, align 8
  %203 = sub i64 0, %202
  store i64 %203, i64* %10, align 8
  br label %431

204:                                              ; preds = %192
  %205 = load i64, i64* @LEGACY_MAP_MASK, align 8
  %206 = load %struct.file*, %struct.file** %11, align 8
  %207 = getelementptr inbounds %struct.file, %struct.file* %206, i32 0, i32 1
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = or i64 %205, %210
  store i64 %211, i64* %24, align 8
  %212 = load i64, i64* %15, align 8
  %213 = load i64, i64* @MAP_TYPE, align 8
  %214 = and i64 %212, %213
  switch i64 %214, label %345 [
    i64 129, label %215
    i64 128, label %219
    i64 130, label %296
  ]

215:                                              ; preds = %204
  %216 = load i64, i64* @LEGACY_MAP_MASK, align 8
  %217 = load i64, i64* %15, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %15, align 8
  br label %219

219:                                              ; preds = %204, %215
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* %24, align 8
  %222 = xor i64 %221, -1
  %223 = and i64 %220, %222
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i64, i64* @EOPNOTSUPP, align 8
  %227 = sub i64 0, %226
  store i64 %227, i64* %10, align 8
  br label %431

228:                                              ; preds = %219
  %229 = load i64, i64* %14, align 8
  %230 = load i64, i64* @PROT_WRITE, align 8
  %231 = and i64 %229, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %255

233:                                              ; preds = %228
  %234 = load %struct.file*, %struct.file** %11, align 8
  %235 = getelementptr inbounds %struct.file, %struct.file* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @FMODE_WRITE, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %233
  %241 = load i64, i64* @EACCES, align 8
  %242 = sub i64 0, %241
  store i64 %242, i64* %10, align 8
  br label %431

243:                                              ; preds = %233
  %244 = load %struct.file*, %struct.file** %11, align 8
  %245 = getelementptr inbounds %struct.file, %struct.file* %244, i32 0, i32 3
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @IS_SWAPFILE(i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load i64, i64* @ETXTBSY, align 8
  %253 = sub i64 0, %252
  store i64 %253, i64* %10, align 8
  br label %431

254:                                              ; preds = %243
  br label %255

255:                                              ; preds = %254, %228
  %256 = load %struct.inode*, %struct.inode** %23, align 8
  %257 = call i32 @IS_APPEND(%struct.inode* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %269

259:                                              ; preds = %255
  %260 = load %struct.file*, %struct.file** %11, align 8
  %261 = getelementptr inbounds %struct.file, %struct.file* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @FMODE_WRITE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load i64, i64* @EACCES, align 8
  %268 = sub i64 0, %267
  store i64 %268, i64* %10, align 8
  br label %431

269:                                              ; preds = %259, %255
  %270 = load %struct.file*, %struct.file** %11, align 8
  %271 = call i32 @locks_verify_locked(%struct.file* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i64, i64* @EAGAIN, align 8
  %275 = sub i64 0, %274
  store i64 %275, i64* %10, align 8
  br label %431

276:                                              ; preds = %269
  %277 = load i32, i32* @VM_SHARED, align 4
  %278 = load i32, i32* @VM_MAYSHARE, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* %16, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %16, align 4
  %282 = load %struct.file*, %struct.file** %11, align 8
  %283 = getelementptr inbounds %struct.file, %struct.file* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @FMODE_WRITE, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %276
  %289 = load i32, i32* @VM_MAYWRITE, align 4
  %290 = load i32, i32* @VM_SHARED, align 4
  %291 = or i32 %289, %290
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %16, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %16, align 4
  br label %295

295:                                              ; preds = %288, %276
  br label %296

296:                                              ; preds = %204, %295
  %297 = load %struct.file*, %struct.file** %11, align 8
  %298 = getelementptr inbounds %struct.file, %struct.file* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @FMODE_READ, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %296
  %304 = load i64, i64* @EACCES, align 8
  %305 = sub i64 0, %304
  store i64 %305, i64* %10, align 8
  br label %431

306:                                              ; preds = %296
  %307 = load %struct.file*, %struct.file** %11, align 8
  %308 = getelementptr inbounds %struct.file, %struct.file* %307, i32 0, i32 2
  %309 = call i64 @path_noexec(i32* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %306
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* @VM_EXEC, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %311
  %317 = load i64, i64* @EPERM, align 8
  %318 = sub i64 0, %317
  store i64 %318, i64* %10, align 8
  br label %431

319:                                              ; preds = %311
  %320 = load i32, i32* @VM_MAYEXEC, align 4
  %321 = xor i32 %320, -1
  %322 = load i32, i32* %16, align 4
  %323 = and i32 %322, %321
  store i32 %323, i32* %16, align 4
  br label %324

324:                                              ; preds = %319, %306
  %325 = load %struct.file*, %struct.file** %11, align 8
  %326 = getelementptr inbounds %struct.file, %struct.file* %325, i32 0, i32 1
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %324
  %332 = load i64, i64* @ENODEV, align 8
  %333 = sub i64 0, %332
  store i64 %333, i64* %10, align 8
  br label %431

334:                                              ; preds = %324
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* @VM_GROWSDOWN, align 4
  %337 = load i32, i32* @VM_GROWSUP, align 4
  %338 = or i32 %336, %337
  %339 = and i32 %335, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %334
  %342 = load i64, i64* @EINVAL, align 8
  %343 = sub i64 0, %342
  store i64 %343, i64* %10, align 8
  br label %431

344:                                              ; preds = %334
  br label %348

345:                                              ; preds = %204
  %346 = load i64, i64* @EINVAL, align 8
  %347 = sub i64 0, %346
  store i64 %347, i64* %10, align 8
  br label %431

348:                                              ; preds = %344
  br label %377

349:                                              ; preds = %189
  %350 = load i64, i64* %15, align 8
  %351 = load i64, i64* @MAP_TYPE, align 8
  %352 = and i64 %350, %351
  switch i64 %352, label %373 [
    i64 129, label %353
    i64 130, label %369
  ]

353:                                              ; preds = %349
  %354 = load i32, i32* %16, align 4
  %355 = load i32, i32* @VM_GROWSDOWN, align 4
  %356 = load i32, i32* @VM_GROWSUP, align 4
  %357 = or i32 %355, %356
  %358 = and i32 %354, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %353
  %361 = load i64, i64* @EINVAL, align 8
  %362 = sub i64 0, %361
  store i64 %362, i64* %10, align 8
  br label %431

363:                                              ; preds = %353
  store i64 0, i64* %17, align 8
  %364 = load i32, i32* @VM_SHARED, align 4
  %365 = load i32, i32* @VM_MAYSHARE, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* %16, align 4
  %368 = or i32 %367, %366
  store i32 %368, i32* %16, align 4
  br label %376

369:                                              ; preds = %349
  %370 = load i64, i64* %12, align 8
  %371 = load i64, i64* @PAGE_SHIFT, align 8
  %372 = lshr i64 %370, %371
  store i64 %372, i64* %17, align 8
  br label %376

373:                                              ; preds = %349
  %374 = load i64, i64* @EINVAL, align 8
  %375 = sub i64 0, %374
  store i64 %375, i64* %10, align 8
  br label %431

376:                                              ; preds = %369, %363
  br label %377

377:                                              ; preds = %376, %348
  %378 = load i64, i64* %15, align 8
  %379 = load i64, i64* @MAP_NORESERVE, align 8
  %380 = and i64 %378, %379
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %402

382:                                              ; preds = %377
  %383 = load i64, i64* @sysctl_overcommit_memory, align 8
  %384 = load i64, i64* @OVERCOMMIT_NEVER, align 8
  %385 = icmp ne i64 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  %387 = load i32, i32* @VM_NORESERVE, align 4
  %388 = load i32, i32* %16, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %16, align 4
  br label %390

390:                                              ; preds = %386, %382
  %391 = load %struct.file*, %struct.file** %11, align 8
  %392 = icmp ne %struct.file* %391, null
  br i1 %392, label %393, label %401

393:                                              ; preds = %390
  %394 = load %struct.file*, %struct.file** %11, align 8
  %395 = call i64 @is_file_hugepages(%struct.file* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = load i32, i32* @VM_NORESERVE, align 4
  %399 = load i32, i32* %16, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %16, align 4
  br label %401

401:                                              ; preds = %397, %393, %390
  br label %402

402:                                              ; preds = %401, %377
  %403 = load %struct.file*, %struct.file** %11, align 8
  %404 = load i64, i64* %12, align 8
  %405 = load i64, i64* %13, align 8
  %406 = load i32, i32* %16, align 4
  %407 = load i64, i64* %17, align 8
  %408 = load %struct.list_head*, %struct.list_head** %19, align 8
  %409 = call i64 @mmap_region(%struct.file* %403, i64 %404, i64 %405, i32 %406, i64 %407, %struct.list_head* %408)
  store i64 %409, i64* %12, align 8
  %410 = load i64, i64* %12, align 8
  %411 = call i32 @IS_ERR_VALUE(i64 %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %429, label %413

413:                                              ; preds = %402
  %414 = load i32, i32* %16, align 4
  %415 = load i32, i32* @VM_LOCKED, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %426, label %418

418:                                              ; preds = %413
  %419 = load i64, i64* %15, align 8
  %420 = load i64, i64* @MAP_POPULATE, align 8
  %421 = load i64, i64* @MAP_NONBLOCK, align 8
  %422 = or i64 %420, %421
  %423 = and i64 %419, %422
  %424 = load i64, i64* @MAP_POPULATE, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %429

426:                                              ; preds = %418, %413
  %427 = load i64, i64* %13, align 8
  %428 = load i64*, i64** %18, align 8
  store i64 %427, i64* %428, align 8
  br label %429

429:                                              ; preds = %426, %418, %402
  %430 = load i64, i64* %12, align 8
  store i64 %430, i64* %10, align 8
  br label %431

431:                                              ; preds = %429, %373, %360, %345, %341, %331, %316, %303, %273, %266, %251, %240, %225, %201, %186, %176, %135, %114, %101, %92, %81, %31
  %432 = load i64, i64* %10, align 8
  ret i64 %432
}

declare dso_local i64 @path_noexec(i32*) #1

declare dso_local i64 @round_hint_to_min(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @get_unmapped_area(%struct.file*, i64, i64, i64, i64) #1

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @execute_only_pkey(%struct.mm_struct*) #1

declare dso_local i32 @calc_vm_prot_bits(i64, i32) #1

declare dso_local i32 @calc_vm_flag_bits(i64) #1

declare dso_local i32 @can_do_mlock(...) #1

declare dso_local i64 @mlock_future_check(%struct.mm_struct*, i32, i64) #1

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @file_mmap_ok(%struct.file*, %struct.inode*, i64, i64) #1

declare dso_local i32 @IS_SWAPFILE(i32) #1

declare dso_local i32 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @locks_verify_locked(%struct.file*) #1

declare dso_local i64 @is_file_hugepages(%struct.file*) #1

declare dso_local i64 @mmap_region(%struct.file*, i64, i64, i32, i64, %struct.list_head*) #1

declare dso_local i32 @IS_ERR_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
