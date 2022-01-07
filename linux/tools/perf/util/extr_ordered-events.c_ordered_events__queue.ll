; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__queue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_ordered-events.c_ordered_events__queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ordered_events = type { i64, i32, i32 }
%union.perf_event = type { i32 }
%struct.ordered_event = type { i64 }

@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"out of order event\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"last flush, last_flush_type %d\0A\00", align 1
@OE_FLUSH__HALF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ordered_events__queue(%struct.ordered_events* %0, %union.perf_event* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ordered_events*, align 8
  %7 = alloca %union.perf_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ordered_event*, align 8
  store %struct.ordered_events* %0, %struct.ordered_events** %6, align 8
  store %union.perf_event* %1, %union.perf_event** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %4
  %17 = load i32, i32* @ETIME, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %64

19:                                               ; preds = %13
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %22 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = call i32 (i64, i8*, ...) @pr_oe_time(i64 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %29 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %32 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i64, i8*, ...) @pr_oe_time(i64 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %36 = getelementptr inbounds %struct.ordered_events, %struct.ordered_events* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %25, %19
  %40 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %union.perf_event*, %union.perf_event** %7, align 8
  %43 = call %struct.ordered_event* @ordered_events__new_event(%struct.ordered_events* %40, i64 %41, %union.perf_event* %42)
  store %struct.ordered_event* %43, %struct.ordered_event** %10, align 8
  %44 = load %struct.ordered_event*, %struct.ordered_event** %10, align 8
  %45 = icmp ne %struct.ordered_event* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %48 = load i32, i32* @OE_FLUSH__HALF, align 4
  %49 = call i32 @ordered_events__flush(%struct.ordered_events* %47, i32 %48)
  %50 = load %struct.ordered_events*, %struct.ordered_events** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %union.perf_event*, %union.perf_event** %7, align 8
  %53 = call %struct.ordered_event* @ordered_events__new_event(%struct.ordered_events* %50, i64 %51, %union.perf_event* %52)
  store %struct.ordered_event* %53, %struct.ordered_event** %10, align 8
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.ordered_event*, %struct.ordered_event** %10, align 8
  %56 = icmp ne %struct.ordered_event* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.ordered_event*, %struct.ordered_event** %10, align 8
  %63 = getelementptr inbounds %struct.ordered_event, %struct.ordered_event* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %57, %16
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @pr_oe_time(i64, i8*, ...) #1

declare dso_local %struct.ordered_event* @ordered_events__new_event(%struct.ordered_events*, i64, %union.perf_event*) #1

declare dso_local i32 @ordered_events__flush(%struct.ordered_events*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
