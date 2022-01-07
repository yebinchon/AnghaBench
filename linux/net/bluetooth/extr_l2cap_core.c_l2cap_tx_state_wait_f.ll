; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_tx_state_wait_f.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_tx_state_wait_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.l2cap_ctrl = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"chan %p, control %p, skbs %p, event %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Enter LOCAL_BUSY\00", align 1
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_SREJ_SENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Exit LOCAL_BUSY\00", align 1
@CONN_RNR_SENT = common dso_local global i32 0, align 4
@L2CAP_SUPER_RR = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_WAIT_F = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_XMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"recv fbit tx_state 0x2.2%x\00", align 1
@ECONNABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff_head*, i32)* @l2cap_tx_state_wait_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_tx_state_wait_f(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff_head* %2, i32 %3) #0 {
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
  switch i32 %15, label %142 [
    i32 134, label %16
    i32 131, label %31
    i32 132, label %48
    i32 128, label %79
    i32 129, label %85
    i32 133, label %114
    i32 130, label %115
  ]

16:                                               ; preds = %4
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %23 = call i32* @skb_peek(%struct.sk_buff_head* %22)
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 8
  store i32* %23, i32** %25, align 8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 7
  %30 = call i32 @skb_queue_splice_tail_init(%struct.sk_buff_head* %27, i32* %29)
  br label %143

31:                                               ; preds = %4
  %32 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 5
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @L2CAP_RX_STATE_SREJ_SENT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %44 = call i32 @l2cap_abort_rx_srej_sent(%struct.l2cap_chan* %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %47 = call i32 @l2cap_send_ack(%struct.l2cap_chan* %46)
  br label %143

48:                                               ; preds = %4
  %49 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 5
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @CONN_RNR_SENT, align 4
  %55 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %56 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %55, i32 0, i32 5
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %48
  %60 = call i32 @memset(%struct.l2cap_ctrl* %9, i32 0, i32 20)
  %61 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* @L2CAP_SUPER_RR, align 4
  %63 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %9, i32 0, i32 3
  store i32 %67, i32* %68, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %70 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %69, %struct.l2cap_ctrl* %9)
  %71 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %72 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %74 = call i32 @__set_monitor_timer(%struct.l2cap_chan* %73)
  %75 = load i32, i32* @L2CAP_TX_STATE_WAIT_F, align 4
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %77 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %59, %48
  br label %143

79:                                               ; preds = %4
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %81 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %82 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @l2cap_process_reqseq(%struct.l2cap_chan* %80, i32 %83)
  br label %85

85:                                               ; preds = %4, %79
  %86 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %87 = icmp ne %struct.l2cap_ctrl* %86, null
  br i1 %87, label %88, label %113

88:                                               ; preds = %85
  %89 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %90 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %88
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %95 = call i32 @__clear_monitor_timer(%struct.l2cap_chan* %94)
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %97 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %102 = call i32 @__set_retrans_timer(%struct.l2cap_chan* %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %105 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load i32, i32* @L2CAP_TX_STATE_XMIT, align 4
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %108 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %110 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %103, %88, %85
  br label %143

114:                                              ; preds = %4
  br label %143

115:                                              ; preds = %4
  %116 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %117 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %122 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %125 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %120, %115
  %129 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %130 = call i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan* %129, i32 1)
  %131 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %132 = call i32 @__set_monitor_timer(%struct.l2cap_chan* %131)
  %133 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %134 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %141

137:                                              ; preds = %120
  %138 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %139 = load i32, i32* @ECONNABORTED, align 4
  %140 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %128
  br label %143

142:                                              ; preds = %4
  br label %143

143:                                              ; preds = %142, %141, %114, %113, %78, %45, %26
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_queue_splice_tail_init(%struct.sk_buff_head*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_abort_rx_srej_sent(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_ack(%struct.l2cap_chan*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @__set_monitor_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_process_reqseq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__clear_monitor_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @__set_retrans_timer(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_rr_or_rnr(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
