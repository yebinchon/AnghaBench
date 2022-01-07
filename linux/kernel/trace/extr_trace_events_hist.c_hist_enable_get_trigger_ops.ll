; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_enable_get_trigger_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_enable_get_trigger_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_trigger_ops = type { i32 }

@ENABLE_HIST_STR = common dso_local global i32 0, align 4
@hist_enable_count_trigger_ops = common dso_local global %struct.event_trigger_ops zeroinitializer, align 4
@hist_enable_trigger_ops = common dso_local global %struct.event_trigger_ops zeroinitializer, align 4
@hist_disable_count_trigger_ops = common dso_local global %struct.event_trigger_ops zeroinitializer, align 4
@hist_disable_trigger_ops = common dso_local global %struct.event_trigger_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_trigger_ops* (i8*, i8*)* @hist_enable_get_trigger_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_trigger_ops* @hist_enable_get_trigger_ops(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_trigger_ops*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @ENABLE_HIST_STR, align 4
  %9 = call i64 @strcmp(i8* %7, i32 %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, %struct.event_trigger_ops* @hist_enable_count_trigger_ops, %struct.event_trigger_ops* @hist_enable_trigger_ops
  store %struct.event_trigger_ops* %18, %struct.event_trigger_ops** %5, align 8
  br label %24

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, %struct.event_trigger_ops* @hist_disable_count_trigger_ops, %struct.event_trigger_ops* @hist_disable_trigger_ops
  store %struct.event_trigger_ops* %23, %struct.event_trigger_ops** %5, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.event_trigger_ops*, %struct.event_trigger_ops** %5, align 8
  ret %struct.event_trigger_ops* %25
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
