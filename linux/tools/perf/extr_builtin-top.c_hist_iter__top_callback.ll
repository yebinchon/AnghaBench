; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_hist_iter__top_callback.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_hist_iter__top_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.hist_entry_iter = type { %struct.TYPE_6__*, %struct.evsel*, %struct.hist_entry* }
%struct.TYPE_6__ = type { i32 }
%struct.evsel = type { i32 }
%struct.hist_entry = type { i32 }
%struct.addr_location = type { i32 }
%struct.perf_top = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@perf_hpp_list = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PERF_SAMPLE_BRANCH_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry_iter*, %struct.addr_location*, i32, i8*)* @hist_iter__top_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_iter__top_callback(%struct.hist_entry_iter* %0, %struct.addr_location* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.hist_entry_iter*, align 8
  %6 = alloca %struct.addr_location*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perf_top*, align 8
  %10 = alloca %struct.hist_entry*, align 8
  %11 = alloca %struct.evsel*, align 8
  store %struct.hist_entry_iter* %0, %struct.hist_entry_iter** %5, align 8
  store %struct.addr_location* %1, %struct.addr_location** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.perf_top*
  store %struct.perf_top* %13, %struct.perf_top** %9, align 8
  %14 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %5, align 8
  %15 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %14, i32 0, i32 2
  %16 = load %struct.hist_entry*, %struct.hist_entry** %15, align 8
  store %struct.hist_entry* %16, %struct.hist_entry** %10, align 8
  %17 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %5, align 8
  %18 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %17, i32 0, i32 1
  %19 = load %struct.evsel*, %struct.evsel** %18, align 8
  store %struct.evsel* %19, %struct.evsel** %11, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @perf_hpp_list, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.perf_top*, %struct.perf_top** %9, align 8
  %27 = load %struct.hist_entry*, %struct.hist_entry** %10, align 8
  %28 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %5, align 8
  %29 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.evsel*, %struct.evsel** %11, align 8
  %32 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %33 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @perf_top__record_precise_ip(%struct.perf_top* %26, %struct.hist_entry* %27, %struct.TYPE_6__* %30, %struct.evsel* %31, i32 %34)
  br label %36

36:                                               ; preds = %25, %22, %4
  %37 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %5, align 8
  %38 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.addr_location*, %struct.addr_location** %6, align 8
  %43 = load %struct.hist_entry_iter*, %struct.hist_entry_iter** %5, align 8
  %44 = getelementptr inbounds %struct.hist_entry_iter, %struct.hist_entry_iter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load %struct.perf_top*, %struct.perf_top** %9, align 8
  %47 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @hist__account_cycles(i32 %41, %struct.addr_location* %42, %struct.TYPE_6__* %45, i32 %54)
  ret i32 0
}

declare dso_local i32 @perf_top__record_precise_ip(%struct.perf_top*, %struct.hist_entry*, %struct.TYPE_6__*, %struct.evsel*, i32) #1

declare dso_local i32 @hist__account_cycles(i32, %struct.addr_location*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
