; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_thread_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_thread_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32 }
%struct.callback_head = type { i32 }
%struct.irq_desc = type { i32 }
%struct.irqaction = type { i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"exiting task \22%s\22 (%d) is an active IRQ thread (irq %d)\0A\00", align 1
@IRQTF_RUNTHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callback_head*)* @irq_thread_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_thread_dtor(%struct.callback_head* %0) #0 {
  %2 = alloca %struct.callback_head*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca %struct.irqaction*, align 8
  store %struct.callback_head* %0, %struct.callback_head** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %6, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PF_EXITING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call %struct.irqaction* @kthread_data(%struct.task_struct* %19)
  store %struct.irqaction* %20, %struct.irqaction** %5, align 8
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %28 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %32 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.irq_desc* @irq_to_desc(i32 %33)
  store %struct.irq_desc* %34, %struct.irq_desc** %4, align 8
  %35 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %36 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %37 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %36, i32 0, i32 0
  %38 = call i64 @test_and_clear_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %18
  %41 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %42 = call i32 @wake_threads_waitq(%struct.irq_desc* %41)
  br label %43

43:                                               ; preds = %40, %18
  %44 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %45 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %46 = call i32 @irq_finalize_oneshot(%struct.irq_desc* %44, %struct.irqaction* %45)
  br label %47

47:                                               ; preds = %43, %17
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.irqaction* @kthread_data(%struct.task_struct*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_threads_waitq(%struct.irq_desc*) #1

declare dso_local i32 @irq_finalize_oneshot(%struct.irq_desc*, %struct.irqaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
