; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64 }
%struct.comm = type { i32 }
%struct.perf_sample = type { i32, i64, i64, i64, i32, i64, i64, i32 }
%struct.addr_location = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.call_return_processor = type { i32 }
%struct.thread_stack = type { i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.comm* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.call_path_root* }
%struct.call_path_root = type { i32 }
%struct.call_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@X86_RETPOLINE_DETECTED = common dso_local global i32 0, align 4
@X86_RETPOLINE_POSSIBLE = common dso_local global i32 0, align 4
@PERF_IP_FLAG_CALL = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_END = common dso_local global i32 0, align 4
@PERF_IP_FLAG_RETURN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_SYSCALLRET = common dso_local global i32 0, align 4
@PERF_IP_FLAG_INTERRUPT = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_BEGIN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_BRANCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_stack__process(%struct.thread* %0, %struct.comm* %1, %struct.perf_sample* %2, %struct.addr_location* %3, %struct.addr_location* %4, i64 %5, %struct.call_return_processor* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.comm*, align 8
  %11 = alloca %struct.perf_sample*, align 8
  %12 = alloca %struct.addr_location*, align 8
  %13 = alloca %struct.addr_location*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.call_return_processor*, align 8
  %16 = alloca %struct.thread_stack*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.call_path_root*, align 8
  %21 = alloca %struct.call_path*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.call_path_root*, align 8
  %25 = alloca %struct.call_path*, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store %struct.comm* %1, %struct.comm** %10, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %11, align 8
  store %struct.addr_location* %3, %struct.addr_location** %12, align 8
  store %struct.addr_location* %4, %struct.addr_location** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.call_return_processor* %6, %struct.call_return_processor** %15, align 8
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %28 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.thread_stack* @thread__stack(%struct.thread* %26, i32 %29)
  store %struct.thread_stack* %30, %struct.thread_stack** %16, align 8
  store i32 0, i32* %18, align 4
  %31 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %32 = icmp ne %struct.thread_stack* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %7
  %34 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %35 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %41 = call i32 @thread_stack__reset(%struct.thread* %39, %struct.thread_stack* %40)
  store %struct.thread_stack* null, %struct.thread_stack** %16, align 8
  br label %42

42:                                               ; preds = %38, %33, %7
  %43 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %44 = icmp ne %struct.thread_stack* %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = load %struct.thread*, %struct.thread** %9, align 8
  %47 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %48 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.call_return_processor*, %struct.call_return_processor** %15, align 8
  %51 = call %struct.thread_stack* @thread_stack__new(%struct.thread* %46, i32 %49, %struct.call_return_processor* %50)
  store %struct.thread_stack* %51, %struct.thread_stack** %16, align 8
  %52 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %53 = icmp ne %struct.thread_stack* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %457

57:                                               ; preds = %45
  %58 = load %struct.comm*, %struct.comm** %10, align 8
  %59 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %60 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %59, i32 0, i32 9
  store %struct.comm* %58, %struct.comm** %60, align 8
  br label %61

61:                                               ; preds = %57, %42
  %62 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %63 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @X86_RETPOLINE_DETECTED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @X86_RETPOLINE_POSSIBLE, align 4
  %70 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %71 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %74 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %73, i32 0, i32 9
  %75 = load %struct.comm*, %struct.comm** %74, align 8
  %76 = load %struct.comm*, %struct.comm** %10, align 8
  %77 = icmp ne %struct.comm* %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load %struct.thread*, %struct.thread** %9, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.thread*, %struct.thread** %9, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load %struct.thread*, %struct.thread** %9, align 8
  %88 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %89 = call i32 @__thread_stack__flush(%struct.thread* %87, %struct.thread_stack* %88)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %18, align 4
  store i32 %93, i32* %8, align 4
  br label %457

94:                                               ; preds = %86
  %95 = load %struct.comm*, %struct.comm** %10, align 8
  %96 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %97 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %96, i32 0, i32 9
  store %struct.comm* %95, %struct.comm** %97, align 8
  br label %98

98:                                               ; preds = %94, %78, %72
  %99 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %100 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %105 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %106 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %107 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %108 = load i64, i64* %14, align 8
  %109 = call i32 @thread_stack__bottom(%struct.thread_stack* %104, %struct.perf_sample* %105, %struct.addr_location* %106, %struct.addr_location* %107, i64 %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %8, align 4
  br label %457

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %117 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %121 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %124 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 8
  %129 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %130 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %133 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %139 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %142 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %144 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PERF_IP_FLAG_CALL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %250

149:                                              ; preds = %115
  %150 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %151 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %19, align 4
  %155 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %156 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %155, i32 0, i32 5
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load %struct.call_path_root*, %struct.call_path_root** %158, align 8
  store %struct.call_path_root* %159, %struct.call_path_root** %20, align 8
  %160 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %161 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %149
  %165 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %166 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164, %149
  store i32 0, i32* %8, align 4
  br label %457

170:                                              ; preds = %164
  %171 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %172 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %175 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %173, %176
  store i64 %177, i64* %22, align 8
  %178 = load i64, i64* %22, align 8
  %179 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %180 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %457

184:                                              ; preds = %170
  %185 = load %struct.call_path_root*, %struct.call_path_root** %20, align 8
  %186 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %187 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %186, i32 0, i32 3
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %190 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %198 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %197, i32 0, i32 1
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %201 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %204 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %185, i32 %196, %struct.TYPE_7__* %199, i64 %202, i32 %205)
  store %struct.call_path* %206, %struct.call_path** %21, align 8
  %207 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %208 = load i64, i64* %22, align 8
  %209 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %210 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load i64, i64* %14, align 8
  %213 = load %struct.call_path*, %struct.call_path** %21, align 8
  %214 = load i32, i32* %19, align 4
  %215 = call i32 @thread_stack__push_cp(%struct.thread_stack* %207, i64 %208, i32 %211, i64 %212, %struct.call_path* %213, i32 0, i32 %214)
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %249, label %218

218:                                              ; preds = %184
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* @X86_RETPOLINE_POSSIBLE, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %249

222:                                              ; preds = %218
  %223 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %224 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %223, i32 0, i32 1
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = icmp ne %struct.TYPE_7__* %225, null
  br i1 %226, label %227, label %249

227:                                              ; preds = %222
  %228 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %229 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %228, i32 0, i32 1
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %232 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %231, i32 0, i32 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = icmp eq %struct.TYPE_7__* %230, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %227
  %236 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %237 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %240 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %239, i32 0, i32 1
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %238, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %235
  %246 = load i32, i32* @X86_RETPOLINE_DETECTED, align 4
  %247 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %248 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %245, %235, %227, %222, %218, %184
  br label %455

250:                                              ; preds = %115
  %251 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %252 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @PERF_IP_FLAG_RETURN, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %345

257:                                              ; preds = %250
  %258 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %259 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %279, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* @PERF_IP_FLAG_SYSCALLRET, align 4
  %264 = load i32, i32* @PERF_IP_FLAG_INTERRUPT, align 4
  %265 = or i32 %263, %264
  store i32 %265, i32* %23, align 4
  %266 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %267 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %23, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %262
  store i32 0, i32* %8, align 4
  br label %457

273:                                              ; preds = %262
  %274 = load %struct.thread*, %struct.thread** %9, align 8
  %275 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %276 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %277 = load i64, i64* %14, align 8
  %278 = call i32 @thread_stack__pop_ks(%struct.thread* %274, %struct.thread_stack* %275, %struct.perf_sample* %276, i64 %277)
  store i32 %278, i32* %8, align 4
  br label %457

279:                                              ; preds = %257
  %280 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %281 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  store i32 0, i32* %8, align 4
  br label %457

285:                                              ; preds = %279
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* @X86_RETPOLINE_DETECTED, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %315

289:                                              ; preds = %285
  %290 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %291 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp sgt i32 %292, 2
  br i1 %293, label %294, label %315

294:                                              ; preds = %289
  %295 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %296 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %295, i32 0, i32 3
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %296, align 8
  %298 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %299 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %307 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %305, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %294
  %311 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %312 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %313 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %314 = call i32 @thread_stack__x86_retpoline(%struct.thread_stack* %311, %struct.perf_sample* %312, %struct.addr_location* %313)
  store i32 %314, i32* %8, align 4
  br label %457

315:                                              ; preds = %294, %289, %285
  %316 = load %struct.thread*, %struct.thread** %9, align 8
  %317 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %318 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %319 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %322 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load i64, i64* %14, align 8
  %325 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %326 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %325, i32 0, i32 1
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = call i32 @thread_stack__pop_cp(%struct.thread* %316, %struct.thread_stack* %317, i64 %320, i32 %323, i64 %324, %struct.TYPE_7__* %327)
  store i32 %328, i32* %18, align 4
  %329 = load i32, i32* %18, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %344

331:                                              ; preds = %315
  %332 = load i32, i32* %18, align 4
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %331
  %335 = load i32, i32* %18, align 4
  store i32 %335, i32* %8, align 4
  br label %457

336:                                              ; preds = %331
  %337 = load %struct.thread*, %struct.thread** %9, align 8
  %338 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %339 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %340 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %341 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %342 = load i64, i64* %14, align 8
  %343 = call i32 @thread_stack__no_call_return(%struct.thread* %337, %struct.thread_stack* %338, %struct.perf_sample* %339, %struct.addr_location* %340, %struct.addr_location* %341, i64 %342)
  store i32 %343, i32* %18, align 4
  br label %344

344:                                              ; preds = %336, %315
  br label %454

345:                                              ; preds = %250
  %346 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %347 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %360

352:                                              ; preds = %345
  %353 = load %struct.thread*, %struct.thread** %9, align 8
  %354 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %355 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %356 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = load i64, i64* %14, align 8
  %359 = call i32 @thread_stack__trace_begin(%struct.thread* %353, %struct.thread_stack* %354, i32 %357, i64 %358)
  store i32 %359, i32* %18, align 4
  br label %453

360:                                              ; preds = %345
  %361 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %362 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %372

367:                                              ; preds = %360
  %368 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %369 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %370 = load i64, i64* %14, align 8
  %371 = call i32 @thread_stack__trace_end(%struct.thread_stack* %368, %struct.perf_sample* %369, i64 %370)
  store i32 %371, i32* %18, align 4
  br label %452

372:                                              ; preds = %360
  %373 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %374 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @PERF_IP_FLAG_BRANCH, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %451

379:                                              ; preds = %372
  %380 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %381 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %380, i32 0, i32 1
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %381, align 8
  %383 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %384 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %383, i32 0, i32 1
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %384, align 8
  %386 = icmp ne %struct.TYPE_7__* %382, %385
  br i1 %386, label %387, label %451

387:                                              ; preds = %379
  %388 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %389 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %388, i32 0, i32 1
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %389, align 8
  %391 = icmp ne %struct.TYPE_7__* %390, null
  br i1 %391, label %392, label %451

392:                                              ; preds = %387
  %393 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %394 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %397 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %396, i32 0, i32 1
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp eq i64 %395, %400
  br i1 %401, label %402, label %451

402:                                              ; preds = %392
  %403 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %404 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %403, i32 0, i32 5
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 0
  %407 = load %struct.call_path_root*, %struct.call_path_root** %406, align 8
  store %struct.call_path_root* %407, %struct.call_path_root** %24, align 8
  %408 = load %struct.call_path_root*, %struct.call_path_root** %24, align 8
  %409 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %410 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %409, i32 0, i32 3
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %410, align 8
  %412 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %413 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = sub nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.addr_location*, %struct.addr_location** %13, align 8
  %421 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %420, i32 0, i32 1
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %421, align 8
  %423 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %424 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %427 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %408, i32 %419, %struct.TYPE_7__* %422, i64 %425, i32 %428)
  store %struct.call_path* %429, %struct.call_path** %25, align 8
  %430 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %431 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %432 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 8
  %434 = load i64, i64* %14, align 8
  %435 = load %struct.call_path*, %struct.call_path** %25, align 8
  %436 = call i32 @thread_stack__push_cp(%struct.thread_stack* %430, i64 0, i32 %433, i64 %434, %struct.call_path* %435, i32 0, i32 0)
  store i32 %436, i32* %18, align 4
  %437 = load i32, i32* %18, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %450, label %439

439:                                              ; preds = %402
  %440 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %441 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %440, i32 0, i32 3
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** %441, align 8
  %443 = load %struct.thread_stack*, %struct.thread_stack** %16, align 8
  %444 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 1
  store i32 1, i32* %449, align 8
  br label %450

450:                                              ; preds = %439, %402
  br label %451

451:                                              ; preds = %450, %392, %387, %379, %372
  br label %452

452:                                              ; preds = %451, %367
  br label %453

453:                                              ; preds = %452, %352
  br label %454

454:                                              ; preds = %453, %344
  br label %455

455:                                              ; preds = %454, %249
  %456 = load i32, i32* %18, align 4
  store i32 %456, i32* %8, align 4
  br label %457

457:                                              ; preds = %455, %334, %310, %284, %273, %272, %183, %169, %112, %92, %54
  %458 = load i32, i32* %8, align 4
  ret i32 %458
}

declare dso_local %struct.thread_stack* @thread__stack(%struct.thread*, i32) #1

declare dso_local i32 @thread_stack__reset(%struct.thread*, %struct.thread_stack*) #1

declare dso_local %struct.thread_stack* @thread_stack__new(%struct.thread*, i32, %struct.call_return_processor*) #1

declare dso_local i32 @__thread_stack__flush(%struct.thread*, %struct.thread_stack*) #1

declare dso_local i32 @thread_stack__bottom(%struct.thread_stack*, %struct.perf_sample*, %struct.addr_location*, %struct.addr_location*, i64) #1

declare dso_local %struct.call_path* @call_path__findnew(%struct.call_path_root*, i32, %struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @thread_stack__push_cp(%struct.thread_stack*, i64, i32, i64, %struct.call_path*, i32, i32) #1

declare dso_local i32 @thread_stack__pop_ks(%struct.thread*, %struct.thread_stack*, %struct.perf_sample*, i64) #1

declare dso_local i32 @thread_stack__x86_retpoline(%struct.thread_stack*, %struct.perf_sample*, %struct.addr_location*) #1

declare dso_local i32 @thread_stack__pop_cp(%struct.thread*, %struct.thread_stack*, i64, i32, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @thread_stack__no_call_return(%struct.thread*, %struct.thread_stack*, %struct.perf_sample*, %struct.addr_location*, %struct.addr_location*, i64) #1

declare dso_local i32 @thread_stack__trace_begin(%struct.thread*, %struct.thread_stack*, i32, i64) #1

declare dso_local i32 @thread_stack__trace_end(%struct.thread_stack*, %struct.perf_sample*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
