; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_update_and_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_update_and_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i64, i32, i32, i32 }
%struct.canfd_frame = type { i32 }

@RX_RECV = common dso_local global i32 0, align 4
@RX_THR = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*, %struct.canfd_frame*, %struct.canfd_frame*)* @bcm_rx_update_and_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_update_and_send(%struct.bcm_op* %0, %struct.canfd_frame* %1, %struct.canfd_frame* %2) #0 {
  %4 = alloca %struct.bcm_op*, align 8
  %5 = alloca %struct.canfd_frame*, align 8
  %6 = alloca %struct.canfd_frame*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %4, align 8
  store %struct.canfd_frame* %1, %struct.canfd_frame** %5, align 8
  store %struct.canfd_frame* %2, %struct.canfd_frame** %6, align 8
  %7 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %8 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %9 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %10 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @memcpy(%struct.canfd_frame* %7, %struct.canfd_frame* %8, i32 %11)
  %13 = load i32, i32* @RX_RECV, align 4
  %14 = load i32, i32* @RX_THR, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %17 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %26 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %27 = call i32 @bcm_rx_changed(%struct.bcm_op* %25, %struct.canfd_frame* %26)
  br label %71

28:                                               ; preds = %3
  %29 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %30 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %29, i32 0, i32 2
  %31 = call i64 @hrtimer_active(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %71

34:                                               ; preds = %28
  %35 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %64

40:                                               ; preds = %34
  %41 = call i64 (...) @ktime_get()
  %42 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %43 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @ktime_us_delta(i64 %41, i64 %44)
  %46 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %47 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ktime_to_us(i32 %48)
  %50 = icmp slt i64 %45, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %40
  %52 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %53 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %52, i32 0, i32 2
  %54 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %58 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ktime_add(i64 %56, i32 %59)
  %61 = load i32, i32* @HRTIMER_MODE_ABS_SOFT, align 4
  %62 = call i32 @hrtimer_start(i32* %53, i32 %60, i32 %61)
  br label %71

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %66 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %67 = call i32 @bcm_rx_changed(%struct.bcm_op* %65, %struct.canfd_frame* %66)
  %68 = call i64 (...) @ktime_get()
  %69 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %70 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %51, %33, %24
  ret void
}

declare dso_local i32 @memcpy(%struct.canfd_frame*, %struct.canfd_frame*, i32) #1

declare dso_local i32 @bcm_rx_changed(%struct.bcm_op*, %struct.canfd_frame*) #1

declare dso_local i64 @hrtimer_active(i32*) #1

declare dso_local i64 @ktime_us_delta(i64, i64) #1

declare dso_local i64 @ktime_get(...) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ktime_add(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
