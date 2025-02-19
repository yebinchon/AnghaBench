; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_charge_actual_service.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_charge_actual_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_aggregate = type { i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_aggregate*)* @charge_actual_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charge_actual_service(%struct.qfq_aggregate* %0) #0 {
  %2 = alloca %struct.qfq_aggregate*, align 8
  %3 = alloca i64, align 8
  store %struct.qfq_aggregate* %0, %struct.qfq_aggregate** %2, align 8
  %4 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  %5 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  %8 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  %11 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = call i64 @min(i32 %6, i64 %13)
  store i64 %14, i64* %3, align 8
  %15 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  %16 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  %21 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %17, %24
  %26 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %2, align 8
  %27 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  ret void
}

declare dso_local i64 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
