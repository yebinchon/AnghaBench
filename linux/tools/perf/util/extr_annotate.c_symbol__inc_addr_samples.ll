; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__inc_addr_samples.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__inc_addr_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map = type { i32 }
%struct.evsel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_sample = type { i32 }
%struct.annotated_source = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.map*, %struct.evsel*, i32, %struct.perf_sample*)* @symbol__inc_addr_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol__inc_addr_samples(%struct.symbol* %0, %struct.map* %1, %struct.evsel* %2, i32 %3, %struct.perf_sample* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.perf_sample*, align 8
  %12 = alloca %struct.annotated_source*, align 8
  store %struct.symbol* %0, %struct.symbol** %7, align 8
  store %struct.map* %1, %struct.map** %8, align 8
  store %struct.evsel* %2, %struct.evsel** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.perf_sample* %4, %struct.perf_sample** %11, align 8
  %13 = load %struct.symbol*, %struct.symbol** %7, align 8
  %14 = icmp eq %struct.symbol* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %40

16:                                               ; preds = %5
  %17 = load %struct.symbol*, %struct.symbol** %7, align 8
  %18 = load %struct.evsel*, %struct.evsel** %9, align 8
  %19 = getelementptr inbounds %struct.evsel, %struct.evsel* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.annotated_source* @symbol__hists(%struct.symbol* %17, i32 %23)
  store %struct.annotated_source* %24, %struct.annotated_source** %12, align 8
  %25 = load %struct.annotated_source*, %struct.annotated_source** %12, align 8
  %26 = icmp ne %struct.annotated_source* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = load %struct.symbol*, %struct.symbol** %7, align 8
  %29 = load %struct.map*, %struct.map** %8, align 8
  %30 = load %struct.annotated_source*, %struct.annotated_source** %12, align 8
  %31 = load %struct.evsel*, %struct.evsel** %9, align 8
  %32 = getelementptr inbounds %struct.evsel, %struct.evsel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.perf_sample*, %struct.perf_sample** %11, align 8
  %36 = call i32 @__symbol__inc_addr_samples(%struct.symbol* %28, %struct.map* %29, %struct.annotated_source* %30, i32 %33, i32 %34, %struct.perf_sample* %35)
  br label %38

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi i32 [ %36, %27 ], [ 0, %37 ]
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %15
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.annotated_source* @symbol__hists(%struct.symbol*, i32) #1

declare dso_local i32 @__symbol__inc_addr_samples(%struct.symbol*, %struct.map*, %struct.annotated_source*, i32, i32, %struct.perf_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
