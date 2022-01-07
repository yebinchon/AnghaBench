; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_num_to_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_parse-filter.c_num_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_event_filter = type { i32 }
%struct.tep_filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tep_event_filter*, %struct.tep_filter_arg*)* @num_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @num_to_str(%struct.tep_event_filter* %0, %struct.tep_filter_arg* %1) #0 {
  %3 = alloca %struct.tep_event_filter*, align 8
  %4 = alloca %struct.tep_filter_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tep_event_filter* %0, %struct.tep_event_filter** %3, align 8
  store %struct.tep_filter_arg* %1, %struct.tep_filter_arg** %4, align 8
  store i8* null, i8** %7, align 8
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
  br label %64

27:                                               ; preds = %23
  %28 = load %struct.tep_filter_arg*, %struct.tep_filter_arg** %4, align 8
  %29 = getelementptr inbounds %struct.tep_filter_arg, %struct.tep_filter_arg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %62 [
    i32 133, label %32
    i32 128, label %33
    i32 131, label %38
    i32 129, label %43
    i32 132, label %48
    i32 130, label %53
  ]

32:                                               ; preds = %27
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %33

33:                                               ; preds = %27, %32
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %27, %37
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %27, %42
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %27, %47
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %27, %52
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %58, i8* %59, i8* %60)
  br label %63

62:                                               ; preds = %27
  br label %63

63:                                               ; preds = %62, %57
  br label %64

64:                                               ; preds = %63, %26
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %7, align 8
  ret i8* %69
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
