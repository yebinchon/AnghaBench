; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mod_memcg_state.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mod_memcg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@MEMCG_CHARGE_BATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__mod_memcg_state(%struct.mem_cgroup* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i64 (...) @mem_cgroup_disabled()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %74

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__this_cpu_read(i32 %22)
  %24 = add nsw i32 %13, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @abs(i64 %26)
  %28 = load i64, i64* @MEMCG_CHARGE_BATCH, align 8
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %12
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %35 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @__this_cpu_add(i32 %42, i64 %43)
  %45 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  store %struct.mem_cgroup* %45, %struct.mem_cgroup** %8, align 8
  br label %46

46:                                               ; preds = %58, %33
  %47 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %48 = icmp ne %struct.mem_cgroup* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %52 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @atomic_long_add(i64 %50, i32* %56)
  br label %58

58:                                               ; preds = %49
  %59 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %60 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %59)
  store %struct.mem_cgroup* %60, %struct.mem_cgroup** %8, align 8
  br label %46

61:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  br label %62

62:                                               ; preds = %61, %12
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %64 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @__this_cpu_write(i32 %71, i64 %72)
  br label %74

74:                                               ; preds = %62, %11
  ret void
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @abs(i64) #1

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
