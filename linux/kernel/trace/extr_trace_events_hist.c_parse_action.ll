; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_action.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_parse_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_trigger_attrs = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@HIST_ACTIONS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"onmatch(\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"onmax(\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"onchange(\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.hist_trigger_attrs*)* @parse_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_action(i8* %0, %struct.hist_trigger_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hist_trigger_attrs*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.hist_trigger_attrs* %1, %struct.hist_trigger_attrs** %5, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %5, align 8
  %10 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HIST_ACTIONS_MAX, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @str_has_prefix(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @str_has_prefix(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @str_has_prefix(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %24, %20, %16
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kstrdup(i8* %29, i32 %30)
  %32 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %5, align 8
  %33 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %5, align 8
  %36 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %38, align 4
  %39 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %5, align 8
  %40 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %5, align 8
  %43 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %28
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %28
  %53 = load %struct.hist_trigger_attrs*, %struct.hist_trigger_attrs** %5, align 8
  %54 = getelementptr inbounds %struct.hist_trigger_attrs, %struct.hist_trigger_attrs* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %24
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %48, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @str_has_prefix(i8*, i8*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
