; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__raw_syscall_newtp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__raw_syscall_newtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"raw_syscalls\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"syscalls\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evsel* (i8*, i8*)* @perf_evsel__raw_syscall_newtp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evsel* @perf_evsel__raw_syscall_newtp(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evsel*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.evsel* @perf_evsel__newtp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %7)
  store %struct.evsel* %8, %struct.evsel** %6, align 8
  %9 = load %struct.evsel*, %struct.evsel** %6, align 8
  %10 = call i64 @IS_ERR(%struct.evsel* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.evsel* @perf_evsel__newtp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store %struct.evsel* %14, %struct.evsel** %6, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.evsel*, %struct.evsel** %6, align 8
  %17 = call i64 @IS_ERR(%struct.evsel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.evsel* null, %struct.evsel** %3, align 8
  br label %31

20:                                               ; preds = %15
  %21 = load %struct.evsel*, %struct.evsel** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @perf_evsel__init_raw_syscall_tp(%struct.evsel* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %28

26:                                               ; preds = %20
  %27 = load %struct.evsel*, %struct.evsel** %6, align 8
  store %struct.evsel* %27, %struct.evsel** %3, align 8
  br label %31

28:                                               ; preds = %25
  %29 = load %struct.evsel*, %struct.evsel** %6, align 8
  %30 = call i32 @evsel__delete_priv(%struct.evsel* %29)
  store %struct.evsel* null, %struct.evsel** %3, align 8
  br label %31

31:                                               ; preds = %28, %26, %19
  %32 = load %struct.evsel*, %struct.evsel** %3, align 8
  ret %struct.evsel* %32
}

declare dso_local %struct.evsel* @perf_evsel__newtp(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.evsel*) #1

declare dso_local i64 @perf_evsel__init_raw_syscall_tp(%struct.evsel*, i8*) #1

declare dso_local i32 @evsel__delete_priv(%struct.evsel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
