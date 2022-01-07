; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mprotect.c_do_mprotect_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mprotect.c_do_mprotect_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64, %struct.vm_area_struct*, %struct.vm_area_struct* }

@EINVAL = common dso_local global i32 0, align 4
@PROT_GROWSDOWN = common dso_local global i64 0, align 8
@PROT_GROWSUP = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@READ_IMPLIES_EXEC = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_GROWSUP = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@VM_WRITE = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i64 0, align 8
@VM_FLAGS_CLEAR = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @do_mprotect_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mprotect_pkey(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vm_area_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %16, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PROT_GROWSDOWN, align 8
  %26 = load i64, i64* @PROT_GROWSUP, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %17, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @READ_IMPLIES_EXEC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PROT_READ, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %4
  %42 = phi i1 [ false, %4 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %18, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @untagged_addr(i64 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* @PROT_GROWSDOWN, align 8
  %47 = load i64, i64* @PROT_GROWSUP, align 8
  %48 = or i64 %46, %47
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %8, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @PROT_GROWSDOWN, align 8
  %55 = load i64, i64* @PROT_GROWSUP, align 8
  %56 = or i64 %54, %55
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %320

61:                                               ; preds = %41
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @PAGE_MASK, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %320

70:                                               ; preds = %61
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %320

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @PAGE_ALIGN(i64 %75)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %77, %78
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ule i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %320

86:                                               ; preds = %74
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @arch_validate_prot(i64 %87, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %320

94:                                               ; preds = %86
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %13, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i64 @down_write_killable(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* @EINTR, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %320

105:                                              ; preds = %94
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @mm_pkey_is_allocated(%struct.TYPE_4__* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %313

118:                                              ; preds = %110, %105
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_4__* %121, i64 %122)
  store %struct.vm_area_struct* %123, %struct.vm_area_struct** %14, align 8
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %16, align 4
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %127 = icmp ne %struct.vm_area_struct* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %118
  br label %313

129:                                              ; preds = %118
  %130 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %131 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %130, i32 0, i32 4
  %132 = load %struct.vm_area_struct*, %struct.vm_area_struct** %131, align 8
  store %struct.vm_area_struct* %132, %struct.vm_area_struct** %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @PROT_GROWSDOWN, align 8
  %136 = and i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %129
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = icmp uge i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %313

147:                                              ; preds = %140
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %6, align 8
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %16, align 4
  %153 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %154 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @VM_GROWSDOWN, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %147
  br label %313

160:                                              ; preds = %147
  br label %191

161:                                              ; preds = %129
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %163 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = icmp ugt i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %313

168:                                              ; preds = %161
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* @PROT_GROWSUP, align 8
  %172 = and i64 %170, %171
  %173 = trunc i64 %172 to i32
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %190

176:                                              ; preds = %168
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %178 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %11, align 8
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %16, align 4
  %182 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %183 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @VM_GROWSUP, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %176
  br label %313

189:                                              ; preds = %176
  br label %190

190:                                              ; preds = %189, %168
  br label %191

191:                                              ; preds = %190, %160
  %192 = load i64, i64* %6, align 8
  %193 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %194 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ugt i64 %192, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  store %struct.vm_area_struct* %198, %struct.vm_area_struct** %15, align 8
  br label %199

199:                                              ; preds = %197, %191
  %200 = load i64, i64* %6, align 8
  store i64 %200, i64* %10, align 8
  br label %201

201:                                              ; preds = %311, %199
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %206 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @VM_MAYEXEC, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i64, i64* @PROT_EXEC, align 8
  %213 = load i64, i64* %8, align 8
  %214 = or i64 %213, %212
  store i64 %214, i64* %8, align 8
  br label %215

215:                                              ; preds = %211, %204, %201
  %216 = load i64, i64* @VM_READ, align 8
  %217 = load i64, i64* @VM_WRITE, align 8
  %218 = or i64 %216, %217
  %219 = load i64, i64* @VM_EXEC, align 8
  %220 = or i64 %218, %219
  %221 = load i64, i64* @VM_FLAGS_CLEAR, align 8
  %222 = or i64 %220, %221
  store i64 %222, i64* %19, align 8
  %223 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %224 = load i64, i64* %8, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @arch_override_mprotect_pkey(%struct.vm_area_struct* %223, i64 %224, i32 %225)
  store i32 %226, i32* %21, align 4
  %227 = load i64, i64* %8, align 8
  %228 = load i32, i32* %21, align 4
  %229 = call i64 @calc_vm_prot_bits(i64 %227, i32 %228)
  store i64 %229, i64* %20, align 8
  %230 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %231 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %19, align 8
  %235 = xor i64 %234, -1
  %236 = and i64 %233, %235
  %237 = load i64, i64* %20, align 8
  %238 = or i64 %237, %236
  store i64 %238, i64* %20, align 8
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* %20, align 8
  %241 = lshr i64 %240, 4
  %242 = xor i64 %241, -1
  %243 = and i64 %239, %242
  %244 = load i64, i64* @VM_READ, align 8
  %245 = load i64, i64* @VM_WRITE, align 8
  %246 = or i64 %244, %245
  %247 = load i64, i64* @VM_EXEC, align 8
  %248 = or i64 %246, %247
  %249 = and i64 %243, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %215
  %252 = load i32, i32* @EACCES, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %16, align 4
  br label %313

254:                                              ; preds = %215
  %255 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %256 = load i64, i64* %13, align 8
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @security_file_mprotect(%struct.vm_area_struct* %255, i64 %256, i64 %257)
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %313

262:                                              ; preds = %254
  %263 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %264 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %12, align 8
  %266 = load i64, i64* %12, align 8
  %267 = load i64, i64* %11, align 8
  %268 = icmp ugt i64 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load i64, i64* %11, align 8
  store i64 %270, i64* %12, align 8
  br label %271

271:                                              ; preds = %269, %262
  %272 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %273 = load i64, i64* %10, align 8
  %274 = load i64, i64* %12, align 8
  %275 = load i64, i64* %20, align 8
  %276 = call i32 @mprotect_fixup(%struct.vm_area_struct* %272, %struct.vm_area_struct** %15, i64 %273, i64 %274, i64 %275)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %313

280:                                              ; preds = %271
  %281 = load i64, i64* %12, align 8
  store i64 %281, i64* %10, align 8
  %282 = load i64, i64* %10, align 8
  %283 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %284 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = icmp ult i64 %282, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %280
  %288 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %289 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %10, align 8
  br label %291

291:                                              ; preds = %287, %280
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* %11, align 8
  %294 = icmp uge i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  br label %313

296:                                              ; preds = %291
  %297 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %298 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %297, i32 0, i32 3
  %299 = load %struct.vm_area_struct*, %struct.vm_area_struct** %298, align 8
  store %struct.vm_area_struct* %299, %struct.vm_area_struct** %14, align 8
  %300 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %301 = icmp ne %struct.vm_area_struct* %300, null
  br i1 %301, label %302, label %308

302:                                              ; preds = %296
  %303 = load %struct.vm_area_struct*, %struct.vm_area_struct** %14, align 8
  %304 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %10, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %302, %296
  %309 = load i32, i32* @ENOMEM, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %16, align 4
  br label %313

311:                                              ; preds = %302
  %312 = load i64, i64* %13, align 8
  store i64 %312, i64* %8, align 8
  br label %201

313:                                              ; preds = %308, %295, %279, %261, %251, %188, %167, %159, %146, %128, %117
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = call i32 @up_write(i32* %317)
  %319 = load i32, i32* %16, align 4
  store i32 %319, i32* %5, align 4
  br label %320

320:                                              ; preds = %313, %102, %91, %83, %73, %67, %58
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local i64 @untagged_addr(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @arch_validate_prot(i64, i64) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @mm_pkey_is_allocated(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arch_override_mprotect_pkey(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @calc_vm_prot_bits(i64, i32) #1

declare dso_local i32 @security_file_mprotect(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mprotect_fixup(%struct.vm_area_struct*, %struct.vm_area_struct**, i64, i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
