; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_sample__resolve_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_sample__resolve_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.perf_sample = type { i32* }
%struct.callchain_cursor = type { i32 }
%struct.symbol = type { i32 }
%struct.evsel = type { i32 }
%struct.addr_location = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@perf_hpp_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sample__resolve_callchain(%struct.perf_sample* %0, %struct.callchain_cursor* %1, %struct.symbol** %2, %struct.evsel* %3, %struct.addr_location* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_sample*, align 8
  %9 = alloca %struct.callchain_cursor*, align 8
  %10 = alloca %struct.symbol**, align 8
  %11 = alloca %struct.evsel*, align 8
  %12 = alloca %struct.addr_location*, align 8
  %13 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %8, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %9, align 8
  store %struct.symbol** %2, %struct.symbol*** %10, align 8
  store %struct.evsel* %3, %struct.evsel** %11, align 8
  store %struct.addr_location* %4, %struct.addr_location** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %15 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %46

22:                                               ; preds = %18, %6
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 2), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @perf_hpp_list, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @symbol_conf, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31, %28, %25, %22
  %35 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %36 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %39 = load %struct.evsel*, %struct.evsel** %11, align 8
  %40 = load %struct.perf_sample*, %struct.perf_sample** %8, align 8
  %41 = load %struct.symbol**, %struct.symbol*** %10, align 8
  %42 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @thread__resolve_callchain(i32 %37, %struct.callchain_cursor* %38, %struct.evsel* %39, %struct.perf_sample* %40, %struct.symbol** %41, %struct.addr_location* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %46

45:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %34, %21
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i32 @thread__resolve_callchain(i32, %struct.callchain_cursor*, %struct.evsel*, %struct.perf_sample*, %struct.symbol**, %struct.addr_location*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
