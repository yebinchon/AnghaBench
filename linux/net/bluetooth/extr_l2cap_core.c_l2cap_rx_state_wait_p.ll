; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_wait_p.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_wait_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i64, i32, i32*, i32 }
%struct.l2cap_ctrl = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"chan %p, control %p, skb %p, event %d\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@L2CAP_EV_RECV_IFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32)* @l2cap_rx_state_wait_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_rx_state_wait_p(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.l2cap_ctrl*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %6, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %12 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %11, %struct.l2cap_ctrl* %12, %struct.sk_buff* %13, i32 %14)
  %16 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %17 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EPROTO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %4
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %25 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %26 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @l2cap_process_reqseq(%struct.l2cap_chan* %24, i32 %27)
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 4
  %31 = call i32 @skb_queue_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %23
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 4
  %36 = call i32* @skb_peek(i32* %35)
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  br label %42

39:                                               ; preds = %23
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %44 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %51 = call i32 @l2cap_finish_move(%struct.l2cap_chan* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %74

56:                                               ; preds = %42
  %57 = load i32, i32* @CONN_SEND_FBIT, align 4
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %59 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %62 = call i32 @l2cap_send_i_or_rr_or_rnr(%struct.l2cap_chan* %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @L2CAP_EV_RECV_IFRAME, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @EPROTO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %56
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %71 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @l2cap_rx_state_recv(%struct.l2cap_chan* %70, %struct.l2cap_ctrl* %71, i32* null, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %66, %54, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_process_reqseq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local i32 @l2cap_finish_move(%struct.l2cap_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_send_i_or_rr_or_rnr(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_rx_state_recv(%struct.l2cap_chan*, %struct.l2cap_ctrl*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
