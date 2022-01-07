; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_update_eligible.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_update_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i64*, i32 }
%struct.qfq_group = type { i32 }

@IR = common dso_local global i64 0, align 8
@IB = common dso_local global i64 0, align 8
@ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*)* @qfq_update_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_update_eligible(%struct.qfq_sched* %0) #0 {
  %2 = alloca %struct.qfq_sched*, align 8
  %3 = alloca %struct.qfq_group*, align 8
  %4 = alloca i64, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %2, align 8
  %5 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %6 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @IR, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %12 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @IB, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %10, %16
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %1
  %21 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %22 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @ER, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %20
  %29 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_sched* %29, i64 %30)
  store %struct.qfq_group* %31, %struct.qfq_group** %3, align 8
  %32 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %33 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %36 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @qfq_gt(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %42 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %45 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %28
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %49 = call i32 @qfq_make_eligible(%struct.qfq_sched* %48)
  br label %50

50:                                               ; preds = %47, %1
  ret void
}

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_sched*, i64) #1

declare dso_local i64 @qfq_gt(i32, i32) #1

declare dso_local i32 @qfq_make_eligible(%struct.qfq_sched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
