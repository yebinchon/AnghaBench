; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_var_defs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_var_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_data = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i8**, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8**, i8**, i32 }
%struct.TYPE_4__ = type { %struct.trace_array* }
%struct.trace_array = type { i32 }

@TRACING_MAP_VARS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@HIST_ERR_MALFORMED_ASSIGNMENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_ERR_TOO_MANY_VARS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_trigger_data*)* @parse_var_defs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_var_defs(%struct.hist_trigger_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hist_trigger_data*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %3, align 8
  %13 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %14 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %133, %1
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %21 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %19, %24
  br i1 %25, label %26, label %136

26:                                               ; preds = %18
  %27 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %28 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %129, %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @TRACING_MAP_VARS_MAX, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %132

40:                                               ; preds = %36
  %41 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %132

45:                                               ; preds = %40
  %46 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %54 = load i32, i32* @HIST_ERR_MALFORMED_ASSIGNMENT, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @errpos(i8* %55)
  %57 = call i32 @hist_err(%struct.trace_array* %53, i32 %54, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %138

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @TRACING_MAP_VARS_MAX, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %66 = load i32, i32* @HIST_ERR_TOO_MANY_VARS, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @errpos(i8* %67)
  %69 = call i32 @hist_err(%struct.trace_array* %65, i32 %66, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %12, align 4
  br label %138

72:                                               ; preds = %60
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @kstrdup(i8* %73, i32 %74)
  store i8* %75, i8** %5, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %138

81:                                               ; preds = %72
  %82 = load i8*, i8** %5, align 8
  %83 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %84 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  store i8* %82, i8** %91, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kstrdup(i8* %92, i32 %93)
  store i8* %94, i8** %5, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %111, label %97

97:                                               ; preds = %81
  %98 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %99 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %12, align 4
  br label %138

111:                                              ; preds = %81
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %114 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = zext i32 %119 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  store i8* %112, i8** %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %125 = getelementptr inbounds %struct.hist_trigger_data, %struct.hist_trigger_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 %123, i32* %128, align 8
  br label %129

129:                                              ; preds = %111
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %36

132:                                              ; preds = %44, %36
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %18

136:                                              ; preds = %18
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %97, %78, %64, %52
  %139 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %3, align 8
  %140 = call i32 @free_var_defs(%struct.hist_trigger_data* %139)
  %141 = load i32, i32* %12, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %136
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @hist_err(%struct.trace_array*, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_var_defs(%struct.hist_trigger_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
