; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_atom.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32 }
%struct.hist_trigger_data = type { i32 }
%struct.trace_event_file = type { i32 }
%struct.ftrace_event_field = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64*, i8*)* @parse_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @parse_atom(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1, i8* %2, i64* %3, i8* %4) #0 {
  %6 = alloca %struct.hist_field*, align 8
  %7 = alloca %struct.hist_trigger_data*, align 8
  %8 = alloca %struct.trace_event_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ftrace_event_field*, align 8
  %17 = alloca %struct.hist_field*, align 8
  %18 = alloca i32, align 4
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %7, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %15, align 8
  store %struct.ftrace_event_field* null, %struct.ftrace_event_field** %16, align 8
  store %struct.hist_field* null, %struct.hist_field** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 46)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %5
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %12, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 46)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %18, align 4
  br label %108

37:                                               ; preds = %30
  %38 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %18, align 4
  br label %108

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  store i8* %45, i8** %15, align 8
  br label %46

46:                                               ; preds = %44, %24
  br label %47

47:                                               ; preds = %46, %5
  %48 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i8* @local_field_var_ref(%struct.hist_trigger_data* %48, i8* %49, i8* %50, i8* %51)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %80, label %55

55:                                               ; preds = %47
  %56 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = call %struct.hist_field* @parse_var_ref(%struct.hist_trigger_data* %56, i8* %57, i8* %58, i8* %59)
  store %struct.hist_field* %60, %struct.hist_field** %17, align 8
  %61 = load %struct.hist_field*, %struct.hist_field** %17, align 8
  %62 = icmp ne %struct.hist_field* %61, null
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load i8*, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %68 = load %struct.hist_field*, %struct.hist_field** %17, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call %struct.hist_field* @create_alias(%struct.hist_trigger_data* %67, %struct.hist_field* %68, i8* %69)
  store %struct.hist_field* %70, %struct.hist_field** %17, align 8
  %71 = load %struct.hist_field*, %struct.hist_field** %17, align 8
  %72 = icmp ne %struct.hist_field* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %18, align 4
  br label %108

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %63
  %78 = load %struct.hist_field*, %struct.hist_field** %17, align 8
  store %struct.hist_field* %78, %struct.hist_field** %6, align 8
  br label %111

79:                                               ; preds = %55
  br label %82

80:                                               ; preds = %47
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %80, %79
  %83 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %84 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = call %struct.ftrace_event_field* @parse_field(%struct.hist_trigger_data* %83, %struct.trace_event_file* %84, i8* %85, i64* %86)
  store %struct.ftrace_event_field* %87, %struct.ftrace_event_field** %16, align 8
  %88 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %89 = call i64 @IS_ERR(%struct.ftrace_event_field* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %93 = call i32 @PTR_ERR(%struct.ftrace_event_field* %92)
  store i32 %93, i32* %18, align 4
  br label %108

94:                                               ; preds = %82
  %95 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %7, align 8
  %96 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %95, %struct.ftrace_event_field* %96, i64 %98, i8* %99)
  store %struct.hist_field* %100, %struct.hist_field** %17, align 8
  %101 = load %struct.hist_field*, %struct.hist_field** %17, align 8
  %102 = icmp ne %struct.hist_field* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %18, align 4
  br label %108

106:                                              ; preds = %94
  %107 = load %struct.hist_field*, %struct.hist_field** %17, align 8
  store %struct.hist_field* %107, %struct.hist_field** %6, align 8
  br label %111

108:                                              ; preds = %103, %91, %73, %41, %34
  %109 = load i32, i32* %18, align 4
  %110 = call %struct.hist_field* @ERR_PTR(i32 %109)
  store %struct.hist_field* %110, %struct.hist_field** %6, align 8
  br label %111

111:                                              ; preds = %108, %106, %77
  %112 = load %struct.hist_field*, %struct.hist_field** %6, align 8
  ret %struct.hist_field* %112
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @local_field_var_ref(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @parse_var_ref(%struct.hist_trigger_data*, i8*, i8*, i8*) #1

declare dso_local %struct.hist_field* @create_alias(%struct.hist_trigger_data*, %struct.hist_field*, i8*) #1

declare dso_local %struct.ftrace_event_field* @parse_field(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.ftrace_event_field*) #1

declare dso_local i32 @PTR_ERR(%struct.ftrace_event_field*) #1

declare dso_local %struct.hist_field* @create_hist_field(%struct.hist_trigger_data*, %struct.ftrace_event_field*, i64, i8*) #1

declare dso_local %struct.hist_field* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
