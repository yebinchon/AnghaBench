; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c___ptrace_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c___ptrace_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, %struct.cred*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.cred = type { i32 }

@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@JOBCTL_TRAP_MASK = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@SIGNAL_STOP_STOPPED = common dso_local global i32 0, align 4
@JOBCTL_STOP_PENDING = common dso_local global i32 0, align 4
@JOBCTL_STOP_SIGMASK = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@TIF_SYSCALL_EMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ptrace_unlink(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %12 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %13 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %11, i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %19, i32 0, i32 6
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 5
  %24 = load %struct.cred*, %struct.cred** %23, align 8
  store %struct.cred* %24, %struct.cred** %3, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 5
  store %struct.cred* null, %struct.cred** %26, align 8
  %27 = load %struct.cred*, %struct.cred** %3, align 8
  %28 = call i32 @put_cred(%struct.cred* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %37 = load i32, i32* @JOBCTL_TRAP_MASK, align 4
  %38 = call i32 @task_clear_jobctl_pending(%struct.task_struct* %36, i32 %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %40 = call i32 @task_clear_jobctl_trapping(%struct.task_struct* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PF_EXITING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %1
  %48 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SIGNAL_STOP_STOPPED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %47
  %57 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %56, %47
  %64 = load i32, i32* @JOBCTL_STOP_PENDING, align 4
  %65 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @JOBCTL_STOP_SIGMASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @SIGSTOP, align 4
  %77 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %63
  br label %82

82:                                               ; preds = %81, %56, %1
  %83 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @JOBCTL_STOP_PENDING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %82
  %90 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %91 = call i64 @task_is_traced(%struct.task_struct* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %82
  %94 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %95 = call i32 @ptrace_signal_wake_up(%struct.task_struct* %94, i32 1)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @spin_unlock(i32* %100)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @task_clear_jobctl_pending(%struct.task_struct*, i32) #1

declare dso_local i32 @task_clear_jobctl_trapping(%struct.task_struct*) #1

declare dso_local i64 @task_is_traced(%struct.task_struct*) #1

declare dso_local i32 @ptrace_signal_wake_up(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
