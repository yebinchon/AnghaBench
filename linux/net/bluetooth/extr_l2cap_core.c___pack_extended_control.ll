; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___pack_extended_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___pack_extended_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_ctrl = type { i32, i32, i32, i32, i32, i32, i64 }

@L2CAP_EXT_CTRL_REQSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_FINAL_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_POLL_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SUPER_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_FRAME_TYPE = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SAR_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_TXSEQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_ctrl*)* @__pack_extended_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pack_extended_control(%struct.l2cap_ctrl* %0) #0 {
  %2 = alloca %struct.l2cap_ctrl*, align 8
  %3 = alloca i32, align 4
  store %struct.l2cap_ctrl* %0, %struct.l2cap_ctrl** %2, align 8
  %4 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @L2CAP_EXT_CTRL_REQSEQ_SHIFT, align 4
  %8 = shl i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @L2CAP_EXT_CTRL_FINAL_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %1
  %21 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @L2CAP_EXT_CTRL_POLL_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %29 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @L2CAP_EXT_CTRL_SUPER_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @L2CAP_EXT_CTRL_FRAME_TYPE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %53

38:                                               ; preds = %1
  %39 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %40 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L2CAP_EXT_CTRL_SAR_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %2, align 8
  %47 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @L2CAP_EXT_CTRL_TXSEQ_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
