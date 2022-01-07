; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_cpu_attach_domain.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_cpu_attach_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_domain = type { i32, %struct.sched_domain*, %struct.sched_domain* }
%struct.root_domain = type { i32 }
%struct.rq = type { %struct.sched_domain* }

@SD_PREFER_SIBLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_domain*, %struct.root_domain*, i32)* @cpu_attach_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_attach_domain(%struct.sched_domain* %0, %struct.root_domain* %1, i32 %2) #0 {
  %4 = alloca %struct.sched_domain*, align 8
  %5 = alloca %struct.root_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rq*, align 8
  %8 = alloca %struct.sched_domain*, align 8
  %9 = alloca %struct.sched_domain*, align 8
  store %struct.sched_domain* %0, %struct.sched_domain** %4, align 8
  store %struct.root_domain* %1, %struct.root_domain** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.rq* @cpu_rq(i32 %10)
  store %struct.rq* %11, %struct.rq** %7, align 8
  %12 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  store %struct.sched_domain* %12, %struct.sched_domain** %8, align 8
  br label %13

13:                                               ; preds = %64, %3
  %14 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %15 = icmp ne %struct.sched_domain* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %13
  %17 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %18 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %17, i32 0, i32 2
  %19 = load %struct.sched_domain*, %struct.sched_domain** %18, align 8
  store %struct.sched_domain* %19, %struct.sched_domain** %9, align 8
  %20 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %21 = icmp ne %struct.sched_domain* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %65

23:                                               ; preds = %16
  %24 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %25 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %26 = call i64 @sd_parent_degenerate(%struct.sched_domain* %24, %struct.sched_domain* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %30 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %29, i32 0, i32 2
  %31 = load %struct.sched_domain*, %struct.sched_domain** %30, align 8
  %32 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %33 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %32, i32 0, i32 2
  store %struct.sched_domain* %31, %struct.sched_domain** %33, align 8
  %34 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %35 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %34, i32 0, i32 2
  %36 = load %struct.sched_domain*, %struct.sched_domain** %35, align 8
  %37 = icmp ne %struct.sched_domain* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %40 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %41 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %40, i32 0, i32 2
  %42 = load %struct.sched_domain*, %struct.sched_domain** %41, align 8
  %43 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %42, i32 0, i32 1
  store %struct.sched_domain* %39, %struct.sched_domain** %43, align 8
  br label %44

44:                                               ; preds = %38, %28
  %45 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %46 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SD_PREFER_SIBLING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @SD_PREFER_SIBLING, align 4
  %53 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %54 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.sched_domain*, %struct.sched_domain** %9, align 8
  %59 = call i32 @destroy_sched_domain(%struct.sched_domain* %58)
  br label %64

60:                                               ; preds = %23
  %61 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %62 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %61, i32 0, i32 2
  %63 = load %struct.sched_domain*, %struct.sched_domain** %62, align 8
  store %struct.sched_domain* %63, %struct.sched_domain** %8, align 8
  br label %64

64:                                               ; preds = %60, %57
  br label %13

65:                                               ; preds = %22, %13
  %66 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %67 = icmp ne %struct.sched_domain* %66, null
  br i1 %67, label %68, label %85

68:                                               ; preds = %65
  %69 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %70 = call i64 @sd_degenerate(%struct.sched_domain* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  store %struct.sched_domain* %73, %struct.sched_domain** %8, align 8
  %74 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %75 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %74, i32 0, i32 2
  %76 = load %struct.sched_domain*, %struct.sched_domain** %75, align 8
  store %struct.sched_domain* %76, %struct.sched_domain** %4, align 8
  %77 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %78 = call i32 @destroy_sched_domain(%struct.sched_domain* %77)
  %79 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %80 = icmp ne %struct.sched_domain* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %83 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %82, i32 0, i32 1
  store %struct.sched_domain* null, %struct.sched_domain** %83, align 8
  br label %84

84:                                               ; preds = %81, %72
  br label %85

85:                                               ; preds = %84, %68, %65
  %86 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @sched_domain_debug(%struct.sched_domain* %86, i32 %87)
  %89 = load %struct.rq*, %struct.rq** %7, align 8
  %90 = load %struct.root_domain*, %struct.root_domain** %5, align 8
  %91 = call i32 @rq_attach_root(%struct.rq* %89, %struct.root_domain* %90)
  %92 = load %struct.rq*, %struct.rq** %7, align 8
  %93 = getelementptr inbounds %struct.rq, %struct.rq* %92, i32 0, i32 0
  %94 = load %struct.sched_domain*, %struct.sched_domain** %93, align 8
  store %struct.sched_domain* %94, %struct.sched_domain** %8, align 8
  %95 = load %struct.rq*, %struct.rq** %7, align 8
  %96 = getelementptr inbounds %struct.rq, %struct.rq* %95, i32 0, i32 0
  %97 = load %struct.sched_domain*, %struct.sched_domain** %96, align 8
  %98 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %99 = call i32 @rcu_assign_pointer(%struct.sched_domain* %97, %struct.sched_domain* %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dirty_sched_domain_sysctl(i32 %100)
  %102 = load %struct.sched_domain*, %struct.sched_domain** %8, align 8
  %103 = call i32 @destroy_sched_domains(%struct.sched_domain* %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @update_top_cache_domain(i32 %104)
  ret void
}

declare dso_local %struct.rq* @cpu_rq(i32) #1

declare dso_local i64 @sd_parent_degenerate(%struct.sched_domain*, %struct.sched_domain*) #1

declare dso_local i32 @destroy_sched_domain(%struct.sched_domain*) #1

declare dso_local i64 @sd_degenerate(%struct.sched_domain*) #1

declare dso_local i32 @sched_domain_debug(%struct.sched_domain*, i32) #1

declare dso_local i32 @rq_attach_root(%struct.rq*, %struct.root_domain*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.sched_domain*, %struct.sched_domain*) #1

declare dso_local i32 @dirty_sched_domain_sysctl(i32) #1

declare dso_local i32 @destroy_sched_domains(%struct.sched_domain*) #1

declare dso_local i32 @update_top_cache_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
