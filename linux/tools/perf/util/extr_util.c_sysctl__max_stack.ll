; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_sysctl__max_stack.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_util.c_sysctl__max_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"kernel/perf_event_max_stack\00", align 1
@sysctl_perf_event_max_stack = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"kernel/perf_event_max_contexts_per_stack\00", align 1
@sysctl_perf_event_max_contexts_per_stack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl__max_stack() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @sysctl__read_int(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* @sysctl_perf_event_max_stack, align 4
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i64 @sysctl__read_int(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  store i32 %10, i32* @sysctl_perf_event_max_contexts_per_stack, align 4
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, i32* @sysctl_perf_event_max_stack, align 4
  ret i32 %12
}

declare dso_local i64 @sysctl__read_int(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
