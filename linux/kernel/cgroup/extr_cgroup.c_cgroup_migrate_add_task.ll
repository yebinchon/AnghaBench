; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_migrate_add_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_migrate_add_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.cgroup_mgctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.css_set = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@css_set_lock = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.cgroup_mgctx*)* @cgroup_migrate_add_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_migrate_add_task(%struct.task_struct* %0, %struct.cgroup_mgctx* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cgroup_mgctx*, align 8
  %5 = alloca %struct.css_set*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.cgroup_mgctx* %1, %struct.cgroup_mgctx** %4, align 8
  %6 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PF_EXITING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %66

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 1
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %66

20:                                               ; preds = %14
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call %struct.css_set* @task_css_set(%struct.task_struct* %21)
  store %struct.css_set* %22, %struct.css_set** %5, align 8
  %23 = load %struct.css_set*, %struct.css_set** %5, align 8
  %24 = getelementptr inbounds %struct.css_set, %struct.css_set* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %66

28:                                               ; preds = %20
  %29 = load %struct.cgroup_mgctx*, %struct.cgroup_mgctx** %4, align 8
  %30 = getelementptr inbounds %struct.cgroup_mgctx, %struct.cgroup_mgctx* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 1
  %36 = load %struct.css_set*, %struct.css_set** %5, align 8
  %37 = getelementptr inbounds %struct.css_set, %struct.css_set* %36, i32 0, i32 2
  %38 = call i32 @list_move_tail(i32* %35, i32* %37)
  %39 = load %struct.css_set*, %struct.css_set** %5, align 8
  %40 = getelementptr inbounds %struct.css_set, %struct.css_set* %39, i32 0, i32 1
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %28
  %44 = load %struct.css_set*, %struct.css_set** %5, align 8
  %45 = getelementptr inbounds %struct.css_set, %struct.css_set* %44, i32 0, i32 1
  %46 = load %struct.cgroup_mgctx*, %struct.cgroup_mgctx** %4, align 8
  %47 = getelementptr inbounds %struct.cgroup_mgctx, %struct.cgroup_mgctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i32 @list_add_tail(i32* %45, i32* %48)
  br label %50

50:                                               ; preds = %43, %28
  %51 = load %struct.css_set*, %struct.css_set** %5, align 8
  %52 = getelementptr inbounds %struct.css_set, %struct.css_set* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i64 @list_empty(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.css_set*, %struct.css_set** %5, align 8
  %59 = getelementptr inbounds %struct.css_set, %struct.css_set* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.cgroup_mgctx*, %struct.cgroup_mgctx** %4, align 8
  %63 = getelementptr inbounds %struct.cgroup_mgctx, %struct.cgroup_mgctx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %61, i32* %64)
  br label %66

66:                                               ; preds = %13, %19, %27, %57, %50
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.css_set* @task_css_set(%struct.task_struct*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
