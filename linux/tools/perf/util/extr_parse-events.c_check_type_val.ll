; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_check_type_val.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_check_type_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_term = type { i32, i32 }
%struct.parse_events_error = type { i8*, i32 }

@PARSE_EVENTS__TERM_TYPE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected numeric value\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"expected string value\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_events_term*, %struct.parse_events_error*, i32)* @check_type_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_type_val(%struct.parse_events_term* %0, %struct.parse_events_error* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse_events_term*, align 8
  %6 = alloca %struct.parse_events_error*, align 8
  %7 = alloca i32, align 4
  store %struct.parse_events_term* %0, %struct.parse_events_term** %5, align 8
  store %struct.parse_events_error* %1, %struct.parse_events_error** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.parse_events_term*, %struct.parse_events_term** %5, align 8
  %10 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load %struct.parse_events_error*, %struct.parse_events_error** %6, align 8
  %16 = icmp ne %struct.parse_events_error* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load %struct.parse_events_term*, %struct.parse_events_term** %5, align 8
  %19 = getelementptr inbounds %struct.parse_events_term, %struct.parse_events_term* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.parse_events_error*, %struct.parse_events_error** %6, align 8
  %22 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PARSE_EVENTS__TERM_TYPE_NUM, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = call i8* @strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.parse_events_error*, %struct.parse_events_error** %6, align 8
  %29 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %34

30:                                               ; preds = %17
  %31 = call i8* @strdup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.parse_events_error*, %struct.parse_events_error** %6, align 8
  %33 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
