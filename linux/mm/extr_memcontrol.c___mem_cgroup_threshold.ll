; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mem_cgroup_threshold_ary = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32)* @__mem_cgroup_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mem_cgroup_threshold(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup_threshold_ary*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %13 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mem_cgroup_threshold_ary* @rcu_dereference(i32 %15)
  store %struct.mem_cgroup_threshold_ary* %16, %struct.mem_cgroup_threshold_ary** %5, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mem_cgroup_threshold_ary* @rcu_dereference(i32 %21)
  store %struct.mem_cgroup_threshold_ary* %22, %struct.mem_cgroup_threshold_ary** %5, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %25 = icmp ne %struct.mem_cgroup_threshold_ary* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %109

27:                                               ; preds = %23
  %28 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @mem_cgroup_usage(%struct.mem_cgroup* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %32 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %63, %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %39 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ugt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %37, %34
  %52 = phi i1 [ false, %34 ], [ %50, %37 ]
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %55 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @eventfd_signal(i32 %61, i32 1)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  br label %34

66:                                               ; preds = %51
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %101, %66
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %72 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %77 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ule i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %75, %69
  %90 = phi i1 [ false, %69 ], [ %88, %75 ]
  br i1 %90, label %91, label %104

91:                                               ; preds = %89
  %92 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %93 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @eventfd_signal(i32 %99, i32 1)
  br label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %69

104:                                              ; preds = %89
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.mem_cgroup_threshold_ary*, %struct.mem_cgroup_threshold_ary** %5, align 8
  %108 = getelementptr inbounds %struct.mem_cgroup_threshold_ary, %struct.mem_cgroup_threshold_ary* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %104, %26
  %110 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup_threshold_ary* @rcu_dereference(i32) #1

declare dso_local i64 @mem_cgroup_usage(%struct.mem_cgroup*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eventfd_signal(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
