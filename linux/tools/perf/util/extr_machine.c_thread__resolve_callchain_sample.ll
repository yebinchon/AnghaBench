; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_thread__resolve_callchain_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_thread__resolve_callchain_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.thread = type { i32 }
%struct.callchain_cursor = type { i32 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { %struct.ip_callchain*, %struct.branch_stack* }
%struct.ip_callchain = type { i32, i64* }
%struct.branch_stack = type { i32, %struct.branch_entry* }
%struct.branch_entry = type { i32, i64, i32 }
%struct.symbol = type { i32 }
%struct.addr_location = type { i32 }
%struct.iterations = type { i32 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@callchain_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PERF_MAX_BRANCH_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"corrupted branch chain. skipping...\0A\00", align 1
@ORDER_CALLEE = common dso_local global i64 0, align 8
@PERF_CONTEXT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, %struct.symbol**, %struct.addr_location*, i32)* @thread__resolve_callchain_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread__resolve_callchain_sample(%struct.thread* %0, %struct.callchain_cursor* %1, %struct.evsel* %2, %struct.perf_sample* %3, %struct.symbol** %4, %struct.addr_location* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.callchain_cursor*, align 8
  %11 = alloca %struct.evsel*, align 8
  %12 = alloca %struct.perf_sample*, align 8
  %13 = alloca %struct.symbol**, align 8
  %14 = alloca %struct.addr_location*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.branch_stack*, align 8
  %17 = alloca %struct.ip_callchain*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %9, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %10, align 8
  store %struct.evsel* %2, %struct.evsel** %11, align 8
  store %struct.perf_sample* %3, %struct.perf_sample** %12, align 8
  store %struct.symbol** %4, %struct.symbol*** %13, align 8
  store %struct.addr_location* %5, %struct.addr_location** %14, align 8
  store i32 %6, i32* %15, align 4
  %32 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %33 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %32, i32 0, i32 1
  %34 = load %struct.branch_stack*, %struct.branch_stack** %33, align 8
  store %struct.branch_stack* %34, %struct.branch_stack** %16, align 8
  %35 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %36 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %35, i32 0, i32 0
  %37 = load %struct.ip_callchain*, %struct.ip_callchain** %36, align 8
  store %struct.ip_callchain* %37, %struct.ip_callchain** %17, align 8
  store i32 0, i32* %18, align 4
  %38 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %38, i32* %19, align 4
  store i32 -1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %39 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %40 = icmp ne %struct.ip_callchain* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %7
  %42 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %43 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %41, %7
  %46 = load %struct.evsel*, %struct.evsel** %11, align 8
  %47 = call i64 @perf_evsel__has_branch_callstack(%struct.evsel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.thread*, %struct.thread** %9, align 8
  %51 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %52 = load %struct.perf_sample*, %struct.perf_sample** %12, align 8
  %53 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %54 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @resolve_lbr_callchain_sample(%struct.thread* %50, %struct.callchain_cursor* %51, %struct.perf_sample* %52, %struct.symbol** %53, %struct.addr_location* %54, i32 %55)
  store i32 %56, i32* %22, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load i32, i32* %22, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %22, align 4
  br label %65

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  store i32 %66, i32* %8, align 4
  br label %388

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.thread*, %struct.thread** %9, align 8
  %70 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %71 = call i32 @arch_skip_callchain_idx(%struct.thread* %69, %struct.ip_callchain* %70)
  store i32 %71, i32* %24, align 4
  %72 = load %struct.branch_stack*, %struct.branch_stack** %16, align 8
  %73 = icmp ne %struct.branch_stack* %72, null
  br i1 %73, label %74, label %275

74:                                               ; preds = %68
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 1), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %275

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.branch_stack*, %struct.branch_stack** %16, align 8
  %80 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @min(i32 %78, i32 %81)
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %26, align 4
  %84 = zext i32 %83 to i64
  %85 = call i8* @llvm.stacksave()
  store i8* %85, i8** %27, align 8
  %86 = alloca %struct.branch_entry, i64 %84, align 16
  store i64 %84, i64* %28, align 8
  %87 = load i32, i32* %26, align 4
  %88 = zext i32 %87 to i64
  %89 = alloca %struct.iterations, i64 %88, align 16
  store i64 %88, i64* %29, align 8
  %90 = load %struct.branch_stack*, %struct.branch_stack** %16, align 8
  %91 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PERF_MAX_BRANCH_DEPTH, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %77
  %96 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %30, align 4
  br label %271

97:                                               ; preds = %77
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %192, %97
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %26, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %195

102:                                              ; preds = %98
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %104 = load i64, i64* @ORDER_CALLEE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %174

106:                                              ; preds = %102
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %108
  %110 = load %struct.branch_stack*, %struct.branch_stack** %16, align 8
  %111 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %110, i32 0, i32 1
  %112 = load %struct.branch_entry*, %struct.branch_entry** %111, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %112, i64 %114
  %116 = bitcast %struct.branch_entry* %109 to i8*
  %117 = bitcast %struct.branch_entry* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 24, i1 false)
  %118 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %119 = icmp eq %struct.ip_callchain* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  br label %192

121:                                              ; preds = %106
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %24, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %127 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i32, i32* %25, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @PERF_CONTEXT_MAX, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %125, %121
  %136 = load i32, i32* %25, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %25, align 4
  br label %173

138:                                              ; preds = %125
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %140
  %142 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %146 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %25, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %144, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %138
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %155
  %157 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %161 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %166, 8
  %168 = icmp sge i64 %159, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %153
  %170 = load i32, i32* %25, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %25, align 4
  br label %172

172:                                              ; preds = %169, %153, %138
  br label %173

173:                                              ; preds = %172, %135
  br label %191

174:                                              ; preds = %102
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %176
  %178 = load %struct.branch_stack*, %struct.branch_stack** %16, align 8
  %179 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %178, i32 0, i32 1
  %180 = load %struct.branch_entry*, %struct.branch_entry** %179, align 8
  %181 = load %struct.branch_stack*, %struct.branch_stack** %16, align 8
  %182 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sub nsw i32 %183, %184
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %180, i64 %187
  %189 = bitcast %struct.branch_entry* %177 to i8*
  %190 = bitcast %struct.branch_entry* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %189, i8* align 8 %190, i64 24, i1 false)
  br label %191

191:                                              ; preds = %174, %173
  br label %192

192:                                              ; preds = %191, %120
  %193 = load i32, i32* %20, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %20, align 4
  br label %98

195:                                              ; preds = %98
  %196 = load i32, i32* %26, align 4
  %197 = sext i32 %196 to i64
  %198 = mul i64 4, %197
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memset(%struct.iterations* %89, i32 0, i32 %199)
  %201 = load i32, i32* %26, align 4
  %202 = call i32 @remove_loops(%struct.branch_entry* %86, i32 %201, %struct.iterations* %89)
  store i32 %202, i32* %26, align 4
  store i32 0, i32* %20, align 4
  br label %203

203:                                              ; preds = %260, %195
  %204 = load i32, i32* %20, align 4
  %205 = load i32, i32* %26, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %263

207:                                              ; preds = %203
  %208 = load %struct.thread*, %struct.thread** %9, align 8
  %209 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %210 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %211 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %212 = load i32, i32* %20, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %213
  %215 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %218
  %220 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %219, i32 0, i32 2
  %221 = load i32, i32* %20, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %222
  %224 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @add_callchain_ip(%struct.thread* %208, %struct.callchain_cursor* %209, %struct.symbol** %210, %struct.addr_location* %211, i32* null, i64 %216, i32 1, i32* %220, %struct.iterations* null, i32 %225)
  store i32 %226, i32* %22, align 4
  %227 = load i32, i32* %22, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %248, label %229

229:                                              ; preds = %207
  %230 = load %struct.thread*, %struct.thread** %9, align 8
  %231 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %232 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %233 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %235
  %237 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %86, i64 %241
  %243 = getelementptr inbounds %struct.branch_entry, %struct.branch_entry* %242, i32 0, i32 2
  %244 = load i32, i32* %20, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.iterations, %struct.iterations* %89, i64 %245
  %247 = call i32 @add_callchain_ip(%struct.thread* %230, %struct.callchain_cursor* %231, %struct.symbol** %232, %struct.addr_location* %233, i32* null, i64 %239, i32 1, i32* %243, %struct.iterations* %246, i32 0)
  store i32 %247, i32* %22, align 4
  br label %248

248:                                              ; preds = %229, %207
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %248
  br label %263

254:                                              ; preds = %248
  %255 = load i32, i32* %22, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = load i32, i32* %22, align 4
  store i32 %258, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %271

259:                                              ; preds = %254
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %20, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %20, align 4
  br label %203

263:                                              ; preds = %253, %203
  %264 = load i32, i32* %18, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %263
  store i32 0, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %271

267:                                              ; preds = %263
  %268 = load i32, i32* %26, align 4
  %269 = load i32, i32* %18, align 4
  %270 = sub nsw i32 %269, %268
  store i32 %270, i32* %18, align 4
  store i32 0, i32* %30, align 4
  br label %271

271:                                              ; preds = %95, %267, %266, %257
  %272 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %30, align 4
  switch i32 %273, label %390 [
    i32 0, label %274
    i32 1, label %388
    i32 2, label %276
  ]

274:                                              ; preds = %271
  br label %275

275:                                              ; preds = %274, %74, %68
  br label %276

276:                                              ; preds = %275, %271
  %277 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %278 = load i64, i64* @ORDER_CALLEE, align 8
  %279 = icmp ne i64 %277, %278
  br i1 %279, label %280, label %303

280:                                              ; preds = %276
  %281 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %282 = load %struct.thread*, %struct.thread** %9, align 8
  %283 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %284 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %285 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %286 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %287 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %25, align 4
  %290 = sub nsw i32 %288, %289
  %291 = call i32 @find_prev_cpumode(%struct.ip_callchain* %281, %struct.thread* %282, %struct.callchain_cursor* %283, %struct.symbol** %284, %struct.addr_location* %285, i32* %19, i32 %290)
  store i32 %291, i32* %22, align 4
  %292 = load i32, i32* %22, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %280
  %295 = load i32, i32* %22, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i32, i32* %22, align 4
  br label %300

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %297
  %301 = phi i32 [ %298, %297 ], [ 0, %299 ]
  store i32 %301, i32* %8, align 4
  br label %388

302:                                              ; preds = %280
  br label %303

303:                                              ; preds = %302, %276
  %304 = load i32, i32* %25, align 4
  store i32 %304, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %305

305:                                              ; preds = %384, %303
  %306 = load i32, i32* %20, align 4
  %307 = load i32, i32* %18, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load i32, i32* %23, align 4
  %311 = load i32, i32* %15, align 4
  %312 = icmp slt i32 %310, %311
  br label %313

313:                                              ; preds = %309, %305
  %314 = phi i1 [ false, %305 ], [ %312, %309 ]
  br i1 %314, label %315, label %387

315:                                              ; preds = %313
  %316 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %317 = load i64, i64* @ORDER_CALLEE, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = load i32, i32* %20, align 4
  store i32 %320, i32* %21, align 4
  br label %328

321:                                              ; preds = %315
  %322 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %323 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sub nsw i32 %324, %325
  %327 = sub nsw i32 %326, 1
  store i32 %327, i32* %21, align 4
  br label %328

328:                                              ; preds = %321, %319
  %329 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %330 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %329, i32 0, i32 1
  %331 = load i64*, i64** %330, align 8
  %332 = load i32, i32* %21, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %31, align 8
  %336 = load i64, i64* %31, align 8
  %337 = load i64, i64* @PERF_CONTEXT_MAX, align 8
  %338 = icmp slt i64 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %328
  %340 = load i32, i32* %23, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %23, align 4
  br label %366

342:                                              ; preds = %328
  %343 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %344 = load i64, i64* @ORDER_CALLEE, align 8
  %345 = icmp ne i64 %343, %344
  br i1 %345, label %346, label %365

346:                                              ; preds = %342
  %347 = load %struct.ip_callchain*, %struct.ip_callchain** %17, align 8
  %348 = load %struct.thread*, %struct.thread** %9, align 8
  %349 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %350 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %351 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %352 = load i32, i32* %21, align 4
  %353 = call i32 @find_prev_cpumode(%struct.ip_callchain* %347, %struct.thread* %348, %struct.callchain_cursor* %349, %struct.symbol** %350, %struct.addr_location* %351, i32* %19, i32 %352)
  store i32 %353, i32* %22, align 4
  %354 = load i32, i32* %22, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %346
  %357 = load i32, i32* %22, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = load i32, i32* %22, align 4
  br label %362

361:                                              ; preds = %356
  br label %362

362:                                              ; preds = %361, %359
  %363 = phi i32 [ %360, %359 ], [ 0, %361 ]
  store i32 %363, i32* %8, align 4
  br label %388

364:                                              ; preds = %346
  br label %384

365:                                              ; preds = %342
  br label %366

366:                                              ; preds = %365, %339
  %367 = load %struct.thread*, %struct.thread** %9, align 8
  %368 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %369 = load %struct.symbol**, %struct.symbol*** %13, align 8
  %370 = load %struct.addr_location*, %struct.addr_location** %14, align 8
  %371 = load i64, i64* %31, align 8
  %372 = call i32 @add_callchain_ip(%struct.thread* %367, %struct.callchain_cursor* %368, %struct.symbol** %369, %struct.addr_location* %370, i32* %19, i64 %371, i32 0, i32* null, %struct.iterations* null, i32 0)
  store i32 %372, i32* %22, align 4
  %373 = load i32, i32* %22, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %383

375:                                              ; preds = %366
  %376 = load i32, i32* %22, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %375
  %379 = load i32, i32* %22, align 4
  br label %381

380:                                              ; preds = %375
  br label %381

381:                                              ; preds = %380, %378
  %382 = phi i32 [ %379, %378 ], [ 0, %380 ]
  store i32 %382, i32* %8, align 4
  br label %388

383:                                              ; preds = %366
  br label %384

384:                                              ; preds = %383, %364
  %385 = load i32, i32* %20, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %20, align 4
  br label %305

387:                                              ; preds = %313
  store i32 0, i32* %8, align 4
  br label %388

388:                                              ; preds = %387, %381, %362, %300, %271, %65
  %389 = load i32, i32* %8, align 4
  ret i32 %389

390:                                              ; preds = %271
  unreachable
}

declare dso_local i64 @perf_evsel__has_branch_callstack(%struct.evsel*) #1

declare dso_local i32 @resolve_lbr_callchain_sample(%struct.thread*, %struct.callchain_cursor*, %struct.perf_sample*, %struct.symbol**, %struct.addr_location*, i32) #1

declare dso_local i32 @arch_skip_callchain_idx(%struct.thread*, %struct.ip_callchain*) #1

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_warning(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memset(%struct.iterations*, i32, i32) #1

declare dso_local i32 @remove_loops(%struct.branch_entry*, i32, %struct.iterations*) #1

declare dso_local i32 @add_callchain_ip(%struct.thread*, %struct.callchain_cursor*, %struct.symbol**, %struct.addr_location*, i32*, i64, i32, i32*, %struct.iterations*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @find_prev_cpumode(%struct.ip_callchain*, %struct.thread*, %struct.callchain_cursor*, %struct.symbol**, %struct.addr_location*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
