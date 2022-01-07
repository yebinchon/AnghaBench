; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_setup_new_dl_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_setup_new_dl_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32, i32, i64, i64, i64, i32 }
%struct.dl_rq = type { i32 }
%struct.rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*)* @setup_new_dl_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_new_dl_entity(%struct.sched_dl_entity* %0) #0 {
  %2 = alloca %struct.sched_dl_entity*, align 8
  %3 = alloca %struct.dl_rq*, align 8
  %4 = alloca %struct.rq*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %2, align 8
  %5 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %6 = call %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* %5)
  store %struct.dl_rq* %6, %struct.dl_rq** %3, align 8
  %7 = load %struct.dl_rq*, %struct.dl_rq** %3, align 8
  %8 = call %struct.rq* @rq_of_dl_rq(%struct.dl_rq* %7)
  store %struct.rq* %8, %struct.rq** %4, align 8
  %9 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %10 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.rq*, %struct.rq** %4, align 8
  %14 = call i64 @rq_clock(%struct.rq* %13)
  %15 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %16 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dl_time_before(i64 %14, i64 %17)
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %21 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.rq*, %struct.rq** %4, align 8
  %27 = call i64 @rq_clock(%struct.rq* %26)
  %28 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %29 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %33 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %32, i32 0, i32 3
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %35 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %2, align 8
  %38 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local %struct.rq* @rq_of_dl_rq(%struct.dl_rq*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dl_time_before(i64, i64) #1

declare dso_local i64 @rq_clock(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
