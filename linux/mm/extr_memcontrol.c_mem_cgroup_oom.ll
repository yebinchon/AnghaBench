; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_oom.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.mem_cgroup*, i32 }
%struct.mem_cgroup = type { i32, i64 }

@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@OOM_SKIPPED = common dso_local global i32 0, align 4
@MEMCG_OOM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@OOM_ASYNC = common dso_local global i32 0, align 4
@OOM_SUCCESS = common dso_local global i32 0, align 4
@OOM_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i32, i32)* @mem_cgroup_oom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_oom(%struct.mem_cgroup* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @OOM_SKIPPED, align 4
  store i32 %14, i32* %4, align 4
  br label %74

15:                                               ; preds = %3
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %17 = load i32, i32* @MEMCG_OOM, align 4
  %18 = call i32 @memcg_memory_event(%struct.mem_cgroup* %16, i32 %17)
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %15
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @OOM_SKIPPED, align 4
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %23
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %32 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %31, i32 0, i32 0
  %33 = call i32 @css_get(i32* %32)
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store %struct.mem_cgroup* %34, %struct.mem_cgroup** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @OOM_ASYNC, align 4
  store i32 %43, i32* %4, align 4
  br label %74

44:                                               ; preds = %15
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %46 = call i32 @mem_cgroup_mark_under_oom(%struct.mem_cgroup* %45)
  %47 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %48 = call i32 @mem_cgroup_oom_trylock(%struct.mem_cgroup* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %53 = call i32 @mem_cgroup_oom_notify(%struct.mem_cgroup* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %56 = call i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup* %55)
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @mem_cgroup_out_of_memory(%struct.mem_cgroup* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @OOM_SUCCESS, align 4
  store i32 %63, i32* %8, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @OOM_FAILED, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %71 = call i32 @mem_cgroup_oom_unlock(%struct.mem_cgroup* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %30, %28, %13
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @memcg_memory_event(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @css_get(i32*) #1

declare dso_local i32 @mem_cgroup_mark_under_oom(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_oom_trylock(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_oom_notify(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup*) #1

declare dso_local i64 @mem_cgroup_out_of_memory(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @mem_cgroup_oom_unlock(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
