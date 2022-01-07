; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___count_memcg_events.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___count_memcg_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@MEMCG_CHARGE_BATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__count_memcg_events(%struct.mem_cgroup* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = call i64 (...) @mem_cgroup_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %72

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @__this_cpu_read(i32 %22)
  %24 = add i64 %13, %23
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @MEMCG_CHARGE_BATCH, align 8
  %27 = icmp ugt i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %12
  %32 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %33 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @__this_cpu_add(i32 %40, i64 %41)
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  store %struct.mem_cgroup* %43, %struct.mem_cgroup** %8, align 8
  br label %44

44:                                               ; preds = %56, %31
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %46 = icmp ne %struct.mem_cgroup* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %50 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @atomic_long_add(i64 %48, i32* %54)
  br label %56

56:                                               ; preds = %47
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %58 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %57)
  store %struct.mem_cgroup* %58, %struct.mem_cgroup** %8, align 8
  br label %44

59:                                               ; preds = %44
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %59, %12
  %61 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %62 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @__this_cpu_write(i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %60, %11
  ret void
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__this_cpu_add(i32, i64) #1

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

declare dso_local i32 @__this_cpu_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
