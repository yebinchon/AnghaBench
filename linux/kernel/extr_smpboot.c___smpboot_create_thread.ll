; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smpboot.c___smpboot_create_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smpboot.c___smpboot_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_hotplug_thread = type { i32 (i32)*, i32, i32 }
%struct.task_struct = type { i32 }
%struct.smpboot_thread_data = type { i32, %struct.smp_hotplug_thread* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smpboot_thread_fn = common dso_local global i32 0, align 4
@TASK_PARKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_hotplug_thread*, i32)* @__smpboot_create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smpboot_create_thread(%struct.smp_hotplug_thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smp_hotplug_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.smpboot_thread_data*, align 8
  store %struct.smp_hotplug_thread* %0, %struct.smp_hotplug_thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %4, align 8
  %9 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.task_struct** @per_cpu_ptr(i32 %10, i32 %11)
  %13 = load %struct.task_struct*, %struct.task_struct** %12, align 8
  store %struct.task_struct* %13, %struct.task_struct** %6, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cpu_to_node(i32 %19)
  %21 = call %struct.smpboot_thread_data* @kzalloc_node(i32 16, i32 %18, i32 %20)
  store %struct.smpboot_thread_data* %21, %struct.smpboot_thread_data** %7, align 8
  %22 = load %struct.smpboot_thread_data*, %struct.smpboot_thread_data** %7, align 8
  %23 = icmp ne %struct.smpboot_thread_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.smpboot_thread_data*, %struct.smpboot_thread_data** %7, align 8
  %30 = getelementptr inbounds %struct.smpboot_thread_data, %struct.smpboot_thread_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %4, align 8
  %32 = load %struct.smpboot_thread_data*, %struct.smpboot_thread_data** %7, align 8
  %33 = getelementptr inbounds %struct.smpboot_thread_data, %struct.smpboot_thread_data* %32, i32 0, i32 1
  store %struct.smp_hotplug_thread* %31, %struct.smp_hotplug_thread** %33, align 8
  %34 = load i32, i32* @smpboot_thread_fn, align 4
  %35 = load %struct.smpboot_thread_data*, %struct.smpboot_thread_data** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %4, align 8
  %38 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.task_struct* @kthread_create_on_cpu(i32 %34, %struct.smpboot_thread_data* %35, i32 %36, i32 %39)
  store %struct.task_struct* %40, %struct.task_struct** %6, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = call i64 @IS_ERR(%struct.task_struct* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %27
  %45 = load %struct.smpboot_thread_data*, %struct.smpboot_thread_data** %7, align 8
  %46 = call i32 @kfree(%struct.smpboot_thread_data* %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %48 = call i32 @PTR_ERR(%struct.task_struct* %47)
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %27
  %50 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %51 = call i32 @kthread_park(%struct.task_struct* %50)
  %52 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %53 = call i32 @get_task_struct(%struct.task_struct* %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %55 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %4, align 8
  %56 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call %struct.task_struct** @per_cpu_ptr(i32 %57, i32 %58)
  store %struct.task_struct* %54, %struct.task_struct** %59, align 8
  %60 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %4, align 8
  %61 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %60, i32 0, i32 0
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = icmp ne i32 (i32)* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %49
  %65 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %66 = load i32, i32* @TASK_PARKED, align 4
  %67 = call i32 @wait_task_inactive(%struct.task_struct* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 @WARN_ON(i32 1)
  br label %77

71:                                               ; preds = %64
  %72 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %4, align 8
  %73 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %72, i32 0, i32 0
  %74 = load i32 (i32)*, i32 (i32)** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 %74(i32 %75)
  br label %77

77:                                               ; preds = %71, %69
  br label %78

78:                                               ; preds = %77, %49
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %44, %24, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.task_struct** @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.smpboot_thread_data* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.task_struct* @kthread_create_on_cpu(i32, %struct.smpboot_thread_data*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.smpboot_thread_data*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @kthread_park(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @wait_task_inactive(%struct.task_struct*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
