; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c__do_fork.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c__do_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_clone_args = type { i32, i64, i32 }
%struct.completion = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { %struct.completion* }

@CLONE_UNTRACED = common dso_local global i32 0, align 4
@CLONE_VFORK = common dso_local global i32 0, align 4
@PTRACE_EVENT_VFORK = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i64 0, align 8
@PTRACE_EVENT_CLONE = common dso_local global i32 0, align 4
@PTRACE_EVENT_FORK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@CLONE_PARENT_SETTID = common dso_local global i32 0, align 4
@PTRACE_EVENT_VFORK_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_do_fork(%struct.kernel_clone_args* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kernel_clone_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.completion, align 4
  %6 = alloca %struct.pid*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kernel_clone_args* %0, %struct.kernel_clone_args** %3, align 8
  %10 = load %struct.kernel_clone_args*, %struct.kernel_clone_args** %3, align 8
  %11 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CLONE_UNTRACED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %46, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CLONE_VFORK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @PTRACE_EVENT_VFORK, align 4
  store i32 %23, i32* %8, align 4
  br label %35

24:                                               ; preds = %17
  %25 = load %struct.kernel_clone_args*, %struct.kernel_clone_args** %3, align 8
  %26 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SIGCHLD, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @PTRACE_EVENT_CLONE, align 4
  store i32 %31, i32* %8, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @PTRACE_EVENT_FORK, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* @current, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ptrace_event_enabled(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @NUMA_NO_NODE, align 4
  %49 = load %struct.kernel_clone_args*, %struct.kernel_clone_args** %3, align 8
  %50 = call %struct.task_struct* @copy_process(i32* null, i32 %47, i32 %48, %struct.kernel_clone_args* %49)
  store %struct.task_struct* %50, %struct.task_struct** %7, align 8
  %51 = call i32 (...) @add_latent_entropy()
  %52 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %53 = call i64 @IS_ERR(%struct.task_struct* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %57 = call i64 @PTR_ERR(%struct.task_struct* %56)
  store i64 %57, i64* %2, align 8
  br label %116

58:                                               ; preds = %46
  %59 = load i32, i32* @current, align 4
  %60 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %61 = call i32 @trace_sched_process_fork(i32 %59, %struct.task_struct* %60)
  %62 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %63 = load i32, i32* @PIDTYPE_PID, align 4
  %64 = call %struct.pid* @get_task_pid(%struct.task_struct* %62, i32 %63)
  store %struct.pid* %64, %struct.pid** %6, align 8
  %65 = load %struct.pid*, %struct.pid** %6, align 8
  %66 = call i64 @pid_vnr(%struct.pid* %65)
  store i64 %66, i64* %9, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @CLONE_PARENT_SETTID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %58
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.kernel_clone_args*, %struct.kernel_clone_args** %3, align 8
  %74 = getelementptr inbounds %struct.kernel_clone_args, %struct.kernel_clone_args* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @put_user(i64 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %58
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @CLONE_VFORK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 0
  store %struct.completion* %5, %struct.completion** %84, align 8
  %85 = call i32 @init_completion(%struct.completion* %5)
  %86 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %87 = call i32 @get_task_struct(%struct.task_struct* %86)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %90 = call i32 @wake_up_new_task(%struct.task_struct* %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.pid*, %struct.pid** %6, align 8
  %97 = call i32 @ptrace_event_pid(i32 %95, %struct.pid* %96)
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @CLONE_VFORK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %105 = call i32 @wait_for_vfork_done(%struct.task_struct* %104, %struct.completion* %5)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @PTRACE_EVENT_VFORK_DONE, align 4
  %109 = load %struct.pid*, %struct.pid** %6, align 8
  %110 = call i32 @ptrace_event_pid(i32 %108, %struct.pid* %109)
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %98
  %113 = load %struct.pid*, %struct.pid** %6, align 8
  %114 = call i32 @put_pid(%struct.pid* %113)
  %115 = load i64, i64* %9, align 8
  store i64 %115, i64* %2, align 8
  br label %116

116:                                              ; preds = %112, %55
  %117 = load i64, i64* %2, align 8
  ret i64 %117
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ptrace_event_enabled(i32, i32) #1

declare dso_local %struct.task_struct* @copy_process(i32*, i32, i32, %struct.kernel_clone_args*) #1

declare dso_local i32 @add_latent_entropy(...) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i64 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @trace_sched_process_fork(i32, %struct.task_struct*) #1

declare dso_local %struct.pid* @get_task_pid(%struct.task_struct*, i32) #1

declare dso_local i64 @pid_vnr(%struct.pid*) #1

declare dso_local i32 @put_user(i64, i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @wake_up_new_task(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ptrace_event_pid(i32, %struct.pid*) #1

declare dso_local i32 @wait_for_vfork_done(%struct.task_struct*, %struct.completion*) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
