; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_check_for_release.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_check_for_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup1_check_for_release(%struct.cgroup* %0) #0 {
  %2 = alloca %struct.cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %2, align 8
  %3 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %4 = call i64 @notify_on_release(%struct.cgroup* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %8 = call i32 @cgroup_is_populated(%struct.cgroup* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %12 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %11, i32 0, i32 1
  %13 = call i32 @css_has_online_children(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %17 = call i32 @cgroup_is_dead(%struct.cgroup* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.cgroup*, %struct.cgroup** %2, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 0
  %22 = call i32 @schedule_work(i32* %21)
  br label %23

23:                                               ; preds = %19, %15, %10, %6, %1
  ret void
}

declare dso_local i64 @notify_on_release(%struct.cgroup*) #1

declare dso_local i32 @cgroup_is_populated(%struct.cgroup*) #1

declare dso_local i32 @css_has_online_children(i32*) #1

declare dso_local i32 @cgroup_is_dead(%struct.cgroup*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
