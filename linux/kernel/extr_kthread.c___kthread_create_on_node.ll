; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_create_on_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_create_on_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.task_struct = type { i32 }
%struct.kthread_create_info = type { i32 (i8*)*, i32, %struct.task_struct*, i32*, i32, i8* }

@done = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kthread_create_lock = common dso_local global i32 0, align 4
@kthread_create_list = common dso_local global i32 0, align 4
@kthreadd_task = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@__kthread_create_on_node.param = internal constant %struct.sched_param zeroinitializer, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@SCHED_NORMAL = common dso_local global i32 0, align 4
@cpu_all_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @__kthread_create_on_node(i32 (i8*)* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32 (i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.task_struct*, align 8
  %13 = alloca %struct.kthread_create_info*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 (i8*)* %0, i32 (i8*)** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @done, align 4
  %17 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.kthread_create_info* @kmalloc(i32 48, i32 %18)
  store %struct.kthread_create_info* %19, %struct.kthread_create_info** %13, align 8
  %20 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %21 = icmp ne %struct.kthread_create_info* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.task_struct* @ERR_PTR(i32 %24)
  store %struct.task_struct* %25, %struct.task_struct** %6, align 8
  br label %88

26:                                               ; preds = %5
  %27 = load i32 (i8*)*, i32 (i8*)** %7, align 8
  %28 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %29 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %28, i32 0, i32 0
  store i32 (i8*)* %27, i32 (i8*)** %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %32 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %35 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %37 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %36, i32 0, i32 3
  store i32* @done, i32** %37, align 8
  %38 = call i32 @spin_lock(i32* @kthread_create_lock)
  %39 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %40 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %39, i32 0, i32 4
  %41 = call i32 @list_add_tail(i32* %40, i32* @kthread_create_list)
  %42 = call i32 @spin_unlock(i32* @kthread_create_lock)
  %43 = load i32, i32* @kthreadd_task, align 4
  %44 = call i32 @wake_up_process(i32 %43)
  %45 = call i32 @wait_for_completion_killable(i32* @done)
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %26
  %49 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %50 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %49, i32 0, i32 3
  %51 = call i64 @xchg(i32** %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @EINTR, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.task_struct* @ERR_PTR(i32 %55)
  store %struct.task_struct* %56, %struct.task_struct** %6, align 8
  br label %88

57:                                               ; preds = %48
  %58 = call i32 @wait_for_completion(i32* @done)
  br label %59

59:                                               ; preds = %57, %26
  %60 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %61 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %60, i32 0, i32 2
  %62 = load %struct.task_struct*, %struct.task_struct** %61, align 8
  store %struct.task_struct* %62, %struct.task_struct** %12, align 8
  %63 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %64 = call i32 @IS_ERR(%struct.task_struct* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @TASK_COMM_LEN, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @llvm.stacksave()
  store i8* %69, i8** %14, align 8
  %70 = alloca i8, i64 %68, align 16
  store i64 %68, i64* %15, align 8
  %71 = trunc i64 %68 to i32
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @vsnprintf(i8* %70, i32 %71, i8* %72, i32 %73)
  %75 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %76 = call i32 @set_task_comm(%struct.task_struct* %75, i8* %70)
  %77 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %78 = load i32, i32* @SCHED_NORMAL, align 4
  %79 = call i32 @sched_setscheduler_nocheck(%struct.task_struct* %77, i32 %78, %struct.sched_param* @__kthread_create_on_node.param)
  %80 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  %81 = load i32, i32* @cpu_all_mask, align 4
  %82 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %80, i32 %81)
  %83 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %83)
  br label %84

84:                                               ; preds = %66, %59
  %85 = load %struct.kthread_create_info*, %struct.kthread_create_info** %13, align 8
  %86 = call i32 @kfree(%struct.kthread_create_info* %85)
  %87 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  store %struct.task_struct* %87, %struct.task_struct** %6, align 8
  br label %88

88:                                               ; preds = %84, %53, %22
  %89 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  ret %struct.task_struct* %89
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local %struct.kthread_create_info* @kmalloc(i32, i32) #1

declare dso_local %struct.task_struct* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wait_for_completion_killable(i32*) #1

declare dso_local i64 @xchg(i32**, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @set_task_comm(%struct.task_struct*, i8*) #1

declare dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct*, i32, %struct.sched_param*) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @kfree(%struct.kthread_create_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
