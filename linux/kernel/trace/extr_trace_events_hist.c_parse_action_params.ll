; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_action_params.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_action_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.action_data = type { i64, i8*, i8**, i64 }

@SYNTH_FIELDS_MAX = common dso_local global i64 0, align 8
@HIST_ERR_TOO_MANY_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@HIST_ERR_PARAM_NOT_FOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_ERR_INVALID_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*, i8*, %struct.action_data*)* @parse_action_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_action_params(%struct.trace_array* %0, i8* %1, %struct.action_data* %2) #0 {
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.action_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.action_data* %2, %struct.action_data** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %69, %65, %3
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %79

14:                                               ; preds = %11
  %15 = load %struct.action_data*, %struct.action_data** %6, align 8
  %16 = getelementptr inbounds %struct.action_data, %struct.action_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SYNTH_FIELDS_MAX, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %22 = load i32, i32* @HIST_ERR_TOO_MANY_PARAMS, align 4
  %23 = call i32 @hist_err(%struct.trace_array* %21, i32 %22, i32 0)
  br label %80

24:                                               ; preds = %14
  %25 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %30 = load i32, i32* @HIST_ERR_PARAM_NOT_FOUND, align 4
  %31 = call i32 @hist_err(%struct.trace_array* %29, i32 %30, i32 0)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %80

34:                                               ; preds = %24
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @strstrip(i8* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %42 = load i32, i32* @HIST_ERR_INVALID_PARAM, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @errpos(i8* %43)
  %45 = call i32 @hist_err(%struct.trace_array* %41, i32 %42, i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %80

48:                                               ; preds = %34
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kstrdup(i8* %49, i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %80

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.action_data*, %struct.action_data** %6, align 8
  %62 = getelementptr inbounds %struct.action_data, %struct.action_data* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.action_data*, %struct.action_data** %6, align 8
  %68 = getelementptr inbounds %struct.action_data, %struct.action_data* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %9, align 4
  br label %11

69:                                               ; preds = %60, %57
  store i32 0, i32* %9, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load %struct.action_data*, %struct.action_data** %6, align 8
  %72 = getelementptr inbounds %struct.action_data, %struct.action_data* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load %struct.action_data*, %struct.action_data** %6, align 8
  %75 = getelementptr inbounds %struct.action_data, %struct.action_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds i8*, i8** %73, i64 %76
  store i8* %70, i8** %78, align 8
  br label %11

79:                                               ; preds = %11
  br label %80

80:                                               ; preds = %79, %54, %40, %28, %20
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
