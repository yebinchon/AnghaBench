; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_futex.c_handle_early_requeue_pi_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_futex.c_handle_early_requeue_pi_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_hash_bucket = type { i32, i32 }
%struct.futex_q = type { i32, i32*, i32 }
%union.futex_key = type { i32 }
%struct.hrtimer_sleeper = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.futex_hash_bucket*, %struct.futex_q*, %union.futex_key*, %struct.hrtimer_sleeper*)* @handle_early_requeue_pi_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_early_requeue_pi_wakeup(%struct.futex_hash_bucket* %0, %struct.futex_q* %1, %union.futex_key* %2, %struct.hrtimer_sleeper* %3) #0 {
  %5 = alloca %struct.futex_hash_bucket*, align 8
  %6 = alloca %struct.futex_q*, align 8
  %7 = alloca %union.futex_key*, align 8
  %8 = alloca %struct.hrtimer_sleeper*, align 8
  %9 = alloca i32, align 4
  store %struct.futex_hash_bucket* %0, %struct.futex_hash_bucket** %5, align 8
  store %struct.futex_q* %1, %struct.futex_q** %6, align 8
  store %union.futex_key* %2, %union.futex_key** %7, align 8
  store %struct.hrtimer_sleeper* %3, %struct.hrtimer_sleeper** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %11 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %10, i32 0, i32 2
  %12 = load %union.futex_key*, %union.futex_key** %7, align 8
  %13 = call i32 @match_futex(i32* %11, %union.futex_key* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %4
  %16 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %17 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %5, align 8
  %22 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %21, i32 0, i32 1
  %23 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %24 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %22, %25
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i1 [ false, %15 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.futex_q*, %struct.futex_q** %6, align 8
  %32 = getelementptr inbounds %struct.futex_q, %struct.futex_q* %31, i32 0, i32 0
  %33 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %5, align 8
  %34 = getelementptr inbounds %struct.futex_hash_bucket, %struct.futex_hash_bucket* %33, i32 0, i32 0
  %35 = call i32 @plist_del(i32* %32, i32* %34)
  %36 = load %struct.futex_hash_bucket*, %struct.futex_hash_bucket** %5, align 8
  %37 = call i32 @hb_waiters_dec(%struct.futex_hash_bucket* %36)
  %38 = load i32, i32* @EWOULDBLOCK, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %8, align 8
  %41 = icmp ne %struct.hrtimer_sleeper* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.hrtimer_sleeper*, %struct.hrtimer_sleeper** %8, align 8
  %44 = getelementptr inbounds %struct.hrtimer_sleeper, %struct.hrtimer_sleeper* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %58

50:                                               ; preds = %42, %27
  %51 = load i32, i32* @current, align 4
  %52 = call i64 @signal_pending(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ERESTARTNOINTR, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %4
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @match_futex(i32*, %union.futex_key*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @plist_del(i32*, i32*) #1

declare dso_local i32 @hb_waiters_dec(%struct.futex_hash_bucket*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
