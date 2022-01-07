; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smpboot.c_smpboot_unpark_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smpboot.c_smpboot_unpark_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_hotplug_thread = type { i32, i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_hotplug_thread*, i32)* @smpboot_unpark_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smpboot_unpark_thread(%struct.smp_hotplug_thread* %0, i32 %1) #0 {
  %3 = alloca %struct.smp_hotplug_thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.smp_hotplug_thread* %0, %struct.smp_hotplug_thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %3, align 8
  %7 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.task_struct** @per_cpu_ptr(i32 %8, i32 %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  store %struct.task_struct* %11, %struct.task_struct** %5, align 8
  %12 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %3, align 8
  %13 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %18 = call i32 @kthread_unpark(%struct.task_struct* %17)
  br label %19

19:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.task_struct** @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @kthread_unpark(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
