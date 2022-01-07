; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_swapoff.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_swapoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cgroup_ctrl = type { i64, %struct.page** }
%struct.page = type { i32 }

@do_swap_account = common dso_local global i32 0, align 4
@swap_cgroup_mutex = common dso_local global i32 0, align 4
@swap_cgroup_ctrl = common dso_local global %struct.swap_cgroup_ctrl* null, align 8
@SWAP_CLUSTER_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_cgroup_swapoff(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.swap_cgroup_ctrl*, align 8
  %7 = alloca %struct.page*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @do_swap_account, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @swap_cgroup_mutex)
  %13 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** @swap_cgroup_ctrl, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %13, i64 %15
  store %struct.swap_cgroup_ctrl* %16, %struct.swap_cgroup_ctrl** %6, align 8
  %17 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %6, align 8
  %18 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %17, i32 0, i32 1
  %19 = load %struct.page**, %struct.page*** %18, align 8
  store %struct.page** %19, %struct.page*** %3, align 8
  %20 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %6, align 8
  %21 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %6, align 8
  %24 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %23, i32 0, i32 1
  store %struct.page** null, %struct.page*** %24, align 8
  %25 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %6, align 8
  %26 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = call i32 @mutex_unlock(i32* @swap_cgroup_mutex)
  %28 = load %struct.page**, %struct.page*** %3, align 8
  %29 = icmp ne %struct.page** %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load %struct.page**, %struct.page*** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 %37
  %39 = load %struct.page*, %struct.page** %38, align 8
  store %struct.page* %39, %struct.page** %7, align 8
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = icmp ne %struct.page* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.page*, %struct.page** %7, align 8
  %44 = call i32 @__free_page(%struct.page* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @SWAP_CLUSTER_MAX, align 8
  %48 = urem i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 (...) @cond_resched()
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.page**, %struct.page*** %3, align 8
  %58 = call i32 @vfree(%struct.page** %57)
  br label %59

59:                                               ; preds = %10, %56, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @vfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
