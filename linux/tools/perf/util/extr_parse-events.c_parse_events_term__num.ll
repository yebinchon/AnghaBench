; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__num.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_parse_events_term__num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_term = type { i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PARSE_EVENTS__TERM_TYPE_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_events_term__num(%struct.parse_events_term** %0, i32 %1, i8* %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.parse_events_term**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca %struct.parse_events_term, align 8
  store %struct.parse_events_term** %0, %struct.parse_events_term*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %15, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %16, align 8
  %22 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 0
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 1
  %25 = load i8*, i8** %10, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 2
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %7
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %28, align 4
  %38 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  store i32 %47, i32* %38, align 8
  %48 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %17, i32 0, i32 5
  %49 = load i32, i32* @PARSE_EVENTS__TERM_TYPE_NUM, align 4
  store i32 %49, i32* %48, align 4
  %50 = load %struct.parse_events_term**, %struct.parse_events_term*** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @new_term(%struct.parse_events_term** %50, %struct.parse_events_term* %17, i32* null, i32 %51)
  ret i32 %52
}

declare dso_local i32 @new_term(%struct.parse_events_term**, %struct.parse_events_term*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
