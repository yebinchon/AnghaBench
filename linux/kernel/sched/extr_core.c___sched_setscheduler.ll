; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_core.c___sched_setscheduler.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_core.c___sched_setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i64, i32, %struct.sched_class*, i32, i64 }
%struct.sched_class = type { i32 }
%struct.sched_attr = type { i32, i32, i32, i64 }
%struct.rq_flags = type { i32 }
%struct.rq = type { %struct.TYPE_8__*, %struct.task_struct* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64 }

@MAX_DL_PRIO = common dso_local global i32 0, align 4
@MAX_RT_PRIO = common dso_local global i32 0, align 4
@DEQUEUE_SAVE = common dso_local global i32 0, align 4
@DEQUEUE_MOVE = common dso_local global i32 0, align 4
@DEQUEUE_NOCLOCK = common dso_local global i32 0, align 4
@SCHED_FLAG_RESET_ON_FORK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCHED_FLAG_ALL = common dso_local global i32 0, align 4
@SCHED_FLAG_SUGOV = common dso_local global i32 0, align 4
@MAX_USER_RT_PRIO = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RLIMIT_RTPRIO = common dso_local global i32 0, align 4
@SCHED_FLAG_UTIL_CLAMP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENQUEUE_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.sched_attr*, i32, i32)* @__sched_setscheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sched_setscheduler(%struct.task_struct* %0, %struct.sched_attr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.sched_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sched_class*, align 8
  %19 = alloca %struct.rq_flags, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.rq*, align 8
  %23 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.sched_attr* %1, %struct.sched_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %25 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @dl_policy(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @MAX_DL_PRIO, align 4
  %31 = sub nsw i32 %30, 1
  br label %39

32:                                               ; preds = %4
  %33 = load i32, i32* @MAX_RT_PRIO, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %36 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  br label %39

39:                                               ; preds = %32, %29
  %40 = phi i32 [ %31, %29 ], [ %38, %32 ]
  store i32 %40, i32* %10, align 4
  store i32 -1, i32* %13, align 4
  %41 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %42 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @DEQUEUE_SAVE, align 4
  %45 = load i32, i32* @DEQUEUE_MOVE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DEQUEUE_NOCLOCK, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = call i64 (...) @in_interrupt()
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %51, %39
  %55 = phi i1 [ false, %39 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  br label %58

58:                                               ; preds = %396, %54
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %20, align 4
  %65 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  store i32 %67, i32* %17, align 4
  br label %85

68:                                               ; preds = %58
  %69 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %70 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SCHED_FLAG_RESET_ON_FORK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @valid_policy(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %68
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %522

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %87 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SCHED_FLAG_ALL, align 4
  %90 = load i32, i32* @SCHED_FLAG_SUGOV, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %88, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %522

98:                                               ; preds = %85
  %99 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %100 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %105 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MAX_USER_RT_PRIO, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp sgt i32 %106, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %112 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %110
  %116 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %117 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @MAX_RT_PRIO, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %115, %103
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %522

125:                                              ; preds = %115, %110
  %126 = load i32, i32* %17, align 4
  %127 = call i64 @dl_policy(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %131 = call i32 @__checkparam_dl(%struct.sched_attr* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @rt_policy(i32 %134)
  %136 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %137 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = icmp ne i32 %135, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %133, %129
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %522

145:                                              ; preds = %133
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %257

148:                                              ; preds = %145
  %149 = load i32, i32* @CAP_SYS_NICE, align 4
  %150 = call i32 @capable(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %257, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = call i64 @fair_policy(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %174

156:                                              ; preds = %152
  %157 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %158 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %161 = call i64 @task_nice(%struct.task_struct* %160)
  %162 = icmp slt i64 %159, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %165 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %166 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @can_nice(%struct.task_struct* %164, i64 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @EPERM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %522

173:                                              ; preds = %163, %156
  br label %174

174:                                              ; preds = %173, %152
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @rt_policy(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %213

178:                                              ; preds = %174
  %179 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %180 = load i32, i32* @RLIMIT_RTPRIO, align 4
  %181 = call i64 @task_rlimit(%struct.task_struct* %179, i32 %180)
  store i64 %181, i64* %23, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %184 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %182, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %178
  %188 = load i64, i64* %23, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* @EPERM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %5, align 4
  br label %522

193:                                              ; preds = %187, %178
  %194 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %195 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %199 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %197, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %193
  %203 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %204 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* %23, align 8
  %208 = icmp ugt i64 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %202
  %210 = load i32, i32* @EPERM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %5, align 4
  br label %522

212:                                              ; preds = %202, %193
  br label %213

213:                                              ; preds = %212, %174
  %214 = load i32, i32* %17, align 4
  %215 = call i64 @dl_policy(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32, i32* @EPERM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %5, align 4
  br label %522

220:                                              ; preds = %213
  %221 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %222 = call i64 @task_has_idle_policy(%struct.task_struct* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @idle_policy(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %224
  %229 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %230 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %231 = call i64 @task_nice(%struct.task_struct* %230)
  %232 = call i32 @can_nice(%struct.task_struct* %229, i64 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %228
  %235 = load i32, i32* @EPERM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %5, align 4
  br label %522

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %224, %220
  %239 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %240 = call i32 @check_same_owner(%struct.task_struct* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* @EPERM, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %5, align 4
  br label %522

245:                                              ; preds = %238
  %246 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %247 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load i32, i32* %20, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* @EPERM, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %5, align 4
  br label %522

256:                                              ; preds = %250, %245
  br label %257

257:                                              ; preds = %256, %148, %145
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %257
  %261 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %262 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @SCHED_FLAG_SUGOV, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %5, align 4
  br label %522

270:                                              ; preds = %260
  %271 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %272 = call i32 @security_task_setscheduler(%struct.task_struct* %271)
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i32, i32* %11, align 4
  store i32 %276, i32* %5, align 4
  br label %522

277:                                              ; preds = %270
  br label %278

278:                                              ; preds = %277, %257
  %279 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %280 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @SCHED_FLAG_UTIL_CLAMP, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %278
  %286 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %287 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %288 = call i32 @uclamp_validate(%struct.task_struct* %286, %struct.sched_attr* %287)
  store i32 %288, i32* %11, align 4
  %289 = load i32, i32* %11, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = load i32, i32* %11, align 4
  store i32 %292, i32* %5, align 4
  br label %522

293:                                              ; preds = %285
  br label %294

294:                                              ; preds = %293, %278
  %295 = load i32, i32* %9, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = call i32 (...) @cpuset_read_lock()
  br label %299

299:                                              ; preds = %297, %294
  %300 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %301 = call %struct.rq* @task_rq_lock(%struct.task_struct* %300, %struct.rq_flags* %19)
  store %struct.rq* %301, %struct.rq** %22, align 8
  %302 = load %struct.rq*, %struct.rq** %22, align 8
  %303 = call i32 @update_rq_clock(%struct.rq* %302)
  %304 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %305 = load %struct.rq*, %struct.rq** %22, align 8
  %306 = getelementptr inbounds %struct.rq, %struct.rq* %305, i32 0, i32 1
  %307 = load %struct.task_struct*, %struct.task_struct** %306, align 8
  %308 = icmp eq %struct.task_struct* %304, %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %299
  %310 = load i32, i32* @EINVAL, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %11, align 4
  br label %512

312:                                              ; preds = %299
  %313 = load i32, i32* %17, align 4
  %314 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %315 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %313, %316
  %318 = zext i1 %317 to i32
  %319 = call i64 @unlikely(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %369

321:                                              ; preds = %312
  %322 = load i32, i32* %17, align 4
  %323 = call i64 @fair_policy(i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %327 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %330 = call i64 @task_nice(%struct.task_struct* %329)
  %331 = icmp ne i64 %328, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  br label %370

333:                                              ; preds = %325, %321
  %334 = load i32, i32* %17, align 4
  %335 = call i32 @rt_policy(i32 %334)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %333
  %338 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %339 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %343 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %341, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %337
  br label %370

347:                                              ; preds = %337, %333
  %348 = load i32, i32* %17, align 4
  %349 = call i64 @dl_policy(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %347
  %352 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %353 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %354 = call i64 @dl_param_changed(%struct.task_struct* %352, %struct.sched_attr* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351
  br label %370

357:                                              ; preds = %351, %347
  %358 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %359 = getelementptr inbounds %struct.sched_attr, %struct.sched_attr* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @SCHED_FLAG_UTIL_CLAMP, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %357
  br label %370

365:                                              ; preds = %357
  %366 = load i32, i32* %20, align 4
  %367 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %368 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %367, i32 0, i32 0
  store i32 %366, i32* %368, align 8
  store i32 0, i32* %11, align 4
  br label %512

369:                                              ; preds = %312
  br label %370

370:                                              ; preds = %369, %364, %356, %346, %332
  %371 = load i32, i32* %8, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  br label %374

374:                                              ; preds = %373, %370
  %375 = load i32, i32* %13, align 4
  %376 = icmp ne i32 %375, -1
  br i1 %376, label %377, label %383

377:                                              ; preds = %374
  %378 = load i32, i32* %13, align 4
  %379 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %380 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %378, %381
  br label %383

383:                                              ; preds = %377, %374
  %384 = phi i1 [ false, %374 ], [ %382, %377 ]
  %385 = zext i1 %384 to i32
  %386 = call i64 @unlikely(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %397

388:                                              ; preds = %383
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %17, align 4
  %389 = load %struct.rq*, %struct.rq** %22, align 8
  %390 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %391 = call i32 @task_rq_unlock(%struct.rq* %389, %struct.task_struct* %390, %struct.rq_flags* %19)
  %392 = load i32, i32* %9, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %388
  %395 = call i32 (...) @cpuset_read_unlock()
  br label %396

396:                                              ; preds = %394, %388
  br label %58

397:                                              ; preds = %383
  %398 = load i32, i32* %17, align 4
  %399 = call i64 @dl_policy(i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %405, label %401

401:                                              ; preds = %397
  %402 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %403 = call i64 @dl_task(%struct.task_struct* %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %401, %397
  %406 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %407 = load i32, i32* %17, align 4
  %408 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %409 = call i64 @sched_dl_overflow(%struct.task_struct* %406, i32 %407, %struct.sched_attr* %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = load i32, i32* @EBUSY, align 4
  %413 = sub nsw i32 0, %412
  store i32 %413, i32* %11, align 4
  br label %512

414:                                              ; preds = %405, %401
  %415 = load i32, i32* %20, align 4
  %416 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %417 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 8
  %418 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %419 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  store i32 %420, i32* %12, align 4
  %421 = load i32, i32* %9, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %436

423:                                              ; preds = %414
  %424 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %425 = load i32, i32* %10, align 4
  %426 = call i32 @rt_effective_prio(%struct.task_struct* %424, i32 %425)
  store i32 %426, i32* %16, align 4
  %427 = load i32, i32* %16, align 4
  %428 = load i32, i32* %12, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %435

430:                                              ; preds = %423
  %431 = load i32, i32* @DEQUEUE_MOVE, align 4
  %432 = xor i32 %431, -1
  %433 = load i32, i32* %21, align 4
  %434 = and i32 %433, %432
  store i32 %434, i32* %21, align 4
  br label %435

435:                                              ; preds = %430, %423
  br label %436

436:                                              ; preds = %435, %414
  %437 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %438 = call i32 @task_on_rq_queued(%struct.task_struct* %437)
  store i32 %438, i32* %14, align 4
  %439 = load %struct.rq*, %struct.rq** %22, align 8
  %440 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %441 = call i32 @task_current(%struct.rq* %439, %struct.task_struct* %440)
  store i32 %441, i32* %15, align 4
  %442 = load i32, i32* %14, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %436
  %445 = load %struct.rq*, %struct.rq** %22, align 8
  %446 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %447 = load i32, i32* %21, align 4
  %448 = call i32 @dequeue_task(%struct.rq* %445, %struct.task_struct* %446, i32 %447)
  br label %449

449:                                              ; preds = %444, %436
  %450 = load i32, i32* %15, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %449
  %453 = load %struct.rq*, %struct.rq** %22, align 8
  %454 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %455 = call i32 @put_prev_task(%struct.rq* %453, %struct.task_struct* %454)
  br label %456

456:                                              ; preds = %452, %449
  %457 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %458 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %457, i32 0, i32 4
  %459 = load %struct.sched_class*, %struct.sched_class** %458, align 8
  store %struct.sched_class* %459, %struct.sched_class** %18, align 8
  %460 = load %struct.rq*, %struct.rq** %22, align 8
  %461 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %462 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %463 = load i32, i32* %9, align 4
  %464 = call i32 @__setscheduler(%struct.rq* %460, %struct.task_struct* %461, %struct.sched_attr* %462, i32 %463)
  %465 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %466 = load %struct.sched_attr*, %struct.sched_attr** %7, align 8
  %467 = call i32 @__setscheduler_uclamp(%struct.task_struct* %465, %struct.sched_attr* %466)
  %468 = load i32, i32* %14, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %485

470:                                              ; preds = %456
  %471 = load i32, i32* %12, align 4
  %472 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %473 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = icmp slt i32 %471, %474
  br i1 %475, label %476, label %480

476:                                              ; preds = %470
  %477 = load i32, i32* @ENQUEUE_HEAD, align 4
  %478 = load i32, i32* %21, align 4
  %479 = or i32 %478, %477
  store i32 %479, i32* %21, align 4
  br label %480

480:                                              ; preds = %476, %470
  %481 = load %struct.rq*, %struct.rq** %22, align 8
  %482 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %483 = load i32, i32* %21, align 4
  %484 = call i32 @enqueue_task(%struct.rq* %481, %struct.task_struct* %482, i32 %483)
  br label %485

485:                                              ; preds = %480, %456
  %486 = load i32, i32* %15, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %485
  %489 = load %struct.rq*, %struct.rq** %22, align 8
  %490 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %491 = call i32 @set_next_task(%struct.rq* %489, %struct.task_struct* %490)
  br label %492

492:                                              ; preds = %488, %485
  %493 = load %struct.rq*, %struct.rq** %22, align 8
  %494 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %495 = load %struct.sched_class*, %struct.sched_class** %18, align 8
  %496 = load i32, i32* %12, align 4
  %497 = call i32 @check_class_changed(%struct.rq* %493, %struct.task_struct* %494, %struct.sched_class* %495, i32 %496)
  %498 = call i32 (...) @preempt_disable()
  %499 = load %struct.rq*, %struct.rq** %22, align 8
  %500 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %501 = call i32 @task_rq_unlock(%struct.rq* %499, %struct.task_struct* %500, %struct.rq_flags* %19)
  %502 = load i32, i32* %9, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %492
  %505 = call i32 (...) @cpuset_read_unlock()
  %506 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %507 = call i32 @rt_mutex_adjust_pi(%struct.task_struct* %506)
  br label %508

508:                                              ; preds = %504, %492
  %509 = load %struct.rq*, %struct.rq** %22, align 8
  %510 = call i32 @balance_callback(%struct.rq* %509)
  %511 = call i32 (...) @preempt_enable()
  store i32 0, i32* %5, align 4
  br label %522

512:                                              ; preds = %411, %365, %309
  %513 = load %struct.rq*, %struct.rq** %22, align 8
  %514 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %515 = call i32 @task_rq_unlock(%struct.rq* %513, %struct.task_struct* %514, %struct.rq_flags* %19)
  %516 = load i32, i32* %9, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %512
  %519 = call i32 (...) @cpuset_read_unlock()
  br label %520

520:                                              ; preds = %518, %512
  %521 = load i32, i32* %11, align 4
  store i32 %521, i32* %5, align 4
  br label %522

522:                                              ; preds = %520, %508, %291, %275, %267, %253, %242, %234, %217, %209, %190, %170, %142, %122, %95, %81
  %523 = load i32, i32* %5, align 4
  ret i32 %523
}

declare dso_local i64 @dl_policy(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @valid_policy(i32) #1

declare dso_local i32 @__checkparam_dl(%struct.sched_attr*) #1

declare dso_local i32 @rt_policy(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @fair_policy(i32) #1

declare dso_local i64 @task_nice(%struct.task_struct*) #1

declare dso_local i32 @can_nice(%struct.task_struct*, i64) #1

declare dso_local i64 @task_rlimit(%struct.task_struct*, i32) #1

declare dso_local i64 @task_has_idle_policy(%struct.task_struct*) #1

declare dso_local i32 @idle_policy(i32) #1

declare dso_local i32 @check_same_owner(%struct.task_struct*) #1

declare dso_local i32 @security_task_setscheduler(%struct.task_struct*) #1

declare dso_local i32 @uclamp_validate(%struct.task_struct*, %struct.sched_attr*) #1

declare dso_local i32 @cpuset_read_lock(...) #1

declare dso_local %struct.rq* @task_rq_lock(%struct.task_struct*, %struct.rq_flags*) #1

declare dso_local i32 @update_rq_clock(%struct.rq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dl_param_changed(%struct.task_struct*, %struct.sched_attr*) #1

declare dso_local i32 @task_rq_unlock(%struct.rq*, %struct.task_struct*, %struct.rq_flags*) #1

declare dso_local i32 @cpuset_read_unlock(...) #1

declare dso_local i64 @dl_task(%struct.task_struct*) #1

declare dso_local i64 @sched_dl_overflow(%struct.task_struct*, i32, %struct.sched_attr*) #1

declare dso_local i32 @rt_effective_prio(%struct.task_struct*, i32) #1

declare dso_local i32 @task_on_rq_queued(%struct.task_struct*) #1

declare dso_local i32 @task_current(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @dequeue_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @put_prev_task(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @__setscheduler(%struct.rq*, %struct.task_struct*, %struct.sched_attr*, i32) #1

declare dso_local i32 @__setscheduler_uclamp(%struct.task_struct*, %struct.sched_attr*) #1

declare dso_local i32 @enqueue_task(%struct.rq*, %struct.task_struct*, i32) #1

declare dso_local i32 @set_next_task(%struct.rq*, %struct.task_struct*) #1

declare dso_local i32 @check_class_changed(%struct.rq*, %struct.task_struct*, %struct.sched_class*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @rt_mutex_adjust_pi(%struct.task_struct*) #1

declare dso_local i32 @balance_callback(%struct.rq*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
