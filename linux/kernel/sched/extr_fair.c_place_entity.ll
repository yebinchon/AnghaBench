; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_place_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_fair.c_place_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfs_rq = type { i64 }
%struct.sched_entity = type { i32 }

@START_DEBIT = common dso_local global i32 0, align 4
@sysctl_sched_latency = common dso_local global i64 0, align 8
@GENTLE_FAIR_SLEEPERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfs_rq*, %struct.sched_entity*, i32)* @place_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @place_entity(%struct.cfs_rq* %0, %struct.sched_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.cfs_rq*, align 8
  %5 = alloca %struct.sched_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cfs_rq* %0, %struct.cfs_rq** %4, align 8
  store %struct.sched_entity* %1, %struct.sched_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %10 = getelementptr inbounds %struct.cfs_rq, %struct.cfs_rq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* @START_DEBIT, align 4
  %16 = call i64 @sched_feat(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.cfs_rq*, %struct.cfs_rq** %4, align 8
  %20 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %21 = call i64 @sched_vslice(%struct.cfs_rq* %19, %struct.sched_entity* %20)
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %18, %14, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @sysctl_sched_latency, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* @GENTLE_FAIR_SLEEPERS, align 4
  %30 = call i64 @sched_feat(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = lshr i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %41 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @max_vruntime(i32 %42, i64 %43)
  %45 = load %struct.sched_entity*, %struct.sched_entity** %5, align 8
  %46 = getelementptr inbounds %struct.sched_entity, %struct.sched_entity* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i64 @sched_feat(i32) #1

declare dso_local i64 @sched_vslice(%struct.cfs_rq*, %struct.sched_entity*) #1

declare dso_local i32 @max_vruntime(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
