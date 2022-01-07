; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_cancel_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_cancel_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32)* @cancel_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cancel_charge(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %6 = call i64 @mem_cgroup_is_root(%struct.mem_cgroup* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %26

9:                                                ; preds = %2
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %11 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %10, i32 0, i32 2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @page_counter_uncharge(i32* %11, i32 %12)
  %14 = call i64 (...) @do_memsw_account()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %18 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %17, i32 0, i32 1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @page_counter_uncharge(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %9
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %23 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @css_put_many(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %8
  ret void
}

declare dso_local i64 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @page_counter_uncharge(i32*, i32) #1

declare dso_local i64 @do_memsw_account(...) #1

declare dso_local i32 @css_put_many(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
