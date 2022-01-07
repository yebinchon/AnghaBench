; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__find_cpumode_addr_location.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c_thread__find_cpumode_addr_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.addr_location = type { i64 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_KERNEL = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_USER = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread__find_cpumode_addr_location(%struct.thread* %0, i32 %1, %struct.addr_location* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.addr_location* %2, %struct.addr_location** %6, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @PERF_RECORD_MISC_KERNEL, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @PERF_RECORD_MISC_GUEST_USER, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @PERF_RECORD_MISC_GUEST_KERNEL, align 4
  store i32 %16, i32* %15, align 4
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %20 = call i64 @ARRAY_SIZE(i32* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %29 = call i32 @thread__find_symbol(%struct.thread* %23, i32 %26, i32 %27, %struct.addr_location* %28)
  %30 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %31 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %39

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %17

39:                                               ; preds = %34, %17
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @thread__find_symbol(%struct.thread*, i32, i32, %struct.addr_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
