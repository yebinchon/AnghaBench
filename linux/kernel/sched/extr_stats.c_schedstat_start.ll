; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_stats.c_schedstat_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_stats.c_schedstat_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i64*)* @schedstat_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @schedstat_start(%struct.seq_file* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = sub i64 %18, 1
  %20 = load i32, i32* @cpu_online_mask, align 4
  %21 = call i64 @cpumask_next(i64 %19, i32 %20)
  store i64 %21, i64* %6, align 8
  br label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @cpu_online_mask, align 4
  %24 = call i64 @cpumask_first(i32 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @nr_cpu_ids, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %33, 2
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %3, align 8
  br label %37

36:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %37

37:                                               ; preds = %36, %32, %11
  %38 = load i8*, i8** %3, align 8
  ret i8* %38
}

declare dso_local i64 @cpumask_next(i64, i32) #1

declare dso_local i64 @cpumask_first(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
