; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c___bench_numa.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c___bench_numa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double, double, %struct.TYPE_3__, %struct.thread_data*, i32, i32 }
%struct.TYPE_3__ = type { i32, double, i32, i32, i64, i64 }
%struct.thread_data = type { double, double, double, double }
%struct.timeval = type { double, double }

@g = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" #\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" # Startup synchronization: ...\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" # process %2d: PID %d\0A\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global double 0.000000e+00, align 8
@NSEC_PER_USEC = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c" threads initialized in %.6f seconds.\0A\00", align 1
@bench_format = common dso_local global i64 0, align 8
@BENCH_FORMAT_DEFAULT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A ###\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"secs,\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"NUMA-convergence-latency\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"secs latency to NUMA-converge\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"runtime-max/thread\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"secs slowest (max) thread-runtime\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"runtime-min/thread\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"secs fastest (min) thread-runtime\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"runtime-avg/thread\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"secs average thread-runtime\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%,\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"spread-runtime/thread\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"% difference between max/avg runtime\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"GB,\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"data/thread\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"GB data processed, per thread\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"data-total\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"GB data processed, total\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"nsecs,\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"runtime/byte/thread\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"nsecs/byte/thread runtime\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"GB/sec,\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"thread-speed\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"GB/sec/thread speed\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"total-speed\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"GB/sec total speed\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"process%d:thread%d\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"GB/sec\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"thread-system-time\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"system CPU time/thread\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"thread-user-time\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"user CPU time/thread\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__bench_numa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bench_numa(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca [35 x i8], align 16
  %24 = alloca %struct.thread_data*, align 8
  store i8* %0, i8** %3, align 8
  %25 = call i64 (...) @init()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %383

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i64* @zalloc(i32 %35)
  store i64* %36, i64** %9, align 8
  store i64 -1, i64* %10, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  %39 = call i32 @pthread_mutex_lock(i32* %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @stdout, align 4
  %49 = call i32 @fflush(i32 %48)
  br label %50

50:                                               ; preds = %45, %28
  %51 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  store i32 0, i32* %18, align 4
  br label %52

52:                                               ; preds = %80, %50
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = call i64 (...) @fork()
  store i64 %60, i64* %10, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %61, i64 %62)
  %64 = load i64, i64* %10, align 8
  %65 = icmp slt i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @worker_process(i32 %71)
  %73 = call i32 @exit(i32 0) #4
  unreachable

74:                                               ; preds = %59
  %75 = load i64, i64* %10, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %18, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %18, align 4
  br label %52

83:                                               ; preds = %52
  br label %84

84:                                               ; preds = %93, %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load double, double* %90, align 8
  %92 = fcmp une double %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* @USEC_PER_MSEC, align 4
  %95 = call i32 @usleep(i32 %94)
  br label %84

96:                                               ; preds = %84
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load double, double* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = fcmp une double %99, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @BUG_ON(i32 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %96
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = call i32 @pthread_mutex_lock(i32* %114)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = call i32 @pthread_mutex_unlock(i32* %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = call i32 @pthread_mutex_lock(i32* %120)
  %122 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %123 = call i32 @timersub(%struct.timeval* %5, %struct.timeval* %4, %struct.timeval* %6)
  %124 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %125 = load double, double* %124, align 8
  %126 = load double, double* @NSEC_PER_SEC, align 8
  %127 = fmul double %125, %126
  store double %127, double* %21, align 8
  %128 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %129 = load double, double* %128, align 8
  %130 = load double, double* @NSEC_PER_USEC, align 8
  %131 = fmul double %129, %130
  %132 = load double, double* %21, align 8
  %133 = fadd double %132, %131
  store double %133, double* %21, align 8
  %134 = load double, double* @NSEC_PER_SEC, align 8
  %135 = load double, double* %21, align 8
  %136 = fdiv double %135, %134
  store double %136, double* %21, align 8
  %137 = load double, double* %21, align 8
  %138 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), double %137)
  %139 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %140 = bitcast %struct.timeval* %4 to i8*
  %141 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = call i32 @pthread_mutex_unlock(i32* %143)
  br label %147

145:                                              ; preds = %96
  %146 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  br label %147

147:                                              ; preds = %145, %112
  store i32 0, i32* %18, align 4
  br label %148

148:                                              ; preds = %172, %147
  %149 = load i32, i32* %18, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %149, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %148
  %156 = load i64*, i64** %9, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @waitpid(i64 %160, i32* %16, i32 0)
  store i64 %161, i64* %11, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp slt i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @BUG_ON(i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @WIFEXITED(i32 %166)
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @BUG_ON(i32 %170)
  br label %172

172:                                              ; preds = %155
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %18, align 4
  br label %148

175:                                              ; preds = %148
  store double 0.000000e+00, double* %8, align 8
  store double -1.000000e+00, double* %7, align 8
  store i32 0, i32* %19, align 4
  br label %176

176:                                              ; preds = %199, %175
  %177 = load i32, i32* %19, align 4
  %178 = sitofp i32 %177 to double
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load double, double* %181, align 8
  %183 = fcmp olt double %178, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %176
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load %struct.thread_data*, %struct.thread_data** %186, align 8
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %187, i64 %189
  %191 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %190, i32 0, i32 0
  %192 = load double, double* %191, align 8
  store double %192, double* %22, align 8
  %193 = load double, double* %22, align 8
  %194 = load double, double* %8, align 8
  %195 = fadd double %194, %193
  store double %195, double* %8, align 8
  %196 = load double, double* %22, align 8
  %197 = load double, double* %7, align 8
  %198 = call double @min(double %196, double %197)
  store double %198, double* %7, align 8
  br label %199

199:                                              ; preds = %184
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %19, align 4
  br label %176

202:                                              ; preds = %176
  %203 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %204 = call i32 @timersub(%struct.timeval* %5, %struct.timeval* %4, %struct.timeval* %6)
  %205 = load i64, i64* @bench_format, align 8
  %206 = load i64, i64* @BENCH_FORMAT_DEFAULT, align 8
  %207 = icmp ne i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @BUG_ON(i32 %208)
  %210 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %211 = call i32 (i8*, ...) @tprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %212 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %213 = load double, double* %212, align 8
  %214 = load double, double* @NSEC_PER_SEC, align 8
  %215 = fmul double %213, %214
  store double %215, double* %14, align 8
  %216 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %217 = load double, double* %216, align 8
  %218 = load double, double* @NSEC_PER_USEC, align 8
  %219 = fmul double %217, %218
  %220 = load double, double* %14, align 8
  %221 = fadd double %220, %219
  store double %221, double* %14, align 8
  %222 = load double, double* @NSEC_PER_SEC, align 8
  %223 = load double, double* %14, align 8
  %224 = fdiv double %223, %222
  store double %224, double* %14, align 8
  %225 = load double, double* %7, align 8
  %226 = load double, double* @NSEC_PER_SEC, align 8
  %227 = fdiv double %225, %226
  store double %227, double* %15, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load double, double* %229, align 8
  store double %230, double* %17, align 8
  %231 = load double, double* %8, align 8
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 1
  %235 = load double, double* %234, align 8
  %236 = fdiv double %231, %235
  %237 = load double, double* @NSEC_PER_SEC, align 8
  %238 = fdiv double %236, %237
  store double %238, double* %13, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %202
  %245 = load i8*, i8** %3, align 8
  %246 = load double, double* %14, align 8
  %247 = call i32 @print_res(i8* %245, double %246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %248

248:                                              ; preds = %244, %202
  %249 = load i8*, i8** %3, align 8
  %250 = load double, double* %14, align 8
  %251 = call i32 @print_res(i8* %249, double %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %252 = load i8*, i8** %3, align 8
  %253 = load double, double* %15, align 8
  %254 = call i32 @print_res(i8* %252, double %253, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %255 = load i8*, i8** %3, align 8
  %256 = load double, double* %13, align 8
  %257 = call i32 @print_res(i8* %255, double %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %258 = load double, double* %14, align 8
  %259 = load double, double* %15, align 8
  %260 = fsub double %258, %259
  %261 = fdiv double %260, 2.000000e+00
  store double %261, double* %12, align 8
  %262 = load i8*, i8** %3, align 8
  %263 = load double, double* %12, align 8
  %264 = load double, double* %14, align 8
  %265 = fdiv double %263, %264
  %266 = fmul double %265, 1.000000e+02
  %267 = call i32 @print_res(i8* %262, double %266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  %268 = load i8*, i8** %3, align 8
  %269 = load double, double* %17, align 8
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 1
  %273 = load double, double* %272, align 8
  %274 = fdiv double %269, %273
  %275 = fdiv double %274, 1.000000e+09
  %276 = call i32 @print_res(i8* %268, double %275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %277 = load i8*, i8** %3, align 8
  %278 = load double, double* %17, align 8
  %279 = fdiv double %278, 1.000000e+09
  %280 = call i32 @print_res(i8* %277, double %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  %281 = load i8*, i8** %3, align 8
  %282 = load double, double* %14, align 8
  %283 = load double, double* @NSEC_PER_SEC, align 8
  %284 = fmul double %282, %283
  %285 = load double, double* %17, align 8
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  %289 = load double, double* %288, align 8
  %290 = fdiv double %285, %289
  %291 = fdiv double %284, %290
  %292 = call i32 @print_res(i8* %281, double %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  %293 = load i8*, i8** %3, align 8
  %294 = load double, double* %17, align 8
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 1
  %298 = load double, double* %297, align 8
  %299 = fdiv double %294, %298
  %300 = fdiv double %299, 1.000000e+09
  %301 = load double, double* %14, align 8
  %302 = fdiv double %300, %301
  %303 = call i32 @print_res(i8* %293, double %302, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %304 = load i8*, i8** %3, align 8
  %305 = load double, double* %17, align 8
  %306 = load double, double* %14, align 8
  %307 = fdiv double %305, %306
  %308 = fdiv double %307, 1.000000e+09
  %309 = call i32 @print_res(i8* %304, double %308, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = icmp sge i32 %313, 2
  br i1 %314, label %315, label %379

315:                                              ; preds = %248
  store i32 0, i32* %20, align 4
  br label %316

316:                                              ; preds = %375, %315
  %317 = load i32, i32* %20, align 4
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp slt i32 %317, %321
  br i1 %322, label %323, label %378

323:                                              ; preds = %316
  store i32 0, i32* %19, align 4
  br label %324

324:                                              ; preds = %371, %323
  %325 = load i32, i32* %19, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %325, %329
  br i1 %330, label %331, label %374

331:                                              ; preds = %324
  %332 = getelementptr inbounds [35 x i8], [35 x i8]* %23, i64 0, i64 0
  %333 = call i32 @memset(i8* %332, i32 0, i32 35)
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 3
  %336 = load %struct.thread_data*, %struct.thread_data** %335, align 8
  %337 = load i32, i32* %20, align 4
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = mul nsw i32 %337, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %336, i64 %343
  %345 = load i32, i32* %19, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %344, i64 %346
  store %struct.thread_data* %347, %struct.thread_data** %24, align 8
  %348 = getelementptr inbounds [35 x i8], [35 x i8]* %23, i64 0, i64 0
  %349 = load i32, i32* %20, align 4
  %350 = load i32, i32* %19, align 4
  %351 = call i32 @snprintf(i8* %348, i32 35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %349, i32 %350)
  %352 = getelementptr inbounds [35 x i8], [35 x i8]* %23, i64 0, i64 0
  %353 = load %struct.thread_data*, %struct.thread_data** %24, align 8
  %354 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %353, i32 0, i32 1
  %355 = load double, double* %354, align 8
  %356 = call i32 @print_res(i8* %352, double %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %357 = getelementptr inbounds [35 x i8], [35 x i8]* %23, i64 0, i64 0
  %358 = load %struct.thread_data*, %struct.thread_data** %24, align 8
  %359 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %358, i32 0, i32 2
  %360 = load double, double* %359, align 8
  %361 = load double, double* @NSEC_PER_SEC, align 8
  %362 = fdiv double %360, %361
  %363 = call i32 @print_res(i8* %357, double %362, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0))
  %364 = getelementptr inbounds [35 x i8], [35 x i8]* %23, i64 0, i64 0
  %365 = load %struct.thread_data*, %struct.thread_data** %24, align 8
  %366 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %365, i32 0, i32 3
  %367 = load double, double* %366, align 8
  %368 = load double, double* @NSEC_PER_SEC, align 8
  %369 = fdiv double %367, %368
  %370 = call i32 @print_res(i8* %364, double %369, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  br label %371

371:                                              ; preds = %331
  %372 = load i32, i32* %19, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %19, align 4
  br label %324

374:                                              ; preds = %324
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %20, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %20, align 4
  br label %316

378:                                              ; preds = %316
  br label %379

379:                                              ; preds = %378, %248
  %380 = load i64*, i64** %9, align 8
  %381 = call i32 @free(i64* %380)
  %382 = call i32 (...) @deinit()
  store i32 0, i32* %2, align 4
  br label %383

383:                                              ; preds = %379, %27
  %384 = load i32, i32* %2, align 4
  ret i32 %384
}

declare dso_local i64 @init(...) #1

declare dso_local i64* @zalloc(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @tprintf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dprintf(i8*, i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @worker_process(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local double @min(double, double) #1

declare dso_local i32 @print_res(i8*, double, i8*, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
