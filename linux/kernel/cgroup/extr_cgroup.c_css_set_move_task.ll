; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_set_move_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_css_set_move_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.css_set = type { i32, i32 }

@css_set_lock = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.css_set*, %struct.css_set*, i32)* @css_set_move_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_set_move_task(%struct.task_struct* %0, %struct.css_set* %1, %struct.css_set* %2, i32 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.css_set*, align 8
  %7 = alloca %struct.css_set*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.css_set* %1, %struct.css_set** %6, align 8
  store %struct.css_set* %2, %struct.css_set** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  %10 = load %struct.css_set*, %struct.css_set** %7, align 8
  %11 = icmp ne %struct.css_set* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.css_set*, %struct.css_set** %7, align 8
  %14 = call i32 @css_set_populated(%struct.css_set* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load %struct.css_set*, %struct.css_set** %7, align 8
  %18 = call i32 @css_set_update_populated(%struct.css_set* %17, i32 1)
  br label %19

19:                                               ; preds = %16, %12, %4
  %20 = load %struct.css_set*, %struct.css_set** %6, align 8
  %21 = icmp ne %struct.css_set* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = call i32 @list_empty(i32* %24)
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.css_set*, %struct.css_set** %6, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = call i32 @css_set_skip_task_iters(%struct.css_set* %27, %struct.task_struct* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.css_set*, %struct.css_set** %6, align 8
  %34 = call i32 @css_set_populated(%struct.css_set* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load %struct.css_set*, %struct.css_set** %6, align 8
  %38 = call i32 @css_set_update_populated(%struct.css_set* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %22
  br label %48

40:                                               ; preds = %19
  %41 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 1
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @WARN_ON_ONCE(i32 %46)
  br label %48

48:                                               ; preds = %40, %39
  %49 = load %struct.css_set*, %struct.css_set** %7, align 8
  %50 = icmp ne %struct.css_set* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PF_EXITING, align 4
  %56 = and i32 %54, %55
  %57 = call i32 @WARN_ON_ONCE(i32 %56)
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = load %struct.css_set*, %struct.css_set** %7, align 8
  %60 = call i32 @cgroup_move_task(%struct.task_struct* %58, %struct.css_set* %59)
  %61 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 1
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load %struct.css_set*, %struct.css_set** %7, align 8
  %67 = getelementptr inbounds %struct.css_set, %struct.css_set* %66, i32 0, i32 1
  br label %71

68:                                               ; preds = %51
  %69 = load %struct.css_set*, %struct.css_set** %7, align 8
  %70 = getelementptr inbounds %struct.css_set, %struct.css_set* %69, i32 0, i32 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i32* [ %67, %65 ], [ %70, %68 ]
  %73 = call i32 @list_add_tail(i32* %62, i32* %72)
  br label %74

74:                                               ; preds = %71, %48
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @css_set_populated(%struct.css_set*) #1

declare dso_local i32 @css_set_update_populated(%struct.css_set*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @css_set_skip_task_iters(%struct.css_set*, %struct.task_struct*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @cgroup_move_task(%struct.task_struct*, %struct.css_set*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
