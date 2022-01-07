; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_do_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_do_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, %struct.canfd_frame* }
%struct.canfd_frame = type { i32 }

@RX_THR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_op*, i32)* @bcm_rx_do_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_rx_do_flush(%struct.bcm_op* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_op*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.canfd_frame*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %7, i32 0, i32 1
  %9 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %10 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %9, i64 %15
  store %struct.canfd_frame* %16, %struct.canfd_frame** %6, align 8
  %17 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %17, i32 0, i32 1
  %19 = load %struct.canfd_frame*, %struct.canfd_frame** %18, align 8
  %20 = icmp ne %struct.canfd_frame* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %23 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RX_THR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load %struct.bcm_op*, %struct.bcm_op** %4, align 8
  %30 = load %struct.canfd_frame*, %struct.canfd_frame** %6, align 8
  %31 = call i32 @bcm_rx_changed(%struct.bcm_op* %29, %struct.canfd_frame* %30)
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @bcm_rx_changed(%struct.bcm_op*, %struct.canfd_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
