; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_should_drop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-top.c_should_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_event = type { i64, %union.perf_event* }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.perf_top = type { i32 }

@PERF_RECORD_SAMPLE = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@last_timestamp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ordered_event*, %struct.perf_top*)* @should_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_drop(%struct.ordered_event* %0, %struct.perf_top* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ordered_event*, align 8
  %5 = alloca %struct.perf_top*, align 8
  %6 = alloca %union.perf_event*, align 8
  %7 = alloca i64, align 8
  store %struct.ordered_event* %0, %struct.ordered_event** %4, align 8
  store %struct.perf_top* %1, %struct.perf_top** %5, align 8
  %8 = load %struct.ordered_event*, %struct.ordered_event** %4, align 8
  %9 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %8, i32 0, i32 1
  %10 = load %union.perf_event*, %union.perf_event** %9, align 8
  store %union.perf_event* %10, %union.perf_event** %6, align 8
  %11 = load %union.perf_event*, %union.perf_event** %6, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PERF_RECORD_SAMPLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.ordered_event*, %struct.ordered_event** %4, align 8
  %20 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.perf_top*, %struct.perf_top** %5, align 8
  %23 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NSEC_PER_SEC, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %21, %27
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @last_timestamp, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
