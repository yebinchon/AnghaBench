; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-hash.c_bench_futex_hash.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-hash.c_bench_futex_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sigaction = type { i32 (i32, i32*, i32*)*, i32 }
%struct.worker = type { i32, i32, i64, i32*, i32, i32* }
%struct.perf_cpu_map = type { i32, i32, i64, i32*, i32, i32* }

@options = common dso_local global i32 0, align 4
@bench_futex_hash_usage = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@fshared = common dso_local global i64 0, align 8
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@futex_flag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Run summary [PID %d]: %d threads, each operating on %d [%s] futexes for %d secs.\0A\0A\00", align 1
@nfutexes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@nsecs = common dso_local global i32 0, align 4
@throughput_stats = common dso_local global i32 0, align 4
@thread_lock = common dso_local global i32 0, align 4
@thread_parent = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"pthread_attr_setaffinity_np\00", align 1
@workerfn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@runtime = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@silent = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"[thread %2d] futex: %p [ %ld ops/sec ]\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"[thread %2d] futexes: %p ... %p [ %ld ops/sec ]\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench_futex_hash(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigaction, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.worker*, align 8
  %12 = alloca %struct.perf_cpu_map*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.worker* null, %struct.worker** %11, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @options, align 4
  %17 = load i32, i32* @bench_futex_hash_usage, align 4
  %18 = call i32 @parse_options(i32 %14, i8** %15, i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @bench_futex_hash_usage, align 4
  %23 = load i32, i32* @options, align 4
  %24 = call i32 @usage_with_options(i32 %22, i32 %23)
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %2
  %28 = call %struct.worker* @perf_cpu_map__new(i32* null)
  %29 = bitcast %struct.worker* %28 to %struct.perf_cpu_map*
  store %struct.perf_cpu_map* %29, %struct.perf_cpu_map** %12, align 8
  %30 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %12, align 8
  %31 = icmp ne %struct.perf_cpu_map* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %267

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  %35 = call i32 @sigfillset(i32* %34)
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  store i32 (i32, i32*, i32*)* @toggle_done, i32 (i32, i32*, i32*)** %36, align 8
  %37 = load i32, i32* @SIGINT, align 4
  %38 = call i32 @sigaction(i32 %37, %struct.sigaction* %8, i32* null)
  %39 = load i32, i32* @nthreads, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %12, align 8
  %43 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* @nthreads, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* @nthreads, align 4
  %47 = call i8* @calloc(i32 %46, i32 40)
  %48 = bitcast i8* %47 to %struct.worker*
  store %struct.worker* %48, %struct.worker** %11, align 8
  %49 = load %struct.worker*, %struct.worker** %11, align 8
  %50 = icmp ne %struct.worker* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %267

52:                                               ; preds = %45
  %53 = load i64, i64* @fshared, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  store i32 %56, i32* @futex_flag, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 (...) @getpid()
  %59 = load i32, i32* @nthreads, align 4
  %60 = load i32, i32* @nfutexes, align 4
  %61 = load i64, i64* @fshared, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %65 = load i32, i32* @nsecs, align 4
  %66 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i8* %64, i32 %65)
  %67 = call i32 @init_stats(i32* @throughput_stats)
  %68 = call i32 @pthread_mutex_init(i32* @thread_lock, i32* null)
  %69 = call i32 @pthread_cond_init(i32* @thread_parent, i32* null)
  %70 = call i32 @pthread_cond_init(i32* @thread_worker, i32* null)
  %71 = load i32, i32* @nthreads, align 4
  store i32 %71, i32* @threads_starting, align 4
  %72 = call i32 @pthread_attr_init(i32* %10)
  %73 = call i32 @gettimeofday(i32* @start, i32* null)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %140, %57
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @nthreads, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %143

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.worker*, %struct.worker** %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.worker, %struct.worker* %80, i64 %82
  %84 = getelementptr inbounds %struct.worker, %struct.worker* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* @nfutexes, align 4
  %86 = call i8* @calloc(i32 %85, i32 4)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.worker*, %struct.worker** %11, align 8
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.worker, %struct.worker* %88, i64 %90
  %92 = getelementptr inbounds %struct.worker, %struct.worker* %91, i32 0, i32 3
  store i32* %87, i32** %92, align 8
  %93 = load %struct.worker*, %struct.worker** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.worker, %struct.worker* %93, i64 %95
  %97 = getelementptr inbounds %struct.worker, %struct.worker* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %78
  br label %267

101:                                              ; preds = %78
  %102 = call i32 @CPU_ZERO(i32* %7)
  %103 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %12, align 8
  %104 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %12, align 8
  %108 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = urem i32 %106, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @CPU_SET(i32 %113, i32* %7)
  %115 = call i32 @pthread_attr_setaffinity_np(i32* %10, i32 4, i32* %7)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %101
  %119 = load i32, i32* @EXIT_FAILURE, align 4
  %120 = call i32 @err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %101
  %122 = load %struct.worker*, %struct.worker** %11, align 8
  %123 = load i32, i32* %9, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.worker, %struct.worker* %122, i64 %124
  %126 = getelementptr inbounds %struct.worker, %struct.worker* %125, i32 0, i32 4
  %127 = load i32, i32* @workerfn, align 4
  %128 = load %struct.worker*, %struct.worker** %11, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.worker, %struct.worker* %128, i64 %130
  %132 = bitcast %struct.worker* %131 to i8*
  %133 = call i32 @pthread_create(i32* %126, i32* %10, i32 %127, i8* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %121
  %137 = load i32, i32* @EXIT_FAILURE, align 4
  %138 = call i32 @err(i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %121
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %74

143:                                              ; preds = %74
  %144 = call i32 @pthread_attr_destroy(i32* %10)
  %145 = call i32 @pthread_mutex_lock(i32* @thread_lock)
  br label %146

146:                                              ; preds = %149, %143
  %147 = load i32, i32* @threads_starting, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 @pthread_cond_wait(i32* @thread_parent, i32* @thread_lock)
  br label %146

151:                                              ; preds = %146
  %152 = call i32 @pthread_cond_broadcast(i32* @thread_worker)
  %153 = call i32 @pthread_mutex_unlock(i32* @thread_lock)
  %154 = load i32, i32* @nsecs, align 4
  %155 = call i32 @sleep(i32 %154)
  %156 = call i32 @toggle_done(i32 0, i32* null, i32* null)
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %175, %151
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @nthreads, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.worker*, %struct.worker** %11, align 8
  %163 = load i32, i32* %9, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.worker, %struct.worker* %162, i64 %164
  %166 = getelementptr inbounds %struct.worker, %struct.worker* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @pthread_join(i32 %167, i32* null)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %161
  %172 = load i32, i32* @EXIT_FAILURE, align 4
  %173 = call i32 @err(i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %161
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %9, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %157

178:                                              ; preds = %157
  %179 = call i32 @pthread_cond_destroy(i32* @thread_parent)
  %180 = call i32 @pthread_cond_destroy(i32* @thread_worker)
  %181 = call i32 @pthread_mutex_destroy(i32* @thread_lock)
  store i32 0, i32* %9, align 4
  br label %182

182:                                              ; preds = %256, %178
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @nthreads, align 4
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %259

186:                                              ; preds = %182
  %187 = load %struct.worker*, %struct.worker** %11, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.worker, %struct.worker* %187, i64 %189
  %191 = getelementptr inbounds %struct.worker, %struct.worker* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @runtime, i32 0, i32 0), align 8
  %194 = udiv i64 %192, %193
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %13, align 8
  %196 = call i32 @update_stats(i32* @throughput_stats, i64 %195)
  %197 = load i32, i32* @silent, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %249, label %199

199:                                              ; preds = %186
  %200 = load i32, i32* @nfutexes, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %220

202:                                              ; preds = %199
  %203 = load %struct.worker*, %struct.worker** %11, align 8
  %204 = load i32, i32* %9, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.worker, %struct.worker* %203, i64 %205
  %207 = getelementptr inbounds %struct.worker, %struct.worker* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.worker*, %struct.worker** %11, align 8
  %210 = load i32, i32* %9, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.worker, %struct.worker* %209, i64 %211
  %213 = getelementptr inbounds %struct.worker, %struct.worker* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = ptrtoint i32* %215 to i32
  %217 = load i64, i64* %13, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %208, i32 %216, i32 %218)
  br label %248

220:                                              ; preds = %199
  %221 = load %struct.worker*, %struct.worker** %11, align 8
  %222 = load i32, i32* %9, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.worker, %struct.worker* %221, i64 %223
  %225 = getelementptr inbounds %struct.worker, %struct.worker* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.worker*, %struct.worker** %11, align 8
  %228 = load i32, i32* %9, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.worker, %struct.worker* %227, i64 %229
  %231 = getelementptr inbounds %struct.worker, %struct.worker* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = ptrtoint i32* %233 to i32
  %235 = load %struct.worker*, %struct.worker** %11, align 8
  %236 = load i32, i32* %9, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.worker, %struct.worker* %235, i64 %237
  %239 = getelementptr inbounds %struct.worker, %struct.worker* %238, i32 0, i32 3
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* @nfutexes, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = ptrtoint i32* %244 to i32
  %246 = load i64, i64* %13, align 8
  %247 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %226, i32 %234, i32 %245, i64 %246)
  br label %248

248:                                              ; preds = %220, %202
  br label %249

249:                                              ; preds = %248, %186
  %250 = load %struct.worker*, %struct.worker** %11, align 8
  %251 = load i32, i32* %9, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.worker, %struct.worker* %250, i64 %252
  %254 = getelementptr inbounds %struct.worker, %struct.worker* %253, i32 0, i32 3
  %255 = call i32 @zfree(i32** %254)
  br label %256

256:                                              ; preds = %249
  %257 = load i32, i32* %9, align 4
  %258 = add i32 %257, 1
  store i32 %258, i32* %9, align 4
  br label %182

259:                                              ; preds = %182
  %260 = call i32 (...) @print_summary()
  %261 = load %struct.worker*, %struct.worker** %11, align 8
  %262 = call i32 @free(%struct.worker* %261)
  %263 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %12, align 8
  %264 = bitcast %struct.perf_cpu_map* %263 to %struct.worker*
  %265 = call i32 @free(%struct.worker* %264)
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %3, align 4
  br label %270

267:                                              ; preds = %100, %51, %32
  %268 = load i32, i32* @EXIT_FAILURE, align 4
  %269 = call i32 @err(i32 %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %259
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.worker* @perf_cpu_map__new(i32*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @toggle_done(i32, i32*, i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @init_stats(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @pthread_attr_setaffinity_np(i32*, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @update_stats(i32*, i64) #1

declare dso_local i32 @zfree(i32**) #1

declare dso_local i32 @print_summary(...) #1

declare dso_local i32 @free(%struct.worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
