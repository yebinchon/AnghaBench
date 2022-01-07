; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_find_prev_cpumode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_find_prev_cpumode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_callchain = type { i64* }
%struct.thread = type { i32 }
%struct.callchain_cursor = type { i32 }
%struct.symbol = type { i32 }
%struct.addr_location = type { i32 }

@PERF_CONTEXT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_callchain*, %struct.thread*, %struct.callchain_cursor*, %struct.symbol**, %struct.addr_location*, i32*, i32)* @find_prev_cpumode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_prev_cpumode(%struct.ip_callchain* %0, %struct.thread* %1, %struct.callchain_cursor* %2, %struct.symbol** %3, %struct.addr_location* %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.ip_callchain*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.callchain_cursor*, align 8
  %11 = alloca %struct.symbol**, align 8
  %12 = alloca %struct.addr_location*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ip_callchain* %0, %struct.ip_callchain** %8, align 8
  store %struct.thread* %1, %struct.thread** %9, align 8
  store %struct.callchain_cursor* %2, %struct.callchain_cursor** %10, align 8
  store %struct.symbol** %3, %struct.symbol*** %11, align 8
  store %struct.addr_location* %4, %struct.addr_location** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %40, %7
  %18 = load i32, i32* %14, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %14, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.ip_callchain*, %struct.ip_callchain** %8, align 8
  %23 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* @PERF_CONTEXT_MAX, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.thread*, %struct.thread** %9, align 8
  %34 = load %struct.callchain_cursor*, %struct.callchain_cursor** %10, align 8
  %35 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %36 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @add_callchain_ip(%struct.thread* %33, %struct.callchain_cursor* %34, %struct.symbol** %35, %struct.addr_location* %36, i32* %37, i64 %38, i32 0, i32* null, i32* null, i32 0)
  store i32 %39, i32* %15, align 4
  br label %41

40:                                               ; preds = %21
  br label %17

41:                                               ; preds = %32, %17
  %42 = load i32, i32* %15, align 4
  ret i32 %42
}

declare dso_local i32 @add_callchain_ip(%struct.thread*, %struct.callchain_cursor*, %struct.symbol**, %struct.addr_location*, i32*, i64, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
