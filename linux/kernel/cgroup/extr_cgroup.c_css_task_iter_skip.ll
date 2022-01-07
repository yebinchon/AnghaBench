; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_task_iter_skip.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_task_iter_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.css_task_iter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }
%struct.task_struct = type { %struct.TYPE_2__ }

@css_set_lock = common dso_local global i32 0, align 4
@CSS_TASK_ITER_SKIPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.css_task_iter*, %struct.task_struct*)* @css_task_iter_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_task_iter_skip(%struct.css_task_iter* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.css_task_iter*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.css_task_iter* %0, %struct.css_task_iter** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  %6 = load %struct.css_task_iter*, %struct.css_task_iter** %3, align 8
  %7 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = icmp eq %struct.TYPE_2__* %8, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.css_task_iter*, %struct.css_task_iter** %3, align 8
  %14 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.css_task_iter*, %struct.css_task_iter** %3, align 8
  %19 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %18, i32 0, i32 1
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load i32, i32* @CSS_TASK_ITER_SKIPPED, align 4
  %21 = load %struct.css_task_iter*, %struct.css_task_iter** %3, align 8
  %22 = getelementptr inbounds %struct.css_task_iter, %struct.css_task_iter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
