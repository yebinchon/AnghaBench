; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_kswapd.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_kswapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.cpumask = type { i32 }

@MAX_NR_ZONES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@PF_SWAPWRITE = common dso_local global i32 0, align 4
@PF_KSWAPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kswapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kswapd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.cpumask*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_NR_ZONES, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %14, %struct.task_struct** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cpumask* @cpumask_of_node(i32 %17)
  store %struct.cpumask* %18, %struct.cpumask** %8, align 8
  %19 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %20 = call i32 @cpumask_empty(%struct.cpumask* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %24 = load %struct.cpumask*, %struct.cpumask** %8, align 8
  %25 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %23, %struct.cpumask* %24)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32, i32* @PF_MEMALLOC, align 4
  %28 = load i32, i32* @PF_SWAPWRITE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PF_KSWAPD, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = call i32 (...) @set_freezable()
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @MAX_NR_ZONES, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %89, %73, %26
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  store i32 %45, i32* %3, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @kswapd_classzone_idx(%struct.TYPE_5__* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %88, %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @kswapd_try_to_sleep(%struct.TYPE_5__* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  store i32 %57, i32* %3, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @kswapd_classzone_idx(%struct.TYPE_5__* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* @MAX_NR_ZONES, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = call i32 (...) @try_to_freeze()
  store i32 %66, i32* %9, align 4
  %67 = call i64 (...) @kthread_should_stop()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  br label %90

70:                                               ; preds = %49
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %42

74:                                               ; preds = %70
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @trace_mm_vmscan_kswapd_wake(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @balance_pgdat(%struct.TYPE_5__* %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %49

89:                                               ; preds = %74
  br label %42

90:                                               ; preds = %69
  %91 = load i32, i32* @PF_MEMALLOC, align 4
  %92 = load i32, i32* @PF_SWAPWRITE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PF_KSWAPD, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %98 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  ret i32 0
}

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @cpumask_empty(%struct.cpumask*) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct*, %struct.cpumask*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kswapd_classzone_idx(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kswapd_try_to_sleep(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @trace_mm_vmscan_kswapd_wake(i32, i32, i32) #1

declare dso_local i32 @balance_pgdat(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
