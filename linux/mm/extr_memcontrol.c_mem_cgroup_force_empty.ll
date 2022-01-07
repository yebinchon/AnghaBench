; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_force_empty.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_force_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@MEM_CGROUP_RECLAIM_RETRIES = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*)* @mem_cgroup_force_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_force_empty(%struct.mem_cgroup* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  %6 = load i32, i32* @MEM_CGROUP_RECLAIM_RETRIES, align 4
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @lru_add_drain_all()
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %9 = call i32 @drain_all_stock(%struct.mem_cgroup* %8)
  br label %10

10:                                               ; preds = %40, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %14, i32 0, i32 0
  %16 = call i64 @page_counter_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %41

20:                                               ; preds = %18
  %21 = load i32, i32* @current, align 4
  %22 = call i64 @signal_pending(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINTR, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %20
  %28 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup* %28, i32 1, i32 %29, i32 1)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @BLK_RW_ASYNC, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = sdiv i32 %37, 10
  %39 = call i32 @congestion_wait(i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %33, %27
  br label %10

41:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @lru_add_drain_all(...) #1

declare dso_local i32 @drain_all_stock(%struct.mem_cgroup*) #1

declare dso_local i64 @page_counter_read(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup*, i32, i32, i32) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
