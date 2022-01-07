; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_term = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PARSE_EVENTS__TERM_TYPE_STR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_term__str(%struct.parse_events_term** %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.parse_events_term**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca %struct.parse_events_term, align 8
  store %struct.parse_events_term** %0, %struct.parse_events_term*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %13, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %14, align 8
  %20 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %15, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %15, i32 0, i32 1
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %15, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %24, align 8
  %34 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %15, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ %40, %37 ], [ 0, %41 ]
  store i32 %43, i32* %34, align 4
  %44 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %15, i32 0, i32 4
  %45 = load i32, i32* @PARSE_EVENTS__TERM_TYPE_STR, align 4
  store i32 %45, i32* %44, align 8
  %46 = load %struct.parse_events_term**, %struct.parse_events_term*** %7, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @new_term(%struct.parse_events_term** %46, %struct.parse_events_term* %15, i8* %47, i32 0)
  ret i32 %48
}

declare dso_local i32 @new_term(%struct.parse_events_term**, %struct.parse_events_term*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
