; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_update_dl_entity.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_update_dl_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32, i32, i64, i64, i32 }
%struct.dl_rq = type { i32 }
%struct.rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sched_dl_entity*, %struct.sched_dl_entity*)* @update_dl_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dl_entity(%struct.sched_dl_entity* %0, %struct.sched_dl_entity* %1) #0 {
  %3 = alloca %struct.sched_dl_entity*, align 8
  %4 = alloca %struct.sched_dl_entity*, align 8
  %5 = alloca %struct.dl_rq*, align 8
  %6 = alloca %struct.rq*, align 8
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %3, align 8
  store %struct.sched_dl_entity* %1, %struct.sched_dl_entity** %4, align 8
  %7 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %8 = call %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity* %7)
  store %struct.dl_rq* %8, %struct.dl_rq** %5, align 8
  %9 = load %struct.dl_rq*, %struct.dl_rq** %5, align 8
  %10 = call %struct.rq* @rq_of_dl_rq(%struct.dl_rq* %9)
  store %struct.rq* %10, %struct.rq** %6, align 8
  %11 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %12 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rq*, %struct.rq** %6, align 8
  %15 = call i64 @rq_clock(%struct.rq* %14)
  %16 = call i64 @dl_time_before(i64 %13, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %20 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %21 = load %struct.rq*, %struct.rq** %6, align 8
  %22 = call i64 @rq_clock(%struct.rq* %21)
  %23 = call i64 @dl_entity_overflow(%struct.sched_dl_entity* %19, %struct.sched_dl_entity* %20, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %18, %2
  %26 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %27 = call i32 @dl_is_implicit(%struct.sched_dl_entity* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %31 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rq*, %struct.rq** %6, align 8
  %34 = call i64 @rq_clock(%struct.rq* %33)
  %35 = call i64 @dl_time_before(i64 %32, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %39 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %29, %25
  %44 = phi i1 [ false, %29 ], [ false, %25 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %50 = load %struct.rq*, %struct.rq** %6, align 8
  %51 = call i32 @update_dl_revised_wakeup(%struct.sched_dl_entity* %49, %struct.rq* %50)
  br label %66

52:                                               ; preds = %43
  %53 = load %struct.rq*, %struct.rq** %6, align 8
  %54 = call i64 @rq_clock(%struct.rq* %53)
  %55 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %56 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %60 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %62 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %3, align 8
  %65 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %48, %52, %18
  ret void
}

declare dso_local %struct.dl_rq* @dl_rq_of_se(%struct.sched_dl_entity*) #1

declare dso_local %struct.rq* @rq_of_dl_rq(%struct.dl_rq*) #1

declare dso_local i64 @dl_time_before(i64, i64) #1

declare dso_local i64 @rq_clock(%struct.rq*) #1

declare dso_local i64 @dl_entity_overflow(%struct.sched_dl_entity*, %struct.sched_dl_entity*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dl_is_implicit(%struct.sched_dl_entity*) #1

declare dso_local i32 @update_dl_revised_wakeup(%struct.sched_dl_entity*, %struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
