; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmpressure.c_vmpressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i64 }
%struct.vmpressure = type { i64, i64, i64, i64, i32, i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@vmpressure_win = common dso_local global i64 0, align 8
@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8
@VMPRESSURE_LOW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmpressure(i32 %0, %struct.mem_cgroup* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vmpressure*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %14 = call %struct.vmpressure* @memcg_to_vmpressure(%struct.mem_cgroup* %13)
  store %struct.vmpressure* %14, %struct.vmpressure** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @__GFP_HIGHMEM, align 4
  %17 = load i32, i32* @__GFP_MOVABLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @__GFP_IO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @__GFP_FS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %15, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %108

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %108

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %35 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %34, i32 0, i32 4
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %39 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %44 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %48 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %47, i32 0, i32 4
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @vmpressure_win, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %108

54:                                               ; preds = %33
  %55 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %56 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %55, i32 0, i32 5
  %57 = call i32 @schedule_work(i32* %56)
  br label %108

58:                                               ; preds = %30
  %59 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %60 = icmp ne %struct.mem_cgroup* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  %64 = icmp eq %struct.mem_cgroup* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %58
  br label %108

66:                                               ; preds = %61
  %67 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %68 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %67, i32 0, i32 4
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %72 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, %70
  store i64 %74, i64* %72, align 8
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %77 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, %75
  store i64 %79, i64* %77, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @vmpressure_win, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %66
  %84 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %85 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %84, i32 0, i32 4
  %86 = call i32 @spin_unlock(i32* %85)
  br label %108

87:                                               ; preds = %66
  %88 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %89 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %91 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.vmpressure*, %struct.vmpressure** %11, align 8
  %93 = getelementptr inbounds %struct.vmpressure, %struct.vmpressure* %92, i32 0, i32 4
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @vmpressure_calc_level(i64 %95, i64 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @VMPRESSURE_LOW, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %87
  %102 = load i64, i64* @jiffies, align 8
  %103 = load i64, i64* @HZ, align 8
  %104 = add nsw i64 %102, %103
  %105 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %106 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %87
  br label %108

108:                                              ; preds = %25, %29, %53, %65, %83, %107, %54
  ret void
}

declare dso_local %struct.vmpressure* @memcg_to_vmpressure(%struct.mem_cgroup*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @vmpressure_calc_level(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
