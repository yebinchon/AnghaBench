; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_syscall_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_syscall_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.syscall_tp* }
%struct.syscall_tp = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"__syscall_nr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*)* @perf_evsel__init_syscall_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__init_syscall_tp(%struct.evsel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evsel*, align 8
  %4 = alloca %struct.syscall_tp*, align 8
  store %struct.evsel* %0, %struct.evsel** %3, align 8
  %5 = call %struct.syscall_tp* @malloc(i32 4)
  %6 = load %struct.evsel*, %struct.evsel** %3, align 8
  %7 = getelementptr inbounds %struct.evsel, %struct.evsel* %6, i32 0, i32 0
  store %struct.syscall_tp* %5, %struct.syscall_tp** %7, align 8
  store %struct.syscall_tp* %5, %struct.syscall_tp** %4, align 8
  %8 = load %struct.evsel*, %struct.evsel** %3, align 8
  %9 = getelementptr inbounds %struct.evsel, %struct.evsel* %8, i32 0, i32 0
  %10 = load %struct.syscall_tp*, %struct.syscall_tp** %9, align 8
  %11 = icmp ne %struct.syscall_tp* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.evsel*, %struct.evsel** %3, align 8
  %14 = load %struct.syscall_tp*, %struct.syscall_tp** %4, align 8
  %15 = getelementptr inbounds %struct.syscall_tp, %struct.syscall_tp* %14, i32 0, i32 0
  %16 = call i64 @perf_evsel__init_tp_uint_field(%struct.evsel* %13, i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.evsel*, %struct.evsel** %3, align 8
  %20 = load %struct.syscall_tp*, %struct.syscall_tp** %4, align 8
  %21 = getelementptr inbounds %struct.syscall_tp, %struct.syscall_tp* %20, i32 0, i32 0
  %22 = call i64 @perf_evsel__init_tp_uint_field(%struct.evsel* %19, i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %29

25:                                               ; preds = %18, %12
  store i32 0, i32* %2, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %24
  %30 = load %struct.evsel*, %struct.evsel** %3, align 8
  %31 = getelementptr inbounds %struct.evsel, %struct.evsel* %30, i32 0, i32 0
  %32 = call i32 @zfree(%struct.syscall_tp** %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %26, %25
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.syscall_tp* @malloc(i32) #1

declare dso_local i64 @perf_evsel__init_tp_uint_field(%struct.evsel*, i32*, i8*) #1

declare dso_local i32 @zfree(%struct.syscall_tp**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
