; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_setup_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_setup_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32, i32, i32 }
%struct.task_struct = type { i32 }
%struct.sched_param = type { i32 }

@MAX_USER_RT_PRIO = common dso_local global i32 0, align 4
@irq_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"irq/%d-%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"irq/%d-s-%s\00", align 1
@SCHED_FIFO = common dso_local global i32 0, align 4
@IRQTF_AFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irqaction*, i32, i32)* @setup_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_irq_thread(%struct.irqaction* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irqaction*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.sched_param, align 4
  store %struct.irqaction* %0, %struct.irqaction** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %9, i32 0, i32 0
  %11 = load i32, i32* @MAX_USER_RT_PRIO, align 4
  %12 = sdiv i32 %11, 2
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @irq_thread, align 4
  %17 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %20 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.task_struct* @kthread_create(i32 %16, %struct.irqaction* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  store %struct.task_struct* %22, %struct.task_struct** %8, align 8
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* @irq_thread, align 4
  %25 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %28 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.task_struct* @kthread_create(i32 %24, %struct.irqaction* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  store %struct.task_struct* %30, %struct.task_struct** %8, align 8
  %31 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %23, %15
  %35 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %36 = call i64 @IS_ERR(%struct.task_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = call i32 @PTR_ERR(%struct.task_struct* %39)
  store i32 %40, i32* %4, align 4
  br label %53

41:                                               ; preds = %34
  %42 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %43 = load i32, i32* @SCHED_FIFO, align 4
  %44 = call i32 @sched_setscheduler_nocheck(%struct.task_struct* %42, i32 %43, %struct.sched_param* %9)
  %45 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %46 = call i32 @get_task_struct(%struct.task_struct* %45)
  %47 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %48 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @IRQTF_AFFINITY, align 4
  %50 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %51 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %41, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.task_struct* @kthread_create(i32, %struct.irqaction*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @sched_setscheduler_nocheck(%struct.task_struct*, i32, %struct.sched_param*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
