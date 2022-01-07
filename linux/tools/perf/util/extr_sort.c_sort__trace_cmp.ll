; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__trace_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__trace_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i32*, i32 }
%struct.evsel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@PERF_TYPE_TRACEPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_entry*, %struct.hist_entry*)* @sort__trace_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sort__trace_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca %struct.evsel*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.evsel* @hists_to_evsel(i32 %9)
  store %struct.evsel* %10, %struct.evsel** %6, align 8
  %11 = load %struct.evsel*, %struct.evsel** %6, align 8
  %12 = getelementptr inbounds %struct.evsel, %struct.evsel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PERF_TYPE_TRACEPOINT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %21 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %26 = call i8* @get_trace_output(%struct.hist_entry* %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %29 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %32 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %37 = call i8* @get_trace_output(%struct.hist_entry* %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %40 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %43 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %46 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @strcmp(i32* %44, i32* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.evsel* @hists_to_evsel(i32) #1

declare dso_local i8* @get_trace_output(%struct.hist_entry*) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
