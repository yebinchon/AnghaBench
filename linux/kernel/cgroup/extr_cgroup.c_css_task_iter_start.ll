; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_task_iter_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_task_iter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.css_task_iter = type { i32, i32*, i32*, %struct.TYPE_3__* }

@use_task_css_set_links = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @css_task_iter_start(%struct.cgroup_subsys_state* %0, i32 %1, %struct.css_task_iter* %2) #0 {
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.css_task_iter*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.css_task_iter* %2, %struct.css_task_iter** %6, align 8
  %7 = load i32, i32* @use_task_css_set_links, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %13 = call i32 @memset(%struct.css_task_iter* %12, i32 0, i32 32)
  %14 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %15 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %16 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %19 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %18, i32 0, i32 3
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %22 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %24 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %3
  %28 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %34 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %32, i64 %37
  %39 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %40 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  br label %48

41:                                               ; preds = %3
  %42 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %43 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %47 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  br label %48

48:                                               ; preds = %41, %27
  %49 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %50 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %53 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.css_task_iter*, %struct.css_task_iter** %6, align 8
  %55 = call i32 @css_task_iter_advance(%struct.css_task_iter* %54)
  %56 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(%struct.css_task_iter*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @css_task_iter_advance(%struct.css_task_iter*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
