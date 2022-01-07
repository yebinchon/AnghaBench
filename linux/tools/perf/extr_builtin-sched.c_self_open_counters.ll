; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_self_open_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_self_open_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_sched = type { i64, i64 }
%struct.perf_event_attr = type { i32, i32 }
%struct.rlimit = type { i64, i64 }

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@PERF_COUNT_SW_TASK_CLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Need privilege\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Have a try with -f option\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Error: sys_perf_event_open() syscall returned with %d (%s)\0A%s\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*, i64)* @self_open_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @self_open_counters(%struct.perf_sched* %0, i64 %1) #0 {
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.perf_event_attr, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rlimit, align 8
  %11 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @STRERR_BUFSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @STRERR_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %19 = call i32 @memset(%struct.perf_event_attr* %5, i32 0, i32 8)
  %20 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @PERF_COUNT_SW_TASK_CLOCK, align 4
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %5, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %75, %2
  %25 = call i32 (...) @perf_event_open_cloexec_flag()
  %26 = call i32 @sys_perf_event_open(%struct.perf_event_attr* %5, i32 0, i32 -1, i32 -1, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %88

29:                                               ; preds = %24
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EMFILE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %29
  %34 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %35 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %33
  %39 = load i32, i32* @RLIMIT_NOFILE, align 4
  %40 = call i32 @getrlimit(i32 %39, %struct.rlimit* %10)
  %41 = icmp eq i32 %40, -1
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %45 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = sub i64 %46, %47
  %49 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %38
  %58 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  store i64 %59, i64* %60, align 8
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %38
  %62 = load i32, i32* @RLIMIT_NOFILE, align 4
  %63 = call i32 @setrlimit(i32 %62, %struct.rlimit* %10)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @EPERM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68, %65
  br label %76

75:                                               ; preds = %61
  br label %24

76:                                               ; preds = %74
  br label %79

77:                                               ; preds = %33
  %78 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32, i32* %9, align 4
  %82 = load i64, i64* @errno, align 8
  %83 = trunc i64 %13 to i32
  %84 = call i32 @str_error_r(i64 %82, i8* %15, i32 %83)
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84, i8* %18)
  %86 = load i32, i32* @EXIT_FAILURE, align 4
  %87 = call i32 @exit(i32 %86) #4
  unreachable

88:                                               ; preds = %24
  %89 = load i32, i32* %9, align 4
  %90 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #2

declare dso_local i32 @sys_perf_event_open(%struct.perf_event_attr*, i32, i32, i32, i32) #2

declare dso_local i32 @perf_event_open_cloexec_flag(...) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @pr_err(i8*, i32, i32, i8*) #2

declare dso_local i32 @str_error_r(i64, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
