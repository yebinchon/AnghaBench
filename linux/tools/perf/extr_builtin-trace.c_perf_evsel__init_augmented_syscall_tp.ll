; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_augmented_syscall_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_augmented_syscall_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { %struct.syscall_tp*, i32 }
%struct.syscall_tp = type { i32 }
%struct.tep_format_field = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__syscall_nr\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, %struct.evsel*)* @perf_evsel__init_augmented_syscall_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__init_augmented_syscall_tp(%struct.evsel* %0, %struct.evsel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca %struct.evsel*, align 8
  %6 = alloca %struct.syscall_tp*, align 8
  %7 = alloca %struct.tep_format_field*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store %struct.evsel* %1, %struct.evsel** %5, align 8
  %8 = call %struct.syscall_tp* @malloc(i32 4)
  %9 = load %struct.evsel*, %struct.evsel** %4, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 0
  store %struct.syscall_tp* %8, %struct.syscall_tp** %10, align 8
  store %struct.syscall_tp* %8, %struct.syscall_tp** %6, align 8
  %11 = load %struct.evsel*, %struct.evsel** %4, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 0
  %13 = load %struct.syscall_tp*, %struct.syscall_tp** %12, align 8
  %14 = icmp ne %struct.syscall_tp* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.evsel*, %struct.evsel** %5, align 8
  %17 = call %struct.tep_format_field* @perf_evsel__field(%struct.evsel* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.tep_format_field* %17, %struct.tep_format_field** %7, align 8
  %18 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %19 = icmp eq %struct.tep_format_field* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.evsel*, %struct.evsel** %5, align 8
  %22 = call %struct.tep_format_field* @perf_evsel__field(%struct.evsel* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tep_format_field* %22, %struct.tep_format_field** %7, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %25 = icmp eq %struct.tep_format_field* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %46

27:                                               ; preds = %23
  %28 = load %struct.syscall_tp*, %struct.syscall_tp** %6, align 8
  %29 = getelementptr inbounds %struct.syscall_tp, %struct.syscall_tp* %28, i32 0, i32 0
  %30 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %31 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tep_format_field*, %struct.tep_format_field** %7, align 8
  %34 = getelementptr inbounds %struct.tep_format_field, %struct.tep_format_field* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.evsel*, %struct.evsel** %4, align 8
  %37 = getelementptr inbounds %struct.evsel, %struct.evsel* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @__tp_field__init_uint(i32* %29, i32 %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %46

42:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %41, %26
  %47 = load %struct.evsel*, %struct.evsel** %4, align 8
  %48 = getelementptr inbounds %struct.evsel, %struct.evsel* %47, i32 0, i32 0
  %49 = call i32 @zfree(%struct.syscall_tp** %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %43, %42
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.syscall_tp* @malloc(i32) #1

declare dso_local %struct.tep_format_field* @perf_evsel__field(%struct.evsel*, i8*) #1

declare dso_local i64 @__tp_field__init_uint(i32*, i32, i32, i32) #1

declare dso_local i32 @zfree(%struct.syscall_tp**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
