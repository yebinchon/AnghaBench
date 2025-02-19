; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_format.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TEP_EVENT_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@TEP_EVENT_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@TEP_EVENT_NEWLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*)* @event_read_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_read_format(%struct.tep_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.tep_event* %0, %struct.tep_event** %3, align 8
  %6 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %7 = call i64 @read_expected_item(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* @TEP_EVENT_OP, align 4
  %12 = call i64 @read_expected(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %54

15:                                               ; preds = %10
  %16 = load i32, i32* @TEP_EVENT_NEWLINE, align 4
  %17 = call i64 @read_expect_type(i32 %16, i8** %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %51

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @free_token(i8* %21)
  %23 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %24 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %25 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = call i32 @event_read_fields(%struct.tep_event* %23, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %35 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %38 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %39 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = call i32 @event_read_fields(%struct.tep_event* %37, i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %49 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %54

51:                                               ; preds = %19
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @free_token(i8* %52)
  store i32 -1, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %46, %44, %30, %14, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @read_expected_item(i32, i8*) #1

declare dso_local i64 @read_expected(i32, i8*) #1

declare dso_local i64 @read_expect_type(i32, i8**) #1

declare dso_local i32 @free_token(i8*) #1

declare dso_local i32 @event_read_fields(%struct.tep_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
