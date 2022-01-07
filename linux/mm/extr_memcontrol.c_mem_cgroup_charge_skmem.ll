; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_charge_skmem.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_charge_skmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32 }
%struct.page_counter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@memory_cgrp_subsys = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@MEMCG_SOCK = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_charge_skmem(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page_counter*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @memory_cgrp_subsys, align 4
  %10 = call i32 @cgroup_subsys_on_dfl(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %13, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @page_counter_try_charge(i32* %14, i32 %15, %struct.page_counter** %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  store i32 1, i32* %3, align 4
  br label %51

21:                                               ; preds = %12
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %23 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %22, i32 0, i32 1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @page_counter_charge(i32* %23, i32 %24)
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %27 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %51

28:                                               ; preds = %2
  %29 = call i64 (...) @in_softirq()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @GFP_NOWAIT, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %35 = load i32, i32* @MEMCG_SOCK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mod_memcg_state(%struct.mem_cgroup* %34, i32 %35, i32 %36)
  %38 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @try_charge(%struct.mem_cgroup* %38, i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %51

44:                                               ; preds = %33
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @__GFP_NOFAIL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @try_charge(%struct.mem_cgroup* %45, i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %43, %21, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i64 @page_counter_try_charge(i32*, i32, %struct.page_counter**) #1

declare dso_local i32 @page_counter_charge(i32*, i32) #1

declare dso_local i64 @in_softirq(...) #1

declare dso_local i32 @mod_memcg_state(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i64 @try_charge(%struct.mem_cgroup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
