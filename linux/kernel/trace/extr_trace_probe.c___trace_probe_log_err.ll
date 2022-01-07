; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c___trace_probe_log_err.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c___trace_probe_log_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@trace_probe_log = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@trace_probe_err_text = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__trace_probe_log_err(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 3), align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %95

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 1), align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 3), align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kzalloc(i32 %38, i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %95

44:                                               ; preds = %37
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 1), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 0), align 8
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %79, %50
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 0), align 8
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 3), align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strlen(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 3), align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strcpy(i8* %63, i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 32, i8* %73, align 1
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i8*, i8** %6, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %56
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %52

82:                                               ; preds = %52
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 -1
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @trace_probe_log, i32 0, i32 2), align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* @trace_probe_err_text, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @tracing_log_err(i32* null, i32 %85, i8* %86, i32 %87, i32 %88, i32 %91)
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @kfree(i8* %93)
  br label %95

95:                                               ; preds = %82, %43, %12
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @tracing_log_err(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
