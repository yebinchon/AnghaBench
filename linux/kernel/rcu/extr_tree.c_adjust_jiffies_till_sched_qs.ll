; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_adjust_jiffies_till_sched_qs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_adjust_jiffies_till_sched_qs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies_till_sched_qs = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@jiffies_to_sched_qs = common dso_local global i32 0, align 4
@jiffies_till_first_fqs = common dso_local global i32 0, align 4
@jiffies_till_next_fqs = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@RCU_JIFFIES_FQS_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"RCU calculated value of scheduler-enlistment delay is %ld jiffies.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adjust_jiffies_till_sched_qs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_jiffies_till_sched_qs() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @jiffies_till_sched_qs, align 8
  %3 = load i64, i64* @ULONG_MAX, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @jiffies_to_sched_qs, align 4
  %7 = load i64, i64* @jiffies_till_sched_qs, align 8
  %8 = call i32 @WRITE_ONCE(i32 %6, i64 %7)
  br label %40

9:                                                ; preds = %0
  %10 = load i32, i32* @jiffies_till_first_fqs, align 4
  %11 = call i32 @READ_ONCE(i32 %10)
  %12 = load i32, i32* @jiffies_till_next_fqs, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  %14 = mul nsw i32 2, %13
  %15 = add nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %18, 10
  %20 = load i32, i32* @nr_cpu_ids, align 4
  %21 = load i32, i32* @RCU_JIFFIES_FQS_DIV, align 4
  %22 = sdiv i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %17, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %9
  %27 = load i32, i32* @HZ, align 4
  %28 = sdiv i32 %27, 10
  %29 = load i32, i32* @nr_cpu_ids, align 4
  %30 = load i32, i32* @RCU_JIFFIES_FQS_DIV, align 4
  %31 = sdiv i32 %29, %30
  %32 = add nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %1, align 8
  br label %34

34:                                               ; preds = %26, %9
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @jiffies_to_sched_qs, align 4
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @WRITE_ONCE(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
