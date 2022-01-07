; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rstat.c_cgroup_rstat_updated.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rstat.c_cgroup_rstat_updated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cgroup_rstat_cpu = type { %struct.cgroup*, %struct.cgroup* }

@cgroup_rstat_cpu_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_rstat_updated(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cgroup_rstat_cpu*, align 8
  %9 = alloca %struct.cgroup_rstat_cpu*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @per_cpu_ptr(i32* @cgroup_rstat_cpu_lock, i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %13 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %12)
  %14 = icmp ne %struct.cgroup* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup* %18, i32 %19)
  %21 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %20, i32 0, i32 1
  %22 = load %struct.cgroup*, %struct.cgroup** %21, align 8
  %23 = icmp ne %struct.cgroup* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %63

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @raw_spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %30 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %29)
  store %struct.cgroup* %30, %struct.cgroup** %6, align 8
  br label %31

31:                                               ; preds = %55, %25
  %32 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %33 = icmp ne %struct.cgroup* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup* %35, i32 %36)
  store %struct.cgroup_rstat_cpu* %37, %struct.cgroup_rstat_cpu** %8, align 8
  %38 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup* %38, i32 %39)
  store %struct.cgroup_rstat_cpu* %40, %struct.cgroup_rstat_cpu** %9, align 8
  %41 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %42 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %41, i32 0, i32 1
  %43 = load %struct.cgroup*, %struct.cgroup** %42, align 8
  %44 = icmp ne %struct.cgroup* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %59

46:                                               ; preds = %34
  %47 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %9, align 8
  %48 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %47, i32 0, i32 0
  %49 = load %struct.cgroup*, %struct.cgroup** %48, align 8
  %50 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %8, align 8
  %51 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %50, i32 0, i32 1
  store %struct.cgroup* %49, %struct.cgroup** %51, align 8
  %52 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %53 = load %struct.cgroup_rstat_cpu*, %struct.cgroup_rstat_cpu** %9, align 8
  %54 = getelementptr inbounds %struct.cgroup_rstat_cpu, %struct.cgroup_rstat_cpu* %53, i32 0, i32 0
  store %struct.cgroup* %52, %struct.cgroup** %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  store %struct.cgroup* %56, %struct.cgroup** %3, align 8
  %57 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %58 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %57)
  store %struct.cgroup* %58, %struct.cgroup** %6, align 8
  br label %31

59:                                               ; preds = %45, %31
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %24, %15
  ret void
}

declare dso_local i32* @per_cpu_ptr(i32*, i32) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.cgroup_rstat_cpu* @cgroup_rstat_cpu(%struct.cgroup*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
