; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_cancel_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_cancel_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.mem_cgroup = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_cancel_charge(%struct.page* %0, %struct.mem_cgroup* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @hpage_nr_pages(%struct.page* %11)
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ %12, %10 ], [ 1, %13 ]
  store i32 %15, i32* %7, align 4
  %16 = call i64 (...) @mem_cgroup_disabled()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %27

19:                                               ; preds = %14
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %21 = icmp ne %struct.mem_cgroup* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %27

23:                                               ; preds = %19
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @cancel_charge(%struct.mem_cgroup* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %22, %18
  ret void
}

declare dso_local i32 @hpage_nr_pages(%struct.page*) #1

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @cancel_charge(%struct.mem_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
