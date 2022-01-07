; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_process.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_jitdump.c_jit_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { i32 }
%struct.perf_data = type { i32 }
%struct.machine = type { i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.jit_buf_desc = type { i32, i32, %struct.machine*, %struct.perf_data*, %struct.perf_session* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jit_process(%struct.perf_session* %0, %struct.perf_data* %1, %struct.machine* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_session*, align 8
  %9 = alloca %struct.perf_data*, align 8
  %10 = alloca %struct.machine*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.evsel*, align 8
  %15 = alloca %struct.jit_buf_desc, align 8
  %16 = alloca i32, align 4
  store %struct.perf_session* %0, %struct.perf_session** %8, align 8
  store %struct.perf_data* %1, %struct.perf_data** %9, align 8
  store %struct.machine* %2, %struct.machine** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @jit_detect(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %51

22:                                               ; preds = %6
  %23 = call i32 @memset(%struct.jit_buf_desc* %15, i32 0, i32 32)
  %24 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %25 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %15, i32 0, i32 4
  store %struct.perf_session* %24, %struct.perf_session** %25, align 8
  %26 = load %struct.perf_data*, %struct.perf_data** %9, align 8
  %27 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %15, i32 0, i32 3
  store %struct.perf_data* %26, %struct.perf_data** %27, align 8
  %28 = load %struct.machine*, %struct.machine** %10, align 8
  %29 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %15, i32 0, i32 2
  store %struct.machine* %28, %struct.machine** %29, align 8
  %30 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  %31 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.evsel* @evlist__first(i32 %32)
  store %struct.evsel* %33, %struct.evsel** %14, align 8
  %34 = load %struct.evsel*, %struct.evsel** %14, align 8
  %35 = getelementptr inbounds %struct.evsel, %struct.evsel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %15, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %13, align 8
  store i32 0, i32* %40, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @jit_inject(%struct.jit_buf_desc* %15, i8* %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.jit_buf_desc, %struct.jit_buf_desc* %15, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %22
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %21
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @jit_detect(i8*, i32) #1

declare dso_local i32 @memset(%struct.jit_buf_desc*, i32, i32) #1

declare dso_local %struct.evsel* @evlist__first(i32) #1

declare dso_local i32 @jit_inject(%struct.jit_buf_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
