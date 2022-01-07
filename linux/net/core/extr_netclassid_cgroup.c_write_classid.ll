; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netclassid_cgroup.c_write_classid.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netclassid_cgroup.c_write_classid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cftype = type { i32 }
%struct.cgroup_cls_state = type { i64 }
%struct.css_task_iter = type { i32 }
%struct.task_struct = type { i32 }

@update_classid_sock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i64)* @write_classid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_classid(%struct.cgroup_subsys_state* %0, %struct.cftype* %1, i64 %2) #0 {
  %4 = alloca %struct.cgroup_subsys_state*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cgroup_cls_state*, align 8
  %8 = alloca %struct.css_task_iter, align 4
  %9 = alloca %struct.task_struct*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %11 = call %struct.cgroup_cls_state* @css_cls_state(%struct.cgroup_subsys_state* %10)
  store %struct.cgroup_cls_state* %11, %struct.cgroup_cls_state** %7, align 8
  %12 = call i32 (...) @cgroup_sk_alloc_disable()
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.cgroup_cls_state*, %struct.cgroup_cls_state** %7, align 8
  %15 = getelementptr inbounds %struct.cgroup_cls_state, %struct.cgroup_cls_state* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %4, align 8
  %17 = call i32 @css_task_iter_start(%struct.cgroup_subsys_state* %16, i32 0, %struct.css_task_iter* %8)
  br label %18

18:                                               ; preds = %21, %3
  %19 = call %struct.task_struct* @css_task_iter_next(%struct.css_task_iter* %8)
  store %struct.task_struct* %19, %struct.task_struct** %9, align 8
  %20 = icmp ne %struct.task_struct* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %23 = call i32 @task_lock(%struct.task_struct* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @update_classid_sock, align 4
  %28 = load %struct.cgroup_cls_state*, %struct.cgroup_cls_state** %7, align 8
  %29 = getelementptr inbounds %struct.cgroup_cls_state, %struct.cgroup_cls_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @iterate_fd(i32 %26, i32 0, i32 %27, i8* %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %34 = call i32 @task_unlock(%struct.task_struct* %33)
  %35 = call i32 (...) @cond_resched()
  br label %18

36:                                               ; preds = %18
  %37 = call i32 @css_task_iter_end(%struct.css_task_iter* %8)
  ret i32 0
}

declare dso_local %struct.cgroup_cls_state* @css_cls_state(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @cgroup_sk_alloc_disable(...) #1

declare dso_local i32 @css_task_iter_start(%struct.cgroup_subsys_state*, i32, %struct.css_task_iter*) #1

declare dso_local %struct.task_struct* @css_task_iter_next(%struct.css_task_iter*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @iterate_fd(i32, i32, i32, i8*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @css_task_iter_end(%struct.css_task_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
