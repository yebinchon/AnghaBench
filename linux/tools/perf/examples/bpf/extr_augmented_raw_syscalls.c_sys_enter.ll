; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/examples/bpf/extr_augmented_raw_syscalls.c_sys_enter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/examples/bpf/extr_augmented_raw_syscalls.c_sys_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall_enter_args = type { i32 }
%struct.augmented_args_payload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.syscall = type { i32 }

@pids_filtered = common dso_local global i32 0, align 4
@syscalls_sys_enter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_enter(%struct.syscall_enter_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.syscall_enter_args*, align 8
  %4 = alloca %struct.augmented_args_payload*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.syscall*, align 8
  store %struct.syscall_enter_args* %0, %struct.syscall_enter_args** %3, align 8
  store i32 4, i32* %5, align 4
  %7 = call i32 (...) @getpid()
  %8 = call i64 @pid_filter__has(i32* @pids_filtered, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = call %struct.augmented_args_payload* (...) @augmented_args_payload()
  store %struct.augmented_args_payload* %12, %struct.augmented_args_payload** %4, align 8
  %13 = load %struct.augmented_args_payload*, %struct.augmented_args_payload** %4, align 8
  %14 = icmp eq %struct.augmented_args_payload* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %27

16:                                               ; preds = %11
  %17 = load %struct.augmented_args_payload*, %struct.augmented_args_payload** %4, align 8
  %18 = getelementptr inbounds %struct.augmented_args_payload, %struct.augmented_args_payload* %17, i32 0, i32 0
  %19 = load %struct.syscall_enter_args*, %struct.syscall_enter_args** %3, align 8
  %20 = call i32 @probe_read(%struct.TYPE_2__* %18, i32 4, %struct.syscall_enter_args* %19)
  %21 = load %struct.syscall_enter_args*, %struct.syscall_enter_args** %3, align 8
  %22 = load %struct.augmented_args_payload*, %struct.augmented_args_payload** %4, align 8
  %23 = getelementptr inbounds %struct.augmented_args_payload, %struct.augmented_args_payload* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bpf_tail_call(%struct.syscall_enter_args* %21, i32* @syscalls_sys_enter, i32 %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %16, %15, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @pid_filter__has(i32*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local %struct.augmented_args_payload* @augmented_args_payload(...) #1

declare dso_local i32 @probe_read(%struct.TYPE_2__*, i32, %struct.syscall_enter_args*) #1

declare dso_local i32 @bpf_tail_call(%struct.syscall_enter_args*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
