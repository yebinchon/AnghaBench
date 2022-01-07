; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_fqs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_fqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@.str = private unnamed_addr constant [29 x i8] c"rcu_torture_fqs task started\00", align 1
@jiffies = common dso_local global i64 0, align 8
@fqs_stutter = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@fqs_duration = common dso_local global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@fqs_holdoff = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"rcu_torture_fqs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_fqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_fqs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %50, %1
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @fqs_stutter, align 8
  %9 = load i64, i64* @HZ, align 8
  %10 = mul i64 %8, %9
  %11 = add i64 %7, %10
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %23, %6
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @ULONG_CMP_LT(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = call i32 (...) @kthread_should_stop()
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @schedule_timeout_interruptible(i32 1)
  br label %12

25:                                               ; preds = %21
  %26 = load i32, i32* @fqs_duration, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %36, %25
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 (...) @kthread_should_stop()
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %36, label %48

36:                                               ; preds = %34
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = call i32 (...) %39()
  %41 = load i64, i64* @fqs_holdoff, align 8
  %42 = call i32 @udelay(i64 %41)
  %43 = load i64, i64* @fqs_holdoff, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %27

48:                                               ; preds = %34
  %49 = call i32 @stutter_wait(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48
  %51 = call i32 (...) @torture_must_stop()
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %6, label %54

54:                                               ; preds = %50
  %55 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @stutter_wait(i8*) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
