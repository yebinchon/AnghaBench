; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rstat.c_cgroup_rstat_cpu_pop_updated.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rstat.c_cgroup_rstat_cpu_pop_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cgroup_rstat_cpu = type { %struct.cgroup*, %struct.cgroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup* (%struct.cgroup*, %struct.cgroup*, i32)* @cgroup_rstat_cpu_pop_updated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup* @cgroup_rstat_cpu_pop_updated(%struct.cgroup* %0, %struct.cgroup* %1, i32 %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cgroup_rstat_cpu*, align 8
  %9 = alloca %struct.cgroup*, align 8
  %10 = alloca %struct.cgroup_rstat_cpu*, align 8
  %11 = alloca %struct.cgroup_rstat_cpu*, align 8
  %12 = alloca %struct.cgroup**, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cgroup* %1, %struct.cgroup** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %14 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %15 = icmp eq %struct.cgroup* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.cgroup* null, %struct.cgroup** %4, align 8
  br label %82

17:                                               ; preds = %3
  %18 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %19 = icmp ne %struct.cgroup* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  store %struct.cgroup* %21, %struct.cgroup** %5, align 8
  br label %25

22:                                               ; preds = %17
  %23 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %24 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %23)
  store %struct.cgroup* %24, %struct.cgroup** %5, align 8
  br label %25

25:                                               ; preds = %22, %20
  br label %26

26:                                               ; preds = %25, %36
  %27 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup* %27, i32 %28)
  store %struct.cgroup_rstat_cpu* %29, %struct.cgroup_rstat_cpu** %8, align 8
  %30 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %31 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %30, i32 0, i32 1
  %32 = load %struct.cgroup*, %struct.cgroup** %31, align 8
  %33 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %34 = icmp eq %struct.cgroup* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  %37 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %38 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %37, i32 0, i32 1
  %39 = load %struct.cgroup*, %struct.cgroup** %38, align 8
  store %struct.cgroup* %39, %struct.cgroup** %5, align 8
  br label %26

40:                                               ; preds = %35
  %41 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %42 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %41, i32 0, i32 0
  %43 = load %struct.cgroup*, %struct.cgroup** %42, align 8
  %44 = icmp ne %struct.cgroup* %43, null
  br i1 %44, label %45, label %81

45:                                               ; preds = %40
  %46 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %47 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %46)
  store %struct.cgroup* %47, %struct.cgroup** %9, align 8
  %48 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup* %48, i32 %49)
  store %struct.cgroup_rstat_cpu* %50, %struct.cgroup_rstat_cpu** %10, align 8
  %51 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %10, align 8
  %52 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %51, i32 0, i32 1
  store %struct.cgroup** %52, %struct.cgroup*** %12, align 8
  br label %53

53:                                               ; preds = %45, %63
  %54 = load %struct.cgroup**, %struct.cgroup*** %12, align 8
  %55 = load %struct.cgroup*, %struct.cgroup** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup* %55, i32 %56)
  store %struct.cgroup_rstat_cpu* %57, %struct.cgroup_rstat_cpu** %11, align 8
  %58 = load %struct.cgroup**, %struct.cgroup*** %12, align 8
  %59 = load %struct.cgroup*, %struct.cgroup** %58, align 8
  %60 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %61 = icmp eq %struct.cgroup* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %72

63:                                               ; preds = %53
  %64 = load %struct.cgroup**, %struct.cgroup*** %12, align 8
  %65 = load %struct.cgroup*, %struct.cgroup** %64, align 8
  %66 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %67 = icmp eq %struct.cgroup* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON_ONCE(i32 %68)
  %70 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %11, align 8
  %71 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %70, i32 0, i32 0
  store %struct.cgroup** %71, %struct.cgroup*** %12, align 8
  br label %53

72:                                               ; preds = %62
  %73 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %74 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %73, i32 0, i32 0
  %75 = load %struct.cgroup*, %struct.cgroup** %74, align 8
  %76 = load %struct.cgroup**, %struct.cgroup*** %12, align 8
  store %struct.cgroup* %75, %struct.cgroup** %76, align 8
  %77 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %78 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %77, i32 0, i32 0
  store %struct.cgroup* null, %struct.cgroup** %78, align 8
  %79 = call i32 (...) @smp_mb()
  %80 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  store %struct.cgroup* %80, %struct.cgroup** %4, align 8
  br label %82

81:                                               ; preds = %40
  store %struct.cgroup* null, %struct.cgroup** %4, align 8
  br label %82

82:                                               ; preds = %81, %72, %16
  %83 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  ret %struct.cgroup* %83
}

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
