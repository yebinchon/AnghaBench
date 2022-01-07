; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_set_all_monitor_traces.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_set_all_monitor_traces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_ext_ack = type { i32 }

@trace_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Trace state already set to requested state\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.netlink_ext_ack*)* @set_all_monitor_traces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_all_monitor_traces(i32 %0, %struct.netlink_ext_ack* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.netlink_ext_ack*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.netlink_ext_ack* %1, %struct.netlink_ext_ack** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @trace_state, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %12 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %22 [
    i32 128, label %17
    i32 129, label %20
  ]

17:                                               ; preds = %15
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %5, align 8
  %19 = call i32 @net_dm_trace_on_set(%struct.netlink_ext_ack* %18)
  store i32 %19, i32* %6, align 4
  br label %23

20:                                               ; preds = %15
  %21 = call i32 (...) @net_dm_trace_off_set()
  br label %23

22:                                               ; preds = %15
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %20, %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* @trace_state, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EINPROGRESS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @net_dm_trace_on_set(%struct.netlink_ext_ack*) #1

declare dso_local i32 @net_dm_trace_off_set(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
