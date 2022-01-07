; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_unary.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_unary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_field = type { i32, i32, i32, i32, %struct.hist_field**, i32 }
%struct.hist_trigger_data = type { i32 }
%struct.trace_event_file = type { i32 }

@HIST_ERR_TOO_MANY_SUBEXPR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HIST_FIELD_FL_EXPR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HIST_FIELD_FL_TIMESTAMP = common dso_local global i32 0, align 4
@HIST_FIELD_FL_TIMESTAMP_USECS = common dso_local global i32 0, align 4
@hist_field_unary_minus = common dso_local global i32 0, align 4
@FIELD_OP_UNARY_MINUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hist_field* (%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64, i8*, i32)* @parse_unary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hist_field* @parse_unary(%struct.hist_trigger_data* %0, %struct.trace_event_file* %1, i8* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.hist_field*, align 8
  %8 = alloca %struct.hist_trigger_data*, align 8
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hist_field*, align 8
  %15 = alloca %struct.hist_field*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.hist_trigger_data* %0, %struct.hist_trigger_data** %8, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.hist_field* null, %struct.hist_field** %15, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %31

21:                                               ; preds = %6
  %22 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %23 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HIST_ERR_TOO_MANY_SUBEXPR, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @errpos(i8* %26)
  %28 = call i32 @hist_err(i32 %24, i32 %25, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %17, align 4
  br label %124

31:                                               ; preds = %6
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 40)
  store i8* %35, i8** %18, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %17, align 4
  br label %124

44:                                               ; preds = %38
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @strrchr(i8* %45, i8 signext 41)
  store i8* %46, i8** %18, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %18, align 8
  store i8 0, i8* %50, align 1
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %17, align 4
  br label %124

54:                                               ; preds = %49
  %55 = load i64, i64* @HIST_FIELD_FL_EXPR, align 8
  %56 = load i64, i64* %11, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %11, align 8
  %58 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call %struct.hist_field* @create_hist_field(%struct.hist_trigger_data* %58, i32* null, i64 %59, i8* %60)
  store %struct.hist_field* %61, %struct.hist_field** %15, align 8
  %62 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %63 = icmp ne %struct.hist_field* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %17, align 4
  br label %124

67:                                               ; preds = %54
  store i64 0, i64* %16, align 8
  %68 = load %struct.hist_trigger_data*, %struct.hist_trigger_data** %8, align 8
  %69 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = call %struct.hist_field* @parse_expr(%struct.hist_trigger_data* %68, %struct.trace_event_file* %69, i8* %70, i64 %71, i32* null, i32 %73)
  store %struct.hist_field* %74, %struct.hist_field** %14, align 8
  %75 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %76 = call i64 @IS_ERR(%struct.hist_field* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %80 = call i32 @PTR_ERR(%struct.hist_field* %79)
  store i32 %80, i32* %17, align 4
  br label %124

81:                                               ; preds = %67
  %82 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %83 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @HIST_FIELD_FL_TIMESTAMP, align 4
  %86 = load i32, i32* @HIST_FIELD_FL_TIMESTAMP_USECS, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %90 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @hist_field_unary_minus, align 4
  %94 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %95 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %97 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %98 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %97, i32 0, i32 4
  %99 = load %struct.hist_field**, %struct.hist_field*** %98, align 8
  %100 = getelementptr inbounds %struct.hist_field*, %struct.hist_field** %99, i64 0
  store %struct.hist_field* %96, %struct.hist_field** %100, align 8
  %101 = load i32, i32* @FIELD_OP_UNARY_MINUS, align 4
  %102 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %103 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %105 = call i32 @expr_str(%struct.hist_field* %104, i32 0)
  %106 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %107 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load %struct.hist_field*, %struct.hist_field** %14, align 8
  %109 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32 @kstrdup(i32 %110, i32 %111)
  %113 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %114 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %116 = getelementptr inbounds %struct.hist_field, %struct.hist_field* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %81
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %17, align 4
  br label %124

122:                                              ; preds = %81
  %123 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  store %struct.hist_field* %123, %struct.hist_field** %7, align 8
  br label %129

124:                                              ; preds = %119, %78, %64, %51, %41, %21
  %125 = load %struct.hist_field*, %struct.hist_field** %15, align 8
  %126 = call i32 @destroy_hist_field(%struct.hist_field* %125, i32 0)
  %127 = load i32, i32* %17, align 4
  %128 = call %struct.hist_field* @ERR_PTR(i32 %127)
  store %struct.hist_field* %128, %struct.hist_field** %7, align 8
  br label %129

129:                                              ; preds = %124, %122
  %130 = load %struct.hist_field*, %struct.hist_field** %7, align 8
  ret %struct.hist_field* %130
}

declare dso_local i32 @hist_err(i32, i32, i32) #1

declare dso_local i32 @errpos(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local %struct.hist_field* @create_hist_field(%struct.hist_trigger_data*, i32*, i64, i8*) #1

declare dso_local %struct.hist_field* @parse_expr(%struct.hist_trigger_data*, %struct.trace_event_file*, i8*, i64, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hist_field*) #1

declare dso_local i32 @PTR_ERR(%struct.hist_field*) #1

declare dso_local i32 @expr_str(%struct.hist_field*, i32) #1

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @destroy_hist_field(%struct.hist_field*, i32) #1

declare dso_local %struct.hist_field* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
