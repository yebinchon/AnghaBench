; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_create_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_create_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@KTHREAD_IS_PER_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @kthread_create_on_cpu(i32 (i8*)* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.task_struct*, align 8
  store i32 (i8*)* %0, i32 (i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @cpu_to_node(i32 %13)
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.task_struct* @kthread_create_on_node(i32 (i8*)* %11, i8* %12, i32 %14, i8* %15, i32 %16)
  store %struct.task_struct* %17, %struct.task_struct** %10, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %19 = call i64 @IS_ERR(%struct.task_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  store %struct.task_struct* %22, %struct.task_struct** %5, align 8
  br label %37

23:                                               ; preds = %4
  %24 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @kthread_bind(%struct.task_struct* %24, i32 %25)
  %27 = load i32, i32* @KTHREAD_IS_PER_CPU, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %29 = call %struct.TYPE_2__* @to_kthread(%struct.task_struct* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @set_bit(i32 %27, i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %34 = call %struct.TYPE_2__* @to_kthread(%struct.task_struct* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  store %struct.task_struct* %36, %struct.task_struct** %5, align 8
  br label %37

37:                                               ; preds = %23, %21
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  ret %struct.task_struct* %38
}

declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kthread_bind(%struct.task_struct*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @to_kthread(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
