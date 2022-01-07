; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_actions.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { i32, %struct.action_data**, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.action_data = type { i32 }
%struct.TYPE_4__ = type { i32, i8** }
%struct.TYPE_3__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"onmatch(\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"onmax(\00", align 1
@HANDLER_ONMAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"onchange(\00", align 1
@HANDLER_ONCHANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*)* @parse_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_actions(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca %struct.hist_trigger_data*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.action_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %2, align 8
  %12 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %13 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.trace_array*, %struct.trace_array** %15, align 8
  store %struct.trace_array* %16, %struct.trace_array** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %109, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %20 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %112

25:                                               ; preds = %17
  %26 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %27 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @str_has_prefix(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %25
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8* %42, i8** %9, align 8
  %43 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call %struct.action_data* @onmatch_parse(%struct.trace_array* %43, i8* %44)
  store %struct.action_data* %45, %struct.action_data** %4, align 8
  %46 = load %struct.action_data*, %struct.action_data** %4, align 8
  %47 = call i64 @IS_ERR(%struct.action_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.action_data*, %struct.action_data** %4, align 8
  %51 = call i32 @PTR_ERR(%struct.action_data* %50)
  store i32 %51, i32* %6, align 4
  br label %112

52:                                               ; preds = %38
  br label %98

53:                                               ; preds = %25
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @str_has_prefix(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8* %61, i8** %10, align 8
  %62 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* @HANDLER_ONMAX, align 4
  %65 = call %struct.action_data* @track_data_parse(%struct.hist_trigger_data* %62, i8* %63, i32 %64)
  store %struct.action_data* %65, %struct.action_data** %4, align 8
  %66 = load %struct.action_data*, %struct.action_data** %4, align 8
  %67 = call i64 @IS_ERR(%struct.action_data* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load %struct.action_data*, %struct.action_data** %4, align 8
  %71 = call i32 @PTR_ERR(%struct.action_data* %70)
  store i32 %71, i32* %6, align 4
  br label %112

72:                                               ; preds = %57
  br label %97

73:                                               ; preds = %53
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @str_has_prefix(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %75, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %11, align 8
  %82 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* @HANDLER_ONCHANGE, align 4
  %85 = call %struct.action_data* @track_data_parse(%struct.hist_trigger_data* %82, i8* %83, i32 %84)
  store %struct.action_data* %85, %struct.action_data** %4, align 8
  %86 = load %struct.action_data*, %struct.action_data** %4, align 8
  %87 = call i64 @IS_ERR(%struct.action_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.action_data*, %struct.action_data** %4, align 8
  %91 = call i32 @PTR_ERR(%struct.action_data* %90)
  store i32 %91, i32* %6, align 4
  br label %112

92:                                               ; preds = %77
  br label %96

93:                                               ; preds = %73
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %112

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %52
  %99 = load %struct.action_data*, %struct.action_data** %4, align 8
  %100 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %101 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %100, i32 0, i32 1
  %102 = load %struct.action_data**, %struct.action_data*** %101, align 8
  %103 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %2, align 8
  %104 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds %struct.action_data*, %struct.action_data** %102, i64 %107
  store %struct.action_data* %99, %struct.action_data** %108, align 8
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %5, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %17

112:                                              ; preds = %93, %89, %69, %49, %17
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @str_has_prefix(i8*, i8*) #1

declare dso_local %struct.action_data* @onmatch_parse(%struct.trace_array*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.action_data*) #1

declare dso_local i32 @PTR_ERR(%struct.action_data*) #1

declare dso_local %struct.action_data* @track_data_parse(%struct.hist_trigger_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
