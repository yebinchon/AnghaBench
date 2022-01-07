; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_parse_probe_arg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_parse_probe_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32, %struct.probe_arg*, i32 }
%struct.probe_arg = type { i32 }

@MAX_ARG_NAME_LEN = common dso_local global i32 0, align 4
@ARG_NAME_TOO_LONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NO_ARG_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"arg%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BAD_ARG_NAME = common dso_local global i32 0, align 4
@USED_ARG_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traceprobe_parse_probe_arg(%struct.trace_probe* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_probe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.probe_arg*, align 8
  %11 = alloca i8*, align 8
  store %struct.trace_probe* %0, %struct.trace_probe** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %13 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %12, i32 0, i32 1
  %14 = load %struct.probe_arg*, %struct.probe_arg** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %14, i64 %16
  store %struct.probe_arg* %17, %struct.probe_arg** %10, align 8
  %18 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %19 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 61)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %64

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = load i32, i32* @MAX_ARG_NAME_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp sgt i64 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @ARG_NAME_TOO_LONG, align 4
  %37 = call i32 @trace_probe_log_err(i32 0, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %119

40:                                               ; preds = %26
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @NO_ARG_NAME, align 4
  %46 = call i32 @trace_probe_log_err(i32 0, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %119

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @kmemdup_nul(i8* %51, i32 %57, i32 %58)
  %60 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %61 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  br label %72

64:                                               ; preds = %4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @kasprintf(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %70 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i8*, i8** %8, align 8
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %64, %50
  %73 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %74 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %119

80:                                               ; preds = %72
  %81 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %82 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @is_good_name(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @BAD_ARG_NAME, align 4
  %88 = call i32 @trace_probe_log_err(i32 0, i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %119

91:                                               ; preds = %80
  %92 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %93 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %96 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %95, i32 0, i32 1
  %97 = load %struct.probe_arg*, %struct.probe_arg** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @traceprobe_conflict_field_name(i32 %94, %struct.probe_arg* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load i32, i32* @USED_ARG_NAME, align 4
  %103 = call i32 @trace_probe_log_err(i32 0, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %119

106:                                              ; preds = %91
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.trace_probe*, %struct.trace_probe** %6, align 8
  %109 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %108, i32 0, i32 0
  %110 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @traceprobe_parse_probe_arg_body(i8* %107, i32* %109, %struct.probe_arg* %110, i32 %111, i32 %117)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %106, %101, %86, %77, %44, %35
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @trace_probe_log_err(i32, i32) #1

declare dso_local i32 @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @is_good_name(i32) #1

declare dso_local i64 @traceprobe_conflict_field_name(i32, %struct.probe_arg*, i32) #1

declare dso_local i32 @traceprobe_parse_probe_arg_body(i8*, i32*, %struct.probe_arg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
