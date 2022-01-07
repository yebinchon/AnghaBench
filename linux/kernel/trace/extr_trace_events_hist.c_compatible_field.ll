; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_compatible_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_compatible_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_field = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_event_field*, %struct.ftrace_event_field*)* @compatible_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compatible_field(%struct.ftrace_event_field* %0, %struct.ftrace_event_field* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ftrace_event_field*, align 8
  %5 = alloca %struct.ftrace_event_field*, align 8
  store %struct.ftrace_event_field* %0, %struct.ftrace_event_field** %4, align 8
  store %struct.ftrace_event_field* %1, %struct.ftrace_event_field** %5, align 8
  %6 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %4, align 8
  %7 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  %8 = icmp eq %struct.ftrace_event_field* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %56

10:                                               ; preds = %2
  %11 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %4, align 8
  %12 = icmp eq %struct.ftrace_event_field* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  %15 = icmp eq %struct.ftrace_event_field* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4
  br label %56

17:                                               ; preds = %13
  %18 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %4, align 8
  %19 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  %22 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @strcmp(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %56

27:                                               ; preds = %17
  %28 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %4, align 8
  %29 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  %32 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %56

37:                                               ; preds = %27
  %38 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %4, align 8
  %39 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  %42 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %4, align 8
  %48 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %5, align 8
  %51 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %56

55:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %54, %45, %36, %26, %16, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
