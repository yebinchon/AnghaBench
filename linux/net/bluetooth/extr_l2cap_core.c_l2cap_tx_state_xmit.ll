; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_tx_state_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_tx_state_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i8*, i32, i32, i32, i32, i32* }
%struct.l2cap_ctrl = type { i32, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"chan %p, control %p, skbs %p, event %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Enter LOCAL_BUSY\00", align 1
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_SREJ_SENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Exit LOCAL_BUSY\00", align 1
@CONN_RNR_SENT = common dso_local global i32 0, align 4
@L2CAP_SUPER_RR = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_WAIT_F = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff_head*, i32)* @l2cap_tx_state_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_tx_state_xmit(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff_head* %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2cap_ctrl, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %11 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %12 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %10, %struct.l2cap_ctrl* %11, %struct.sk_buff_head* %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %110 [
    i32 134, label %16
    i32 131, label %33
    i32 132, label %50
    i32 129, label %81
    i32 133, label %87
    i32 128, label %99
    i32 130, label %109
  ]

16:                                               ; preds = %4
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %23 = call i32* @skb_peek(%struct.sk_buff_head* %22)
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 6
  store i32* %23, i32** %25, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 5
  %30 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %27, i32* %29)
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %32 = call i32 @l2cap_ertm_send(%struct.l2cap_chan* %31)
  br label %111

33:                                               ; preds = %4
  %34 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 3
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @L2CAP_RX_STATE_SREJ_SENT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %46 = call i32 @l2cap_abort_rx_srej_sent(%struct.l2cap_chan* %45)
  br label %47

47:                                               ; preds = %44, %33
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %49 = call i32 @l2cap_send_ack(%struct.l2cap_chan* %48)
  br label %111

50:                                               ; preds = %4
  %51 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 3
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @CONN_RNR_SENT, align 4
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 3
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %50
  %62 = call i32 @memset(%struct.l2cap_ctrl* %9, i32 0, i32 16)
  %63 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @L2CAP_SUPER_RR, align 4
  %65 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %72 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %71, %struct.l2cap_ctrl* %9)
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %74 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %76 = call i32 @__set_monitor_timer(%struct.l2cap_chan* %75)
  %77 = load i8*, i8** @L2CAP_TX_STATE_WAIT_F, align 8
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %79 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %61, %50
  br label %111

81:                                               ; preds = %4
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %83 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %84 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @l2cap_process_reqseq(%struct.l2cap_chan* %82, i32 %85)
  br label %111

87:                                               ; preds = %4
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %89 = call i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan* %88, i32 1)
  %90 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %91 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %93 = call i32 @__set_monitor_timer(%struct.l2cap_chan* %92)
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %95 = call i32 @__clear_ack_timer(%struct.l2cap_chan* %94)
  %96 = load i8*, i8** @L2CAP_TX_STATE_WAIT_F, align 8
  %97 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %98 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  br label %111

99:                                               ; preds = %4
  %100 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %101 = call i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan* %100, i32 1)
  %102 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %103 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %105 = call i32 @__set_monitor_timer(%struct.l2cap_chan* %104)
  %106 = load i8*, i8** @L2CAP_TX_STATE_WAIT_F, align 8
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %108 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  br label %111

109:                                              ; preds = %4
  br label %111

110:                                              ; preds = %4
  br label %111

111:                                              ; preds = %110, %109, %99, %87, %81, %80, %47, %26
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, i32*) #1

declare dso_local i32 @l2cap_ertm_send(%struct.l2cap_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_abort_rx_srej_sent(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_ack(%struct.l2cap_chan*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @__set_monitor_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_process_reqseq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__clear_ack_timer(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
