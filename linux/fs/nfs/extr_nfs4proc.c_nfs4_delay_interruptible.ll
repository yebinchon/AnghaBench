; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_delay_interruptible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_delay_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @nfs4_delay_interruptible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_delay_interruptible(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  %4 = call i32 (...) @might_sleep()
  %5 = load i64*, i64** %3, align 8
  %6 = call i32 @nfs4_update_delay(i64* %5)
  %7 = call i32 @freezable_schedule_timeout_interruptible(i32 %6)
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @signal_pending(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @current, align 4
  %14 = call i64 @__fatal_signal_pending(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINTR, align 4
  %18 = sub nsw i32 0, %17
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @freezable_schedule_timeout_interruptible(i32) #1

declare dso_local i32 @nfs4_update_delay(i64*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i64 @__fatal_signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
