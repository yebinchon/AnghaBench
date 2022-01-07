; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_cgroup.c_swap_cgroup_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cgroup_ctrl = type { i64, %struct.page** }
%struct.page = type { i32 }

@swap_cgroup_ctrl = common dso_local global %struct.swap_cgroup_ctrl* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @swap_cgroup_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swap_cgroup_prepare(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.swap_cgroup_ctrl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** @swap_cgroup_ctrl, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %8, i64 %10
  store %struct.swap_cgroup_ctrl* %11, %struct.swap_cgroup_ctrl** %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i32, i32* @__GFP_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.page* @alloc_page(i32 %21)
  store %struct.page* %22, %struct.page** %4, align 8
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %44

26:                                               ; preds = %18
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %5, align 8
  %29 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %28, i32 0, i32 1
  %30 = load %struct.page**, %struct.page*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %31
  store %struct.page* %27, %struct.page** %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SWAP_CLUSTER_MAX, align 8
  %35 = urem i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = call i32 (...) @cond_resched()
  br label %39

39:                                               ; preds = %37, %26
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %12

43:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %64

44:                                               ; preds = %25
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %58, %44
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.swap_cgroup_ctrl*, %struct.swap_cgroup_ctrl** %5, align 8
  %52 = getelementptr inbounds %struct.swap_cgroup_ctrl, %struct.swap_cgroup_ctrl* %51, i32 0, i32 1
  %53 = load %struct.page**, %struct.page*** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.page*, %struct.page** %53, i64 %54
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = call i32 @__free_page(%struct.page* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %43
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
