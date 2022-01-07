; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_raw_syscall_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_perf_evsel__init_raw_syscall_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evsel = type { i32*, i8* }

@id = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evsel*, i8*)* @perf_evsel__init_raw_syscall_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_evsel__init_raw_syscall_tp(%struct.evsel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evsel*, align 8
  %5 = alloca i8*, align 8
  store %struct.evsel* %0, %struct.evsel** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = call i32* @malloc(i32 4)
  %7 = load %struct.evsel*, %struct.evsel** %4, align 8
  %8 = getelementptr inbounds %struct.evsel, %struct.evsel* %7, i32 0, i32 0
  store i32* %6, i32** %8, align 8
  %9 = load %struct.evsel*, %struct.evsel** %4, align 8
  %10 = getelementptr inbounds %struct.evsel, %struct.evsel* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.evsel*, %struct.evsel** %4, align 8
  %15 = load i32, i32* @id, align 4
  %16 = call i64 @perf_evsel__init_sc_tp_uint_field(%struct.evsel* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %26

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.evsel*, %struct.evsel** %4, align 8
  %22 = getelementptr inbounds %struct.evsel, %struct.evsel* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  store i32 0, i32* %3, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %18
  %27 = load %struct.evsel*, %struct.evsel** %4, align 8
  %28 = getelementptr inbounds %struct.evsel, %struct.evsel* %27, i32 0, i32 0
  %29 = call i32 @zfree(i32** %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %23, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @perf_evsel__init_sc_tp_uint_field(%struct.evsel*, i32) #1

declare dso_local i32 @zfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
