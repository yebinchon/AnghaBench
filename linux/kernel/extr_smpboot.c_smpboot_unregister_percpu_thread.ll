; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smpboot.c_smpboot_unregister_percpu_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smpboot.c_smpboot_unregister_percpu_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_hotplug_thread = type { i32 }

@smpboot_threads_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smpboot_unregister_percpu_thread(%struct.smp_hotplug_thread* %0) #0 {
  %2 = alloca %struct.smp_hotplug_thread*, align 8
  store %struct.smp_hotplug_thread* %0, %struct.smp_hotplug_thread** %2, align 8
  %3 = call i32 (...) @get_online_cpus()
  %4 = call i32 @mutex_lock(i32* @smpboot_threads_lock)
  %5 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %2, align 8
  %6 = getelementptr inbounds %struct.smp_hotplug_thread, %struct.smp_hotplug_thread* %5, i32 0, i32 0
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.smp_hotplug_thread*, %struct.smp_hotplug_thread** %2, align 8
  %9 = call i32 @smpboot_destroy_threads(%struct.smp_hotplug_thread* %8)
  %10 = call i32 @mutex_unlock(i32* @smpboot_threads_lock)
  %11 = call i32 (...) @put_online_cpus()
  ret void
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @smpboot_destroy_threads(%struct.smp_hotplug_thread*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
