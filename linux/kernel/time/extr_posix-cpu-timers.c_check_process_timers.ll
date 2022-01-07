; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_process_timers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_process_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.signal_struct* }
%struct.signal_struct = type { %struct.TYPE_5__*, i32*, %struct.TYPE_4__, %struct.posix_cputimers }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.posix_cputimers = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.list_head = type { i32 }

@CPUCLOCK_MAX = common dso_local global i32 0, align 4
@CPUCLOCK_PROF = common dso_local global i64 0, align 8
@SIGPROF = common dso_local global i32 0, align 4
@CPUCLOCK_VIRT = common dso_local global i64 0, align 8
@SIGVTALRM = common dso_local global i32 0, align 4
@RLIMIT_CPU = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.list_head*)* @check_process_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_process_timers(%struct.task_struct* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.signal_struct*, align 8
  %6 = alloca %struct.posix_cputimers*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.signal_struct*, %struct.signal_struct** %16, align 8
  store %struct.signal_struct* %17, %struct.signal_struct** %5, align 8
  %18 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %19 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %18, i32 0, i32 3
  store %struct.posix_cputimers* %19, %struct.posix_cputimers** %6, align 8
  %20 = load i32, i32* @CPUCLOCK_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %25 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @READ_ONCE(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %31 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %2
  store i32 1, i32* %10, align 4
  br label %155

35:                                               ; preds = %29
  %36 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %37 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %39 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @proc_sample_cputime_atomic(i32* %40, i64* %23)
  %42 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %43 = load %struct.list_head*, %struct.list_head** %4, align 8
  %44 = call i32 @collect_posix_cputimers(%struct.posix_cputimers* %42, i64* %23, %struct.list_head* %43)
  %45 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %46 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %47 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @CPUCLOCK_PROF, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %52 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i64, i64* @CPUCLOCK_PROF, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* @CPUCLOCK_PROF, align 8
  %58 = getelementptr inbounds i64, i64* %23, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @SIGPROF, align 4
  %61 = call i32 @check_cpu_itimer(%struct.task_struct* %45, i32* %50, i64* %56, i64 %59, i32 %60)
  %62 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %63 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %64 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @CPUCLOCK_VIRT, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %69 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* @CPUCLOCK_VIRT, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* @CPUCLOCK_VIRT, align 8
  %75 = getelementptr inbounds i64, i64* %23, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @SIGVTALRM, align 4
  %78 = call i32 @check_cpu_itimer(%struct.task_struct* %62, i32* %67, i64* %73, i64 %76, i32 %77)
  %79 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %80 = load i64, i64* @RLIMIT_CPU, align 8
  %81 = call i64 @task_rlimit(%struct.task_struct* %79, i64 %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @RLIM_INFINITY, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %145

85:                                               ; preds = %35
  %86 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %87 = load i64, i64* @RLIMIT_CPU, align 8
  %88 = call i64 @task_rlimit_max(%struct.task_struct* %86, i64 %87)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* @CPUCLOCK_PROF, align 8
  %90 = getelementptr inbounds i64, i64* %23, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @NSEC_PER_SEC, align 8
  %94 = mul nsw i64 %92, %93
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @NSEC_PER_SEC, align 8
  %97 = mul nsw i64 %95, %96
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @RLIM_INFINITY, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %85
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* @SIGKILL, align 4
  %105 = call i64 @check_rlimit(i64 %102, i64 %103, i32 %104, i32 0, i32 1)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %10, align 4
  br label %155

108:                                              ; preds = %101, %85
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i32, i32* @SIGXCPU, align 4
  %112 = call i64 @check_rlimit(i64 %109, i64 %110, i32 %111, i32 0, i32 0)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  %117 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %118 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i64, i64* @RLIMIT_CPU, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i64 %116, i64* %122, align 8
  %123 = load i64, i64* @NSEC_PER_SEC, align 8
  %124 = load i64, i64* %13, align 8
  %125 = add nsw i64 %124, %123
  store i64 %125, i64* %13, align 8
  br label %126

126:                                              ; preds = %114, %108
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %129 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i64, i64* @CPUCLOCK_PROF, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %127, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %139 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i64, i64* @CPUCLOCK_PROF, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i64 %137, i64* %143, align 8
  br label %144

144:                                              ; preds = %136, %126
  br label %145

145:                                              ; preds = %144, %35
  %146 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %147 = call i64 @expiry_cache_is_inactive(%struct.posix_cputimers* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.signal_struct*, %struct.signal_struct** %5, align 8
  %151 = call i32 @stop_process_timers(%struct.signal_struct* %150)
  br label %152

152:                                              ; preds = %149, %145
  %153 = load %struct.posix_cputimers*, %struct.posix_cputimers** %6, align 8
  %154 = getelementptr inbounds %struct.posix_cputimers, %struct.posix_cputimers* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %152, %107, %34
  %156 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %10, align 4
  switch i32 %157, label %159 [
    i32 0, label %158
    i32 1, label %158
  ]

158:                                              ; preds = %155, %155
  ret void

159:                                              ; preds = %155
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @READ_ONCE(i32) #2

declare dso_local i32 @proc_sample_cputime_atomic(i32*, i64*) #2

declare dso_local i32 @collect_posix_cputimers(%struct.posix_cputimers*, i64*, %struct.list_head*) #2

declare dso_local i32 @check_cpu_itimer(%struct.task_struct*, i32*, i64*, i64, i32) #2

declare dso_local i64 @task_rlimit(%struct.task_struct*, i64) #2

declare dso_local i64 @task_rlimit_max(%struct.task_struct*, i64) #2

declare dso_local i64 @check_rlimit(i64, i64, i32, i32, i32) #2

declare dso_local i64 @expiry_cache_is_inactive(%struct.posix_cputimers*) #2

declare dso_local i32 @stop_process_timers(%struct.signal_struct*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
