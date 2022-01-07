; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_print.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_event_read_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@TEP_EVENT_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@TEP_EVENT_OP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@TEP_EVENT_DQUOTE = common dso_local global i32 0, align 4
@TEP_EVENT_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@TEP_EVENT_DELIM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tep_event*)* @event_read_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_read_print(%struct.tep_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tep_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.tep_event* %0, %struct.tep_event** %3, align 8
  %8 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %9 = call i64 @read_expected_item(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %89

12:                                               ; preds = %1
  %13 = load i32, i32* @TEP_EVENT_ITEM, align 4
  %14 = call i64 @read_expected(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %89

17:                                               ; preds = %12
  %18 = load i32, i32* @TEP_EVENT_OP, align 4
  %19 = call i64 @read_expected(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %89

22:                                               ; preds = %17
  %23 = load i32, i32* @TEP_EVENT_DQUOTE, align 4
  %24 = call i64 @read_expect_type(i32 %23, i8** %5)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %86

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %31 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %34 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = call i32 @read_token_item(i8** %5)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TEP_EVENT_NONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %89

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TEP_EVENT_DQUOTE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %47 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @asprintf(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %86

54:                                               ; preds = %45
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @free_token(i8* %55)
  %57 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %58 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @free_token(i8* %60)
  %62 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %63 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* null, i8** %64, align 8
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %5, align 8
  br label %28

66:                                               ; preds = %41
  %67 = load i32, i32* %4, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @TEP_EVENT_DELIM, align 4
  %70 = call i64 @test_type_token(i32 %67, i8* %68, i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %86

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @free_token(i8* %74)
  %76 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %77 = load %struct.tep_event*, %struct.tep_event** %3, align 8
  %78 = getelementptr inbounds %struct.tep_event, %struct.tep_event* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = call i32 @event_read_print_args(%struct.tep_event* %76, i32** %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 -1, i32* %2, align 4
  br label %89

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %89

86:                                               ; preds = %72, %53, %26
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @free_token(i8* %87)
  store i32 -1, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %84, %83, %40, %21, %16, %11
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @read_expected_item(i32, i8*) #1

declare dso_local i64 @read_expected(i32, i8*) #1

declare dso_local i64 @read_expect_type(i32, i8**) #1

declare dso_local i32 @read_token_item(i8**) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free_token(i8*) #1

declare dso_local i64 @test_type_token(i32, i8*, i32, i8*) #1

declare dso_local i32 @event_read_print_args(%struct.tep_event*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
