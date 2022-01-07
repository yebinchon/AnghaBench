; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_resume.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PTRACE_SYSCALL = common dso_local global i64 0, align 8
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@__TASK_TRACED = common dso_local global i32 0, align 4
@PTRACE_SYSEMU = common dso_local global i64 0, align 8
@PTRACE_SYSEMU_SINGLESTEP = common dso_local global i64 0, align 8
@TIF_SYSCALL_EMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @ptrace_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_resume(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @valid_signal(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %104

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @PTRACE_SYSCALL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %21 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %22 = call i32 @set_tsk_thread_flag(%struct.task_struct* %20, i32 %21)
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %26 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @is_singleblock(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = call i32 (...) @arch_has_block_step()
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %104

41:                                               ; preds = %31
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = call i32 @user_enable_block_step(%struct.task_struct* %42)
  br label %69

44:                                               ; preds = %27
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @is_singlestep(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @is_sysemu_singlestep(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %48, %44
  %53 = call i32 (...) @arch_has_single_step()
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %104

62:                                               ; preds = %52
  %63 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %64 = call i32 @user_enable_single_step(%struct.task_struct* %63)
  br label %68

65:                                               ; preds = %48
  %66 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %67 = call i32 @user_disable_single_step(%struct.task_struct* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %41
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @current, align 4
  %74 = call i32 @thread_group_empty(i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi i1 [ false, %69 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @spin_lock_irq(i32* %86)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %93 = load i32, i32* @__TASK_TRACED, align 4
  %94 = call i32 @wake_up_state(%struct.task_struct* %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %99 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_irq(i32* %101)
  br label %103

103:                                              ; preds = %97, %88
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %59, %38, %12
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @valid_signal(i64) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @is_singleblock(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arch_has_block_step(...) #1

declare dso_local i32 @user_enable_block_step(%struct.task_struct*) #1

declare dso_local i64 @is_singlestep(i64) #1

declare dso_local i64 @is_sysemu_singlestep(i64) #1

declare dso_local i32 @arch_has_single_step(...) #1

declare dso_local i32 @user_enable_single_step(%struct.task_struct*) #1

declare dso_local i32 @user_disable_single_step(%struct.task_struct*) #1

declare dso_local i32 @thread_group_empty(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @wake_up_state(%struct.task_struct*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
