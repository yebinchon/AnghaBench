; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_send_signal.c_test_send_signal_tracepoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_send_signal.c_test_send_signal_tracepoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"/sys/kernel/debug/tracing/events/syscalls/sys_enter_nanosleep/id\00", align 1
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@PERF_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tracepoint\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"open syscalls/sys_enter_nanosleep/id failure: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"read syscalls/sys_enter_nanosleep/id failure: %s\0A\00", align 1
@BPF_PROG_TYPE_TRACEPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_send_signal_tracepoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_send_signal_tracepoint() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.perf_event_attr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 0
  %8 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %9 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 2
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 3
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 4
  %15 = load i32, i32* @PERF_TYPE_TRACEPOINT, align 4
  store i32 %15, i32* %14, align 4
  store i32 0, i32* %3, align 4
  %16 = load i8*, i8** %1, align 8
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i8* %16, i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i64 @CHECK(i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %0
  br label %53

27:                                               ; preds = %0
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %30 = call i32 @read(i32 %28, i8* %29, i32 256)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %37, 256
  br label %39

39:                                               ; preds = %35, %27
  %40 = phi i1 [ true, %27 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i64 @CHECK(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %53

47:                                               ; preds = %39
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %49 = call i32 @strtol(i8* %48, i32* null, i32 0)
  %50 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %2, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @BPF_PROG_TYPE_TRACEPOINT, align 4
  %52 = call i32 @test_send_signal_common(%struct.perf_event_attr* %2, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %46, %26
  ret void
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @CHECK(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @test_send_signal_common(%struct.perf_event_attr*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
