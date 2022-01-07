; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_exp_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_exp_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"[ERROR IN EXPRESSION TYPE]\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tep_event_filter*, %struct.tep_filter_arg*)* @exp_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @exp_to_str(%struct.tep_event_filter* %0, %struct.tep_filter_arg* %1) #0 {
  %3 = alloca %struct.tep_event_filter*, align 8
  %4 = alloca %struct.tep_filter_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %3, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %4, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.tep_event_filter*, %struct.tep_event_filter** %3, align 8
  %10 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %11 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @arg_to_str(%struct.tep_event_filter* %9, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.tep_event_filter*, %struct.tep_event_filter** %3, align 8
  %16 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %17 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @arg_to_str(%struct.tep_event_filter* %15, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %2
  br label %48

27:                                               ; preds = %23
  %28 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %29 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 137, label %32
    i32 129, label %33
    i32 132, label %34
    i32 135, label %35
    i32 133, label %36
    i32 130, label %37
    i32 134, label %38
    i32 136, label %39
    i32 131, label %40
    i32 128, label %41
  ]

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %43

33:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %43

34:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %43

35:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %43

36:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %43

37:                                               ; preds = %27
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %43

38:                                               ; preds = %27
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %43

39:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %43

40:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %43

41:                                               ; preds = %27
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %43

42:                                               ; preds = %27
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %7, align 8
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %26
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %8, align 8
  ret i8* %53
}

declare dso_local i8* @arg_to_str(%struct.tep_event_filter*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
