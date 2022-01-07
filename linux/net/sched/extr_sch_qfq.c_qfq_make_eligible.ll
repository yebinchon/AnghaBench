; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_make_eligible.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_make_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i64, i64, i64 }

@IR = common dso_local global i32 0, align 4
@ER = common dso_local global i32 0, align 4
@IB = common dso_local global i32 0, align 4
@EB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*)* @qfq_make_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_make_eligible(%struct.qfq_sched* %0) #0 {
  %2 = alloca %struct.qfq_sched*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %2, align 8
  %7 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %8 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %11 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = lshr i64 %9, %12
  store i64 %13, i64* %3, align 8
  %14 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %15 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %18 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = lshr i64 %16, %19
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = xor i64 %25, %26
  %28 = call i32 @fls(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 31
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i64 -1, i64* %5, align 8
  br label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = sub i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %37

37:                                               ; preds = %32, %31
  %38 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* @IR, align 4
  %41 = load i32, i32* @ER, align 4
  %42 = call i32 @qfq_move_groups(%struct.qfq_sched* %38, i64 %39, i32 %40, i32 %41)
  %43 = load %struct.qfq_sched*, %struct.qfq_sched** %2, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* @IB, align 4
  %46 = load i32, i32* @EB, align 4
  %47 = call i32 @qfq_move_groups(%struct.qfq_sched* %43, i64 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_sched*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
