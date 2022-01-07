; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__sym_hw.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__sym_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_symbol = type { i64 }
%struct.parse_events_term = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"event\00", align 1
@PARSE_EVENTS__TERM_TYPE_USER = common dso_local global i32 0, align 4
@PARSE_EVENTS__TERM_TYPE_STR = common dso_local global i32 0, align 4
@PERF_COUNT_HW_MAX = common dso_local global i32 0, align 4
@event_symbols_hw = common dso_local global %struct.event_symbol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_term__sym_hw(%struct.parse_events_term** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.parse_events_term**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_symbol*, align 8
  %8 = alloca %struct.parse_events_term, align 8
  store %struct.parse_events_term** %0, %struct.parse_events_term*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i8* [ %10, %12 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %13 ]
  store i8* %15, i8** %9, align 8
  %16 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %8, i32 0, i32 1
  %17 = load i32, i32* @PARSE_EVENTS__TERM_TYPE_USER, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %8, i32 0, i32 2
  %19 = load i32, i32* @PARSE_EVENTS__TERM_TYPE_STR, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PERF_COUNT_HW_MAX, align 4
  %22 = icmp uge i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.event_symbol*, %struct.event_symbol** @event_symbols_hw, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %25, i64 %27
  store %struct.event_symbol* %28, %struct.event_symbol** %7, align 8
  %29 = load %struct.parse_events_term**, %struct.parse_events_term*** %4, align 8
  %30 = load %struct.event_symbol*, %struct.event_symbol** %7, align 8
  %31 = getelementptr inbounds %struct.event_symbol, %struct.event_symbol* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @new_term(%struct.parse_events_term** %29, %struct.parse_events_term* %8, i8* %33, i32 0)
  ret i32 %34
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @new_term(%struct.parse_events_term**, %struct.parse_events_term*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
