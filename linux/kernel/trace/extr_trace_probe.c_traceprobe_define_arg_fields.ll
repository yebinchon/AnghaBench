; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_define_arg_fields.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_traceprobe_define_arg_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_probe = type { i32, %struct.probe_arg* }
%struct.probe_arg = type { i8*, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32 }

@FILTER_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @traceprobe_define_arg_fields(%struct.trace_event_call* %0, i64 %1, %struct.trace_probe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_event_call*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trace_probe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.probe_arg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.trace_event_call* %0, %struct.trace_event_call** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.trace_probe* %2, %struct.trace_probe** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %79, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.trace_probe*, %struct.trace_probe** %7, align 8
  %16 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %13
  %20 = load %struct.trace_probe*, %struct.trace_probe** %7, align 8
  %21 = getelementptr inbounds %struct.trace_probe, %struct.trace_probe* %20, i32 0, i32 1
  %22 = load %struct.probe_arg*, %struct.probe_arg** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %22, i64 %24
  store %struct.probe_arg* %25, %struct.probe_arg** %10, align 8
  %26 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %27 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %32 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %37 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %19
  %41 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %42 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %40, %19
  %45 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %46 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %51 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %59 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %63 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.probe_arg*, %struct.probe_arg** %10, align 8
  %68 = getelementptr inbounds %struct.probe_arg, %struct.probe_arg* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FILTER_OTHER, align 4
  %73 = call i32 @trace_define_field(%struct.trace_event_call* %56, i8* %57, i32 %60, i64 %65, i32 %66, i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %55
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %83

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %13

82:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @trace_define_field(%struct.trace_event_call*, i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
