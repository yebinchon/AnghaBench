; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_perf_callchain_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_callchain.c_perf_callchain_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"call-graph.\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"record-mode\00", align 1
@callchain_param = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"dump-size\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"print-type\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid callchain mode: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid callchain order: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"sort-key\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Invalid callchain sort key: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Invalid callchain threshold: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"print-limit\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Invalid callchain print limit: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_callchain_config(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strstarts(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 11
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @parse_callchain_record_opt(i8* %23, %struct.TYPE_3__* @callchain_param)
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  store i64 0, i64* %7, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @get_stack_size(i8* %30, i64* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %7, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @callchain_param, i32 0, i32 0), align 8
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %105

34:                                               ; preds = %25
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @parse_callchain_mode(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %105

48:                                               ; preds = %34
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @parse_callchain_order(i8* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %105

62:                                               ; preds = %48
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @parse_callchain_sort_key(i8* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %105

76:                                               ; preds = %62
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = call i8* @strtod(i8* %81, i8** %6)
  store i8* %82, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @callchain_param, i32 0, i32 2), align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %87)
  store i32 -1, i32* %3, align 4
  br label %105

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** %5, align 8
  %96 = call i8* @strtod(i8* %95, i8** %6)
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @callchain_param, i32 0, i32 1), align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %101)
  store i32 -1, i32* %3, align 4
  br label %105

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %90
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %100, %86, %74, %60, %46, %29, %22, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @strstarts(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_callchain_record_opt(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @get_stack_size(i8*, i64*) #1

declare dso_local i32 @parse_callchain_mode(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @parse_callchain_order(i8*) #1

declare dso_local i32 @parse_callchain_sort_key(i8*) #1

declare dso_local i8* @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
