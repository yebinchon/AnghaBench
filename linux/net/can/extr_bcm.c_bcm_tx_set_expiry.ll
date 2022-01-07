; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_tx_set_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_tx_set_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i64, i64, i64 }
%struct.hrtimer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_op*, %struct.hrtimer*)* @bcm_tx_set_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_tx_set_expiry(%struct.bcm_op* %0, %struct.hrtimer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_op*, align 8
  %5 = alloca %struct.hrtimer*, align 8
  %6 = alloca i64, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %4, align 8
  store %struct.hrtimer* %1, %struct.hrtimer** %5, align 8
  %7 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %13 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  br label %31

20:                                               ; preds = %11, %2
  %21 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %22 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %27 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %37

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.hrtimer*, %struct.hrtimer** %5, align 8
  %33 = call i32 (...) @ktime_get()
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @ktime_add(i32 %33, i64 %34)
  %36 = call i32 @hrtimer_set_expires(%struct.hrtimer* %32, i32 %35)
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @hrtimer_set_expires(%struct.hrtimer*, i32) #1

declare dso_local i32 @ktime_add(i32, i64) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
