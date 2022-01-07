; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_switch.c_probe_sched_switch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_sched_switch.c_probe_sched_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@RECORD_TGID = common dso_local global i32 0, align 4
@sched_tgid_ref = common dso_local global i32 0, align 4
@RECORD_CMDLINE = common dso_local global i32 0, align 4
@sched_cmdline_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.task_struct*, %struct.task_struct*)* @probe_sched_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe_sched_switch(i8* %0, i32 %1, %struct.task_struct* %2, %struct.task_struct* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %10 = load i32, i32* @RECORD_TGID, align 4
  %11 = load i32, i32* @sched_tgid_ref, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = mul nsw i32 %10, %15
  %17 = load i32, i32* @RECORD_CMDLINE, align 4
  %18 = load i32, i32* @sched_cmdline_ref, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = mul nsw i32 %17, %22
  %24 = add nsw i32 %16, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %33

28:                                               ; preds = %4
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @tracing_record_taskinfo_sched_switch(%struct.task_struct* %29, %struct.task_struct* %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @tracing_record_taskinfo_sched_switch(%struct.task_struct*, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
