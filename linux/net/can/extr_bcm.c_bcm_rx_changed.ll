; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_changed.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.canfd_frame = type { i32 }
%struct.bcm_msg_head = type { i32, i32, i32, i32, i32, i32, i32 }

@ULONG_MAX = common dso_local global i32 0, align 4
@BCM_CAN_FLAGS_MASK = common dso_local global i32 0, align 4
@RX_RECV = common dso_local global i32 0, align 4
@RX_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*, %struct.canfd_frame*)* @bcm_rx_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_changed(%struct.bcm_op* %0, %struct.canfd_frame* %1) #0 {
  %3 = alloca %struct.bcm_op*, align 8
  %4 = alloca %struct.canfd_frame*, align 8
  %5 = alloca %struct.bcm_msg_head, align 4
  store %struct.bcm_op* %0, %struct.bcm_op** %3, align 8
  store %struct.canfd_frame* %1, %struct.canfd_frame** %4, align 8
  %6 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %7 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ULONG_MAX, align 4
  %14 = sdiv i32 %13, 100
  %15 = icmp sgt i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %20 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @BCM_CAN_FLAGS_MASK, align 4
  %23 = load i32, i32* @RX_RECV, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %26 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @RX_CHANGED, align 4
  %30 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %32 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %36 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %40 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %44 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %48 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.bcm_msg_head, %struct.bcm_msg_head* %5, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.bcm_op*, %struct.bcm_op** %3, align 8
  %53 = load %struct.canfd_frame*, %struct.canfd_frame** %4, align 8
  %54 = call i32 @bcm_send_to_user(%struct.bcm_op* %52, %struct.bcm_msg_head* %5, %struct.canfd_frame* %53, i32 1)
  ret void
}

declare dso_local i32 @bcm_send_to_user(%struct.bcm_op*, %struct.bcm_msg_head*, %struct.canfd_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
