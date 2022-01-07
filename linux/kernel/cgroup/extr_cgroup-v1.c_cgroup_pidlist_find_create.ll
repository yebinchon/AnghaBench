; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup_pidlist_find_create.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup_pidlist_find_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_pidlist = type { i32, %struct.cgroup*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cgroup = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@cgroup_pidlist_destroy_work_fn = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_pidlist* (%struct.cgroup*, i32)* @cgroup_pidlist_find_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_pidlist* @cgroup_pidlist_find_create(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup_pidlist*, align 8
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup_pidlist*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %8 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %7, i32 0, i32 1
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.cgroup_pidlist* @cgroup_pidlist_find(%struct.cgroup* %10, i32 %11)
  store %struct.cgroup_pidlist* %12, %struct.cgroup_pidlist** %6, align 8
  %13 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %14 = icmp ne %struct.cgroup_pidlist* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  store %struct.cgroup_pidlist* %16, %struct.cgroup_pidlist** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.cgroup_pidlist* @kzalloc(i32 32, i32 %18)
  store %struct.cgroup_pidlist* %19, %struct.cgroup_pidlist** %6, align 8
  %20 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %21 = icmp ne %struct.cgroup_pidlist* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  store %struct.cgroup_pidlist* %23, %struct.cgroup_pidlist** %3, align 8
  br label %48

24:                                               ; preds = %17
  %25 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %26 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %25, i32 0, i32 3
  %27 = load i32, i32* @cgroup_pidlist_destroy_work_fn, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %31 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @current, align 4
  %34 = call i32 @task_active_pid_ns(i32 %33)
  %35 = call i32 @get_pid_ns(i32 %34)
  %36 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %37 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %40 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %41 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %40, i32 0, i32 1
  store %struct.cgroup* %39, %struct.cgroup** %41, align 8
  %42 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  %43 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %42, i32 0, i32 0
  %44 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %45 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %44, i32 0, i32 0
  %46 = call i32 @list_add(i32* %43, i32* %45)
  %47 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %6, align 8
  store %struct.cgroup_pidlist* %47, %struct.cgroup_pidlist** %3, align 8
  br label %48

48:                                               ; preds = %24, %22, %15
  %49 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %3, align 8
  ret %struct.cgroup_pidlist* %49
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.cgroup_pidlist* @cgroup_pidlist_find(%struct.cgroup*, i32) #1

declare dso_local %struct.cgroup_pidlist* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @get_pid_ns(i32) #1

declare dso_local i32 @task_active_pid_ns(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
