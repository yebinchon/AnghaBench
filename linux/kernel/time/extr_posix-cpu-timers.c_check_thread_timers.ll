; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_thread_timers.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_posix-cpu-timers.c_check_thread_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.posix_cputimers }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.posix_cputimers = type { i32 }
%struct.list_head = type { i32 }

@CPUCLOCK_MAX = common dso_local global i32 0, align 4
@RLIMIT_RTTIME = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@TICK_DEP_BIT_POSIX_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.list_head*)* @check_thread_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_thread_timers(%struct.task_struct* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.posix_cputimers*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 2
  store %struct.posix_cputimers* %13, %struct.posix_cputimers** %5, align 8
  %14 = load i32, i32* @CPUCLOCK_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = call i64 @dl_task(%struct.task_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i32 @check_dl_overrun(%struct.task_struct* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.posix_cputimers*, %struct.posix_cputimers** %5, align 8
  %26 = call i64 @expiry_cache_is_inactive(%struct.posix_cputimers* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %92

29:                                               ; preds = %24
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = call i32 @task_sample_cputime(%struct.task_struct* %30, i32* %17)
  %32 = load %struct.posix_cputimers*, %struct.posix_cputimers** %5, align 8
  %33 = load %struct.list_head*, %struct.list_head** %4, align 8
  %34 = call i32 @collect_posix_cputimers(%struct.posix_cputimers* %32, i32* %17, %struct.list_head* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = load i64, i64* @RLIMIT_RTTIME, align 8
  %37 = call i64 @task_rlimit(%struct.task_struct* %35, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @RLIM_INFINITY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %29
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USEC_PER_SEC, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = udiv i64 %46, %47
  %49 = mul i64 %45, %48
  store i64 %49, i64* %10, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = load i64, i64* @RLIMIT_RTTIME, align 8
  %52 = call i64 @task_rlimit_max(%struct.task_struct* %50, i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @RLIM_INFINITY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %41
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @SIGKILL, align 4
  %60 = call i64 @check_rlimit(i64 %57, i64 %58, i32 %59, i32 1, i32 1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %9, align 4
  br label %92

63:                                               ; preds = %56, %41
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @SIGXCPU, align 4
  %67 = call i64 @check_rlimit(i64 %64, i64 %65, i32 %66, i32 1, i32 0)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i64, i64* @USEC_PER_SEC, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i64, i64* @RLIMIT_RTTIME, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %73, i64* %81, align 8
  br label %82

82:                                               ; preds = %69, %63
  br label %83

83:                                               ; preds = %82, %29
  %84 = load %struct.posix_cputimers*, %struct.posix_cputimers** %5, align 8
  %85 = call i64 @expiry_cache_is_inactive(%struct.posix_cputimers* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %89 = load i32, i32* @TICK_DEP_BIT_POSIX_TIMER, align 4
  %90 = call i32 @tick_dep_clear_task(%struct.task_struct* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %62, %28
  %93 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %9, align 4
  switch i32 %94, label %96 [
    i32 0, label %95
    i32 1, label %95
  ]

95:                                               ; preds = %92, %92
  ret void

96:                                               ; preds = %92
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dl_task(%struct.task_struct*) #2

declare dso_local i32 @check_dl_overrun(%struct.task_struct*) #2

declare dso_local i64 @expiry_cache_is_inactive(%struct.posix_cputimers*) #2

declare dso_local i32 @task_sample_cputime(%struct.task_struct*, i32*) #2

declare dso_local i32 @collect_posix_cputimers(%struct.posix_cputimers*, i32*, %struct.list_head*) #2

declare dso_local i64 @task_rlimit(%struct.task_struct*, i64) #2

declare dso_local i64 @task_rlimit_max(%struct.task_struct*, i64) #2

declare dso_local i64 @check_rlimit(i64, i64, i32, i32, i32) #2

declare dso_local i32 @tick_dep_clear_task(%struct.task_struct*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
