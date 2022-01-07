; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.perf_event* }
%struct.perf_event = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_9__, %struct.ring_buffer*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 (%struct.perf_event*, %struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.ring_buffer = type { i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64, i64, %struct.TYPE_10__*, i32* }
%struct.user_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@sysctl_perf_event_mlock = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@RING_BUFFER_WRITABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_DONTCOPY = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@perf_mmap_vmops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @perf_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.user_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ring_buffer*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.perf_event*, %struct.perf_event** %22, align 8
  store %struct.perf_event* %23, %struct.perf_event** %6, align 8
  %24 = call %struct.user_struct* (...) @current_user()
  store %struct.user_struct* %24, %struct.user_struct** %9, align 8
  store %struct.ring_buffer* null, %struct.ring_buffer** %12, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %38

29:                                               ; preds = %2
  %30 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %31 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %447

38:                                               ; preds = %29, %2
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @VM_SHARED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %447

48:                                               ; preds = %38
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  store i64 %55, i64* %13, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = udiv i64 %61, %62
  %64 = sub i64 %63, 1
  store i64 %64, i64* %14, align 8
  br label %177

65:                                               ; preds = %48
  %66 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 5
  %68 = load %struct.ring_buffer*, %struct.ring_buffer** %67, align 8
  %69 = icmp ne %struct.ring_buffer* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %447

73:                                               ; preds = %65
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @PAGE_SIZE, align 8
  %76 = udiv i64 %74, %75
  store i64 %76, i64* %14, align 8
  %77 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 2
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %17, align 4
  %82 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %83 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %82, i32 0, i32 5
  %84 = load %struct.ring_buffer*, %struct.ring_buffer** %83, align 8
  store %struct.ring_buffer* %84, %struct.ring_buffer** %12, align 8
  %85 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %86 = icmp ne %struct.ring_buffer* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %73
  br label %413

88:                                               ; preds = %73
  %89 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %90 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %89, i32 0, i32 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @READ_ONCE(i32 %93)
  store i64 %94, i64* %19, align 8
  %95 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %96 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %95, i32 0, i32 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @READ_ONCE(i32 %99)
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %103 = call i64 @perf_data_size(%struct.ring_buffer* %102)
  %104 = load i64, i64* @PAGE_SIZE, align 8
  %105 = add i64 %103, %104
  %106 = icmp ult i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %88
  br label %413

108:                                              ; preds = %88
  %109 = load i64, i64* %19, align 8
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @PAGE_SHIFT, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 %112, %114
  %116 = icmp ne i64 %109, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %413

118:                                              ; preds = %108
  %119 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %120 = call i64 @rb_has_aux(%struct.ring_buffer* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %118
  %123 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %124 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %127 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %413

131:                                              ; preds = %122, %118
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* @PAGE_SIZE, align 8
  %139 = mul i64 %137, %138
  %140 = icmp ne i64 %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135, %131
  br label %413

142:                                              ; preds = %135
  %143 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %144 = call i64 @rb_has_aux(%struct.ring_buffer* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %148 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %413

153:                                              ; preds = %146, %142
  %154 = load i64, i64* %14, align 8
  %155 = call i32 @is_power_of_2(i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  br label %413

158:                                              ; preds = %153
  %159 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %160 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %159, i32 0, i32 5
  %161 = call i32 @atomic_inc_not_zero(i32* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  br label %413

164:                                              ; preds = %158
  %165 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %166 = call i64 @rb_has_aux(%struct.ring_buffer* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %170 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %169, i32 0, i32 7
  %171 = call i32 @atomic_inc(i32* %170)
  store i32 0, i32* %17, align 4
  br label %387

172:                                              ; preds = %164
  %173 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %174 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %173, i32 0, i32 7
  %175 = call i32 @atomic_set(i32* %174, i32 1)
  %176 = load i64, i64* %14, align 8
  store i64 %176, i64* %15, align 8
  br label %238

177:                                              ; preds = %60
  %178 = load i64, i64* %14, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i64, i64* %14, align 8
  %182 = call i32 @is_power_of_2(i64 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %447

187:                                              ; preds = %180, %177
  %188 = load i64, i64* %13, align 8
  %189 = load i64, i64* @PAGE_SIZE, align 8
  %190 = load i64, i64* %14, align 8
  %191 = add i64 1, %190
  %192 = mul i64 %189, %191
  %193 = icmp ne i64 %188, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %447

197:                                              ; preds = %187
  %198 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %199 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %198, i32 0, i32 6
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @WARN_ON_ONCE(i32 %202)
  br label %204

204:                                              ; preds = %230, %197
  %205 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %206 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %205, i32 0, i32 2
  %207 = call i32 @mutex_lock(i32* %206)
  %208 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %209 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %208, i32 0, i32 5
  %210 = load %struct.ring_buffer*, %struct.ring_buffer** %209, align 8
  %211 = icmp ne %struct.ring_buffer* %210, null
  br i1 %211, label %212, label %235

212:                                              ; preds = %204
  %213 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %214 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %213, i32 0, i32 5
  %215 = load %struct.ring_buffer*, %struct.ring_buffer** %214, align 8
  %216 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %14, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %17, align 4
  br label %387

223:                                              ; preds = %212
  %224 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %225 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %224, i32 0, i32 5
  %226 = load %struct.ring_buffer*, %struct.ring_buffer** %225, align 8
  %227 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %226, i32 0, i32 5
  %228 = call i32 @atomic_inc_not_zero(i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %232 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %231, i32 0, i32 2
  %233 = call i32 @mutex_unlock(i32* %232)
  br label %204

234:                                              ; preds = %223
  br label %387

235:                                              ; preds = %204
  %236 = load i64, i64* %14, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %15, align 8
  br label %238

238:                                              ; preds = %235, %172
  %239 = load i32, i32* @sysctl_perf_event_mlock, align 4
  %240 = load i32, i32* @PAGE_SHIFT, align 4
  %241 = sub nsw i32 %240, 10
  %242 = ashr i32 %239, %241
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %8, align 8
  %244 = call i64 (...) @num_online_cpus()
  %245 = load i64, i64* %8, align 8
  %246 = mul i64 %245, %244
  store i64 %246, i64* %8, align 8
  %247 = load %struct.user_struct*, %struct.user_struct** %9, align 8
  %248 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %247, i32 0, i32 0
  %249 = call i64 @atomic_long_read(i32* %248)
  %250 = load i64, i64* %15, align 8
  %251 = add i64 %249, %250
  store i64 %251, i64* %7, align 8
  %252 = load i64, i64* %7, align 8
  %253 = load i64, i64* %8, align 8
  %254 = icmp ule i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %238
  br label %272

256:                                              ; preds = %238
  %257 = load %struct.user_struct*, %struct.user_struct** %9, align 8
  %258 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %257, i32 0, i32 0
  %259 = call i64 @atomic_long_read(i32* %258)
  %260 = load i64, i64* %8, align 8
  %261 = icmp uge i64 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i64, i64* %15, align 8
  store i64 %263, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %271

264:                                              ; preds = %256
  %265 = load i64, i64* %7, align 8
  %266 = load i64, i64* %8, align 8
  %267 = sub i64 %265, %266
  store i64 %267, i64* %16, align 8
  %268 = load i64, i64* %16, align 8
  %269 = load i64, i64* %15, align 8
  %270 = sub nsw i64 %269, %268
  store i64 %270, i64* %15, align 8
  br label %271

271:                                              ; preds = %264, %262
  br label %272

272:                                              ; preds = %271, %255
  %273 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %274 = call i64 @rlimit(i32 %273)
  store i64 %274, i64* %11, align 8
  %275 = load i32, i32* @PAGE_SHIFT, align 4
  %276 = load i64, i64* %11, align 8
  %277 = zext i32 %275 to i64
  %278 = lshr i64 %276, %277
  store i64 %278, i64* %11, align 8
  %279 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %280 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %279, i32 0, i32 4
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = call i64 @atomic64_read(i32* %282)
  %284 = load i64, i64* %16, align 8
  %285 = add nsw i64 %283, %284
  store i64 %285, i64* %10, align 8
  %286 = load i64, i64* %10, align 8
  %287 = load i64, i64* %11, align 8
  %288 = icmp ugt i64 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %272
  %290 = call i64 (...) @perf_paranoid_tracepoint_raw()
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  %293 = load i32, i32* @CAP_IPC_LOCK, align 4
  %294 = call i32 @capable(i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* @EPERM, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %17, align 4
  br label %387

299:                                              ; preds = %292, %289, %272
  %300 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %301 = icmp ne %struct.ring_buffer* %300, null
  br i1 %301, label %307, label %302

302:                                              ; preds = %299
  %303 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %304 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %303, i32 0, i32 5
  %305 = load %struct.ring_buffer*, %struct.ring_buffer** %304, align 8
  %306 = icmp ne %struct.ring_buffer* %305, null
  br label %307

307:                                              ; preds = %302, %299
  %308 = phi i1 [ false, %299 ], [ %306, %302 ]
  %309 = zext i1 %308 to i32
  %310 = call i32 @WARN_ON(i32 %309)
  %311 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %312 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @VM_WRITE, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %307
  %318 = load i32, i32* @RING_BUFFER_WRITABLE, align 4
  %319 = load i32, i32* %18, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %18, align 4
  br label %321

321:                                              ; preds = %317, %307
  %322 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %323 = icmp ne %struct.ring_buffer* %322, null
  br i1 %323, label %366, label %324

324:                                              ; preds = %321
  %325 = load i64, i64* %14, align 8
  %326 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %327 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %324
  %332 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %333 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  br label %337

336:                                              ; preds = %324
  br label %337

337:                                              ; preds = %336, %331
  %338 = phi i32 [ %335, %331 ], [ 0, %336 ]
  %339 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %340 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %18, align 4
  %343 = call %struct.ring_buffer* @rb_alloc(i64 %325, i32 %338, i32 %341, i32 %342)
  store %struct.ring_buffer* %343, %struct.ring_buffer** %12, align 8
  %344 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %345 = icmp ne %struct.ring_buffer* %344, null
  br i1 %345, label %349, label %346

346:                                              ; preds = %337
  %347 = load i32, i32* @ENOMEM, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %17, align 4
  br label %387

349:                                              ; preds = %337
  %350 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %351 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %350, i32 0, i32 5
  %352 = call i32 @atomic_set(i32* %351, i32 1)
  %353 = call i32 (...) @get_current_user()
  %354 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %355 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %354, i32 0, i32 6
  store i32 %353, i32* %355, align 4
  %356 = load i64, i64* %16, align 8
  %357 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %358 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %357, i32 0, i32 3
  store i64 %356, i64* %358, align 8
  %359 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %360 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %361 = call i32 @ring_buffer_attach(%struct.perf_event* %359, %struct.ring_buffer* %360)
  %362 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %363 = call i32 @perf_event_init_userpage(%struct.perf_event* %362)
  %364 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %365 = call i32 @perf_event_update_userpage(%struct.perf_event* %364)
  br label %386

366:                                              ; preds = %321
  %367 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %368 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %369 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %370 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %369, i32 0, i32 3
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* %14, align 8
  %373 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %374 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* %18, align 4
  %378 = call i32 @rb_alloc_aux(%struct.ring_buffer* %367, %struct.perf_event* %368, i64 %371, i64 %372, i32 %376, i32 %377)
  store i32 %378, i32* %17, align 4
  %379 = load i32, i32* %17, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %385, label %381

381:                                              ; preds = %366
  %382 = load i64, i64* %16, align 8
  %383 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %384 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %383, i32 0, i32 4
  store i64 %382, i64* %384, align 8
  br label %385

385:                                              ; preds = %381, %366
  br label %386

386:                                              ; preds = %385, %349
  br label %387

387:                                              ; preds = %386, %346, %296, %234, %220, %168
  %388 = load i32, i32* %17, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %404, label %390

390:                                              ; preds = %387
  %391 = load i64, i64* %15, align 8
  %392 = load %struct.user_struct*, %struct.user_struct** %9, align 8
  %393 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %392, i32 0, i32 0
  %394 = call i32 @atomic_long_add(i64 %391, i32* %393)
  %395 = load i64, i64* %16, align 8
  %396 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %397 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %396, i32 0, i32 4
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 0
  %400 = call i32 @atomic64_add(i64 %395, i32* %399)
  %401 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %402 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %401, i32 0, i32 3
  %403 = call i32 @atomic_inc(i32* %402)
  br label %412

404:                                              ; preds = %387
  %405 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %406 = icmp ne %struct.ring_buffer* %405, null
  br i1 %406, label %407, label %411

407:                                              ; preds = %404
  %408 = load %struct.ring_buffer*, %struct.ring_buffer** %12, align 8
  %409 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %408, i32 0, i32 5
  %410 = call i32 @atomic_dec(i32* %409)
  br label %411

411:                                              ; preds = %407, %404
  br label %412

412:                                              ; preds = %411, %390
  br label %413

413:                                              ; preds = %412, %163, %157, %152, %141, %130, %117, %107, %87
  %414 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %415 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %414, i32 0, i32 2
  %416 = call i32 @mutex_unlock(i32* %415)
  %417 = load i32, i32* @VM_DONTCOPY, align 4
  %418 = load i32, i32* @VM_DONTEXPAND, align 4
  %419 = or i32 %417, %418
  %420 = load i32, i32* @VM_DONTDUMP, align 4
  %421 = or i32 %419, %420
  %422 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %423 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = or i32 %424, %421
  store i32 %425, i32* %423, align 8
  %426 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %427 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %426, i32 0, i32 5
  store i32* @perf_mmap_vmops, i32** %427, align 8
  %428 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %429 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %428, i32 0, i32 1
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 0
  %432 = load i32 (%struct.perf_event*, %struct.TYPE_10__*)*, i32 (%struct.perf_event*, %struct.TYPE_10__*)** %431, align 8
  %433 = icmp ne i32 (%struct.perf_event*, %struct.TYPE_10__*)* %432, null
  br i1 %433, label %434, label %445

434:                                              ; preds = %413
  %435 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %436 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %435, i32 0, i32 1
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 0
  %439 = load i32 (%struct.perf_event*, %struct.TYPE_10__*)*, i32 (%struct.perf_event*, %struct.TYPE_10__*)** %438, align 8
  %440 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %441 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %442 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %441, i32 0, i32 4
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %442, align 8
  %444 = call i32 %439(%struct.perf_event* %440, %struct.TYPE_10__* %443)
  br label %445

445:                                              ; preds = %434, %413
  %446 = load i32, i32* %17, align 4
  store i32 %446, i32* %3, align 4
  br label %447

447:                                              ; preds = %445, %194, %184, %70, %45, %35
  %448 = load i32, i32* %3, align 4
  ret i32 %448
}

declare dso_local %struct.user_struct* @current_user(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @perf_data_size(%struct.ring_buffer*) #1

declare dso_local i64 @rb_has_aux(%struct.ring_buffer*) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @perf_paranoid_tracepoint_raw(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ring_buffer* @rb_alloc(i64, i32, i32, i32) #1

declare dso_local i32 @get_current_user(...) #1

declare dso_local i32 @ring_buffer_attach(%struct.perf_event*, %struct.ring_buffer*) #1

declare dso_local i32 @perf_event_init_userpage(%struct.perf_event*) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @rb_alloc_aux(%struct.ring_buffer*, %struct.perf_event*, i64, i64, i32, i32) #1

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
