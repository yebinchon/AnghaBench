; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_path_ns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_path_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cgroup_namespace = type { i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_path_ns(%struct.cgroup* %0, i8* %1, i64 %2, %struct.cgroup_namespace* %3) #0 {
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cgroup_namespace*, align 8
  %9 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.cgroup_namespace* %3, %struct.cgroup_namespace** %8, align 8
  %10 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %11 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %12 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %16 = call i32 @cgroup_path_ns_locked(%struct.cgroup* %12, i8* %13, i64 %14, %struct.cgroup_namespace* %15)
  store i32 %16, i32* %9, align 4
  %17 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %18 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %19 = load i32, i32* %9, align 4
  ret i32 %19
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cgroup_path_ns_locked(%struct.cgroup*, i8*, i64, %struct.cgroup_namespace*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
