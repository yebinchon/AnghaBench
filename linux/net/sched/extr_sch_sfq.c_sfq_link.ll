; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_sfq.c_sfq_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfq_sched_data = type { %struct.TYPE_5__*, %struct.sfq_slot* }
%struct.TYPE_5__ = type { i64 }
%struct.sfq_slot = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }

@SFQ_MAX_FLOWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfq_sched_data*, i64)* @sfq_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfq_link(%struct.sfq_sched_data* %0, i64 %1) #0 {
  %3 = alloca %struct.sfq_sched_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sfq_slot*, align 8
  %8 = alloca i32, align 4
  store %struct.sfq_sched_data* %0, %struct.sfq_sched_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %10 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %9, i32 0, i32 1
  %11 = load %struct.sfq_slot*, %struct.sfq_slot** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %11, i64 %12
  store %struct.sfq_slot* %13, %struct.sfq_slot** %7, align 8
  %14 = load %struct.sfq_slot*, %struct.sfq_slot** %7, align 8
  %15 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @SFQ_MAX_FLOWS, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.sfq_slot*, %struct.sfq_slot** %7, align 8
  %31 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.sfq_slot*, %struct.sfq_slot** %7, align 8
  %35 = getelementptr inbounds %struct.sfq_slot, %struct.sfq_slot* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %39 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %37, i64* %44, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call %struct.TYPE_6__* @sfq_dep_head(%struct.sfq_sched_data* %46, i64 %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %45, i64* %49, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @sfq_dep_head(%struct.sfq_sched_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
