; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_claim_allocations.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_topology.c_claim_allocations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_domain = type { i32, %struct.sd_data* }
%struct.sd_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sched_domain*)* @claim_allocations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claim_allocations(i32 %0, %struct.sched_domain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_domain*, align 8
  %5 = alloca %struct.sd_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sched_domain* %1, %struct.sched_domain** %4, align 8
  %6 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %7 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %6, i32 0, i32 1
  %8 = load %struct.sd_data*, %struct.sd_data** %7, align 8
  store %struct.sd_data* %8, %struct.sd_data** %5, align 8
  %9 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %10 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.sched_domain** @per_cpu_ptr(i32 %11, i32 %12)
  %14 = load %struct.sched_domain*, %struct.sched_domain** %13, align 8
  %15 = load %struct.sched_domain*, %struct.sched_domain** %4, align 8
  %16 = icmp ne %struct.sched_domain* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %20 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.sched_domain** @per_cpu_ptr(i32 %21, i32 %22)
  store %struct.sched_domain* null, %struct.sched_domain** %23, align 8
  %24 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %25 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.sched_domain** @per_cpu_ptr(i32 %26, i32 %27)
  %29 = load %struct.sched_domain*, %struct.sched_domain** %28, align 8
  %30 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %29, i32 0, i32 0
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %35 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call %struct.sched_domain** @per_cpu_ptr(i32 %36, i32 %37)
  store %struct.sched_domain* null, %struct.sched_domain** %38, align 8
  br label %39

39:                                               ; preds = %33, %2
  %40 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %41 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call %struct.sched_domain** @per_cpu_ptr(i32 %42, i32 %43)
  %45 = load %struct.sched_domain*, %struct.sched_domain** %44, align 8
  %46 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %45, i32 0, i32 0
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %51 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call %struct.sched_domain** @per_cpu_ptr(i32 %52, i32 %53)
  store %struct.sched_domain* null, %struct.sched_domain** %54, align 8
  br label %55

55:                                               ; preds = %49, %39
  %56 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %57 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call %struct.sched_domain** @per_cpu_ptr(i32 %58, i32 %59)
  %61 = load %struct.sched_domain*, %struct.sched_domain** %60, align 8
  %62 = getelementptr inbounds %struct.sched_domain, %struct.sched_domain* %61, i32 0, i32 0
  %63 = call i64 @atomic_read(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.sd_data*, %struct.sd_data** %5, align 8
  %67 = getelementptr inbounds %struct.sd_data, %struct.sd_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call %struct.sched_domain** @per_cpu_ptr(i32 %68, i32 %69)
  store %struct.sched_domain* null, %struct.sched_domain** %70, align 8
  br label %71

71:                                               ; preds = %65, %55
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.sched_domain** @per_cpu_ptr(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
