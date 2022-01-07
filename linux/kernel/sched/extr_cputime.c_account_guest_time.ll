; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cputime.c_account_guest_time.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cputime.c_account_guest_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.task_struct = type { i32, i32 }

@kcpustat_this_cpu = common dso_local global %struct.TYPE_2__* null, align 8
@CPUTIME_NICE = common dso_local global i64 0, align 8
@CPUTIME_GUEST_NICE = common dso_local global i64 0, align 8
@CPUTIME_USER = common dso_local global i64 0, align 8
@CPUTIME_GUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_guest_time(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kcpustat_this_cpu, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  store i64* %8, i64** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @account_group_user_time(%struct.task_struct* %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call i64 @task_nice(%struct.task_struct* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load i64, i64* %4, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* @CPUTIME_NICE, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, %30
  store i64 %35, i64* %33, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* @CPUTIME_GUEST_NICE, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %36
  store i64 %41, i64* %39, align 8
  br label %55

42:                                               ; preds = %2
  %43 = load i64, i64* %4, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = load i64, i64* @CPUTIME_USER, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %43
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = load i64, i64* @CPUTIME_GUEST, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %49
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %42, %29
  ret void
}

declare dso_local i32 @account_group_user_time(%struct.task_struct*, i64) #1

declare dso_local i64 @task_nice(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
