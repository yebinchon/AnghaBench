; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_hist_trigger_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_hist_trigger_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_attrs = type { i32, i32, i32, i64, i32 }
%struct.trace_array = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cont\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_trigger_attrs* (%struct.trace_array*, i8*)* @parse_hist_trigger_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_trigger_attrs* @parse_hist_trigger_attrs(%struct.trace_array* %0, i8* %1) #0 {
  %3 = alloca %struct.hist_trigger_attrs*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hist_trigger_attrs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hist_trigger_attrs* @kzalloc(i32 32, i32 %9)
  store %struct.hist_trigger_attrs* %10, %struct.hist_trigger_attrs** %6, align 8
  %11 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %12 = icmp ne %struct.hist_trigger_attrs* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.hist_trigger_attrs* @ERR_PTR(i32 %15)
  store %struct.hist_trigger_attrs* %16, %struct.hist_trigger_attrs** %3, align 8
  br label %105

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %72

21:                                               ; preds = %18
  %22 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strchr(i8* %23, i8 signext 61)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %30 = call i32 @parse_assignment(%struct.trace_array* %27, i8* %28, %struct.hist_trigger_attrs* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %100

34:                                               ; preds = %26
  br label %71

35:                                               ; preds = %21
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %41 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %70

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %52 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %69

53:                                               ; preds = %46
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %59 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  br label %68

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %63 = call i32 @parse_action(i8* %61, %struct.hist_trigger_attrs* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %100

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %50
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70, %34
  br label %18

72:                                               ; preds = %18
  %73 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %74 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %100

80:                                               ; preds = %72
  %81 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %82 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i64 @kstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %89 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %91 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %100

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %80
  %99 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  store %struct.hist_trigger_attrs* %99, %struct.hist_trigger_attrs** %3, align 8
  br label %105

100:                                              ; preds = %94, %77, %66, %33
  %101 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %6, align 8
  %102 = call i32 @destroy_hist_trigger_attrs(%struct.hist_trigger_attrs* %101)
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.hist_trigger_attrs* @ERR_PTR(i32 %103)
  store %struct.hist_trigger_attrs* %104, %struct.hist_trigger_attrs** %3, align 8
  br label %105

105:                                              ; preds = %100, %98, %13
  %106 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %3, align 8
  ret %struct.hist_trigger_attrs* %106
}

declare dso_local %struct.hist_trigger_attrs* @kzalloc(i32, i32) #1

declare dso_local %struct.hist_trigger_attrs* @ERR_PTR(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_assignment(%struct.trace_array*, i8*, %struct.hist_trigger_attrs*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @parse_action(i8*, %struct.hist_trigger_attrs*) #1

declare dso_local i64 @kstrdup(i8*, i32) #1

declare dso_local i32 @destroy_hist_trigger_attrs(%struct.hist_trigger_attrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
