; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_unit_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_unit_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_arg = type { i32, i64, i32, %struct.timespec* }
%struct.timespec = type { i64, i64 }

@THREAD_ARG_INITIALIZER = common dso_local global %struct.thread_arg zeroinitializer, align 8
@THREAD_MAX = common dso_local global i32 0, align 4
@RET_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"timeout_ns = %ld\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ts.tv_sec  = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ts.tv_nsec = %ld\0A\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Creating third party blocker thread failed\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@waiters_woken = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"Starting thread %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Creating waiting thread failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Creating waker thread failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unit_test(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8* (i8*)*, align 8
  %10 = alloca %struct.thread_arg, align 8
  %11 = alloca %struct.thread_arg, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timespec, align 8
  %17 = alloca %struct.timespec*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i8* (i8*)* @signal_wakerfn, i8* (i8*)** %9, align 8
  %23 = bitcast %struct.thread_arg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.thread_arg* @THREAD_ARG_INITIALIZER to i8*), i64 32, i1 false)
  %24 = bitcast %struct.thread_arg* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.thread_arg* @THREAD_ARG_INITIALIZER to i8*), i64 32, i1 false)
  %25 = load i32, i32* @THREAD_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  store %struct.timespec* null, %struct.timespec** %17, align 8
  %29 = load i32, i32* @THREAD_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca %struct.thread_arg, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %32 = load i32, i32* @RET_PASS, align 4
  store i32 %32, i32* %21, align 4
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %40 = call i32 @clock_gettime(i32 %39, %struct.timespec* %16)
  store i32 %40, i32* %21, align 4
  %41 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %42, %43
  %45 = sdiv i64 %44, 1000000000
  store i64 %45, i64* %22, align 8
  %46 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  %52 = srem i64 %51, 1000000000
  %53 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* %22, align 8
  %55 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store %struct.timespec* %16, %struct.timespec** %17, align 8
  br label %66

66:                                               ; preds = %35, %4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i8* (i8*)* @broadcast_wakerfn, i8* (i8*)** %9, align 8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = bitcast %struct.thread_arg* %10 to i8*
  %75 = load i32, i32* @SCHED_FIFO, align 4
  %76 = call i64 @create_rt_thread(i32* %15, i8* (i8*)* @third_party_blocker, i8* %74, i32 %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @RET_ERROR, align 4
  store i32 %81, i32* %21, align 4
  br label %165

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %70
  %84 = call i32 @atomic_set(i32* @waiters_woken, i32 0)
  store i32 0, i32* %20, align 4
  br label %85

85:                                               ; preds = %117, %83
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* @THREAD_MAX, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %85
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %31, i64 %92
  %94 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 16
  %95 = load %struct.timespec*, %struct.timespec** %17, align 8
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %31, i64 %97
  %99 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %98, i32 0, i32 3
  store %struct.timespec* %95, %struct.timespec** %99, align 8
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %20, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %28, i64 %103
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %31, i64 %106
  %108 = bitcast %struct.thread_arg* %107 to i8*
  %109 = load i32, i32* @SCHED_FIFO, align 4
  %110 = call i64 @create_rt_thread(i32* %104, i8* (i8*)* @waiterfn, i8* %108, i32 %109, i32 1)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %89
  %113 = load i32, i32* @errno, align 4
  %114 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @RET_ERROR, align 4
  store i32 %115, i32* %21, align 4
  br label %165

116:                                              ; preds = %89
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %20, align 4
  br label %85

120:                                              ; preds = %85
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %11, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %124 = bitcast %struct.thread_arg* %11 to i8*
  %125 = load i32, i32* @SCHED_FIFO, align 4
  %126 = call i64 @create_rt_thread(i32* %14, i8* (i8*)* %123, i8* %124, i32 %125, i32 1)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @RET_ERROR, align 4
  store i32 %131, i32* %21, align 4
  br label %165

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %31, i64 0
  %134 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %133, i32 0, i32 2
  store i32* %134, i32** %19, align 8
  store i32 0, i32* %20, align 4
  br label %135

135:                                              ; preds = %153, %132
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @THREAD_MAX, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %28, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %19, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %150

148:                                              ; preds = %139
  %149 = bitcast i32** %19 to i8**
  br label %150

150:                                              ; preds = %148, %147
  %151 = phi i8** [ null, %147 ], [ %149, %148 ]
  %152 = call i32 @pthread_join(i32 %143, i8** %151)
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %20, align 4
  br label %135

156:                                              ; preds = %135
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @pthread_join(i32 %160, i8** null)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @pthread_join(i32 %163, i8** null)
  br label %165

165:                                              ; preds = %162, %128, %112, %78
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %192, label %168

168:                                              ; preds = %165
  %169 = load i32*, i32** %19, align 8
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32*, i32** %19, align 8
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %21, align 4
  br label %191

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %11, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %11, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %21, align 4
  br label %190

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %10, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %10, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %21, align 4
  br label %189

189:                                              ; preds = %186, %182
  br label %190

190:                                              ; preds = %189, %179
  br label %191

191:                                              ; preds = %190, %172
  br label %192

192:                                              ; preds = %191, %165
  %193 = load i32, i32* %21, align 4
  %194 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %194)
  ret i32 %193
}

declare dso_local i8* @signal_wakerfn(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i8* @broadcast_wakerfn(i8*) #1

declare dso_local i64 @create_rt_thread(i32*, i8* (i8*)*, i8*, i32, i32) #1

declare dso_local i8* @third_party_blocker(i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @waiterfn(i8*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
