; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_onmatch_parse.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_onmatch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.action_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.trace_array = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@HIST_ERR_NO_CLOSING_PAREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@HIST_ERR_SUBSYS_NOT_FOUND = common dso_local global i32 0, align 4
@HIST_ERR_INVALID_SUBSYS_EVENT = common dso_local global i32 0, align 4
@HANDLER_ONMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.action_data* (%struct.trace_array*, i8*)* @onmatch_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.action_data* @onmatch_parse(%struct.trace_array* %0, i8* %1) #0 {
  %3 = alloca %struct.action_data*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.action_data*, align 8
  %9 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.action_data* @kzalloc(i32 16, i32 %12)
  store %struct.action_data* %13, %struct.action_data** %8, align 8
  %14 = load %struct.action_data*, %struct.action_data** %8, align 8
  %15 = icmp ne %struct.action_data* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.action_data* @ERR_PTR(i32 %18)
  store %struct.action_data* %19, %struct.action_data** %3, align 8
  br label %103

20:                                               ; preds = %2
  %21 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %29 = load i32, i32* @HIST_ERR_NO_CLOSING_PAREN, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @errpos(i8* %30)
  %32 = call i32 @hist_err(%struct.trace_array* %28, i32 %29, i32 %31)
  br label %98

33:                                               ; preds = %24
  %34 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %39 = load i32, i32* @HIST_ERR_SUBSYS_NOT_FOUND, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @errpos(i8* %40)
  %42 = call i32 @hist_err(%struct.trace_array* %38, i32 %39, i32 %41)
  br label %98

43:                                               ; preds = %33
  %44 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @event_file(%struct.trace_array* %44, i8* %45, i8* %46)
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %52 = load i32, i32* @HIST_ERR_INVALID_SUBSYS_EVENT, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @errpos(i8* %53)
  %55 = call i32 @hist_err(%struct.trace_array* %51, i32 %52, i32 %54)
  br label %98

56:                                               ; preds = %43
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @kstrdup(i8* %57, i32 %58)
  %60 = load %struct.action_data*, %struct.action_data** %8, align 8
  %61 = getelementptr inbounds %struct.action_data, %struct.action_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.action_data*, %struct.action_data** %8, align 8
  %64 = getelementptr inbounds %struct.action_data, %struct.action_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %56
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %98

71:                                               ; preds = %56
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kstrdup(i8* %72, i32 %73)
  %75 = load %struct.action_data*, %struct.action_data** %8, align 8
  %76 = getelementptr inbounds %struct.action_data, %struct.action_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  %78 = load %struct.action_data*, %struct.action_data** %8, align 8
  %79 = getelementptr inbounds %struct.action_data, %struct.action_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %98

86:                                               ; preds = %71
  %87 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.action_data*, %struct.action_data** %8, align 8
  %90 = load i32, i32* @HANDLER_ONMATCH, align 4
  %91 = call i32 @action_parse(%struct.trace_array* %87, i8* %88, %struct.action_data* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %98

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %98, %95
  %97 = load %struct.action_data*, %struct.action_data** %8, align 8
  store %struct.action_data* %97, %struct.action_data** %3, align 8
  br label %103

98:                                               ; preds = %94, %83, %68, %50, %37, %27
  %99 = load %struct.action_data*, %struct.action_data** %8, align 8
  %100 = call i32 @onmatch_destroy(%struct.action_data* %99)
  %101 = load i32, i32* %9, align 4
  %102 = call %struct.action_data* @ERR_PTR(i32 %101)
  store %struct.action_data* %102, %struct.action_data** %8, align 8
  br label %96

103:                                              ; preds = %96, %16
  %104 = load %struct.action_data*, %struct.action_data** %3, align 8
  ret %struct.action_data* %104
}

declare dso_local %struct.action_data* @kzalloc(i32, i32) #1

declare dso_local %struct.action_data* @ERR_PTR(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @event_file(%struct.trace_array*, i8*, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @action_parse(%struct.trace_array*, i8*, %struct.action_data*, i32) #1

declare dso_local i32 @onmatch_destroy(%struct.action_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
