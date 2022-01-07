; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_unfreeze_cgroup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_unfreeze_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freezer = type { i32 }
%struct.css_task_iter = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.freezer*)* @unfreeze_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unfreeze_cgroup(%struct.freezer* %0) #0 {
  %2 = alloca %struct.freezer*, align 8
  %3 = alloca %struct.css_task_iter, align 4
  %4 = alloca %struct.task_struct*, align 8
  store %struct.freezer* %0, %struct.freezer** %2, align 8
  %5 = load %struct.freezer*, %struct.freezer** %2, align 8
  %6 = getelementptr inbounds %struct.freezer, %struct.freezer* %5, i32 0, i32 0
  %7 = call i32 @css_task_iter_start(i32* %6, i32 0, %struct.css_task_iter* %3)
  br label %8

8:                                                ; preds = %11, %1
  %9 = call %struct.task_struct* @css_task_iter_next(%struct.css_task_iter* %3)
  store %struct.task_struct* %9, %struct.task_struct** %4, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = call i32 @__thaw_task(%struct.task_struct* %12)
  br label %8

14:                                               ; preds = %8
  %15 = call i32 @css_task_iter_end(%struct.css_task_iter* %3)
  ret void
}

declare dso_local i32 @css_task_iter_start(i32*, i32, %struct.css_task_iter*) #1

declare dso_local %struct.task_struct* @css_task_iter_next(%struct.css_task_iter*) #1

declare dso_local i32 @__thaw_task(%struct.task_struct*) #1

declare dso_local i32 @css_task_iter_end(%struct.css_task_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
