; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___unpack_extended_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___unpack_extended_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }

@L2CAP_EXT_CTRL_REQSEQ = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_REQSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_FINAL = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_FINAL_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_FRAME_TYPE = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_POLL = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_POLL_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SUPERVISE = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SUPER_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SAR = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SAR_SHIFT = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_TXSEQ = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_TXSEQ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.l2cap_ctrl*)* @__unpack_extended_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unpack_extended_control(i32 %0, %struct.l2cap_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_ctrl*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @L2CAP_EXT_CTRL_REQSEQ, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @L2CAP_EXT_CTRL_REQSEQ_SHIFT, align 4
  %9 = ashr i32 %7, %8
  %10 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @L2CAP_EXT_CTRL_FINAL, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @L2CAP_EXT_CTRL_FINAL_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @L2CAP_EXT_CTRL_FRAME_TYPE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  %24 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @L2CAP_EXT_CTRL_POLL, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @L2CAP_EXT_CTRL_POLL_SHIFT, align 4
  %30 = ashr i32 %28, %29
  %31 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %32 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @L2CAP_EXT_CTRL_SUPERVISE, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @L2CAP_EXT_CTRL_SUPER_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %40, i32 0, i32 5
  store i32 0, i32* %41, align 4
  %42 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %42, i32 0, i32 6
  store i32 0, i32* %43, align 4
  br label %65

44:                                               ; preds = %2
  %45 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %45, i32 0, i32 2
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @L2CAP_EXT_CTRL_SAR, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @L2CAP_EXT_CTRL_SAR_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %53 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @L2CAP_EXT_CTRL_TXSEQ, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @L2CAP_EXT_CTRL_TXSEQ_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %62 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %61, i32 0, i32 3
  store i32 0, i32* %62, align 4
  %63 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %64 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %63, i32 0, i32 4
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %44, %23
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
