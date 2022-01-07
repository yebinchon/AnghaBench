; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpuacct.c_cpuacct_cpuusage_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpuacct.c_cpuacct_cpuusage_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuacct = type { i32 }
%struct.cpuacct_usage = type { i64* }
%struct.TYPE_2__ = type { i32 }

@CPUACCT_STAT_NSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cpuacct*, i32, i32)* @cpuacct_cpuusage_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpuacct_cpuusage_read(%struct.cpuacct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpuacct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuacct_usage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cpuacct* %0, %struct.cpuacct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cpuacct*, %struct.cpuacct** %4, align 8
  %11 = getelementptr inbounds %struct.cpuacct, %struct.cpuacct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.cpuacct_usage* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.cpuacct_usage* %14, %struct.cpuacct_usage** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CPUACCT_STAT_NSTATS, align 4
  %17 = icmp ugt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_2__* @cpu_rq(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @raw_spin_lock_irq(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @CPUACCT_STAT_NSTATS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @CPUACCT_STAT_NSTATS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.cpuacct_usage*, %struct.cpuacct_usage** %7, align 8
  %34 = getelementptr inbounds %struct.cpuacct_usage, %struct.cpuacct_usage* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %28

45:                                               ; preds = %28
  br label %54

46:                                               ; preds = %3
  %47 = load %struct.cpuacct_usage*, %struct.cpuacct_usage** %7, align 8
  %48 = getelementptr inbounds %struct.cpuacct_usage, %struct.cpuacct_usage* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %46, %45
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.TYPE_2__* @cpu_rq(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @raw_spin_unlock_irq(i32* %57)
  %59 = load i64, i64* %8, align 8
  ret i64 %59
}

declare dso_local %struct.cpuacct_usage* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local %struct.TYPE_2__* @cpu_rq(i32) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
