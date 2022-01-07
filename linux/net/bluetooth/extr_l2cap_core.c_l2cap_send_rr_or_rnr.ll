; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_rr_or_rnr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_rr_or_rnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32 }
%struct.l2cap_ctrl = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"chan %p, poll %d\00", align 1
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_SUPER_RNR = common dso_local global i32 0, align 4
@L2CAP_SUPER_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_send_rr_or_rnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_rr_or_rnr(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_ctrl, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %6, i32 %7)
  %9 = call i32 @memset(%struct.l2cap_ctrl* %5, i32 0, i32 16)
  %10 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @L2CAP_SUPER_RNR, align 4
  %20 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @L2CAP_SUPER_RR, align 4
  %23 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %30 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %29, %struct.l2cap_ctrl* %5)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
