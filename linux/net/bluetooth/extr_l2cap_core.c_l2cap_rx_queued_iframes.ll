; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_queued_iframes.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_queued_iframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@CONN_LOCAL_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Searching for skb with txseq %d (queue len %d)\00", align 1
@L2CAP_RX_STATE_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*)* @l2cap_rx_queued_iframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_rx_queued_iframes(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %6 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %5)
  br label %7

7:                                                ; preds = %54, %1
  %8 = load i32, i32* @CONN_LOCAL_BUSY, align 4
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 3
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %55

14:                                               ; preds = %7
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.l2cap_chan*
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 1
  %22 = call i32 @skb_queue_len(i32* %21)
  %23 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %19, i32 %22)
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 1
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32* %25, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  br label %55

33:                                               ; preds = %14
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 1
  %37 = call i32 @skb_unlink(%struct.sk_buff* %34, i32* %36)
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__next_seq(%struct.l2cap_chan* %38, i32 %41)
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @l2cap_reassemble_sdu(%struct.l2cap_chan* %45, %struct.sk_buff* %46, i32* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  br label %55

54:                                               ; preds = %33
  br label %7

55:                                               ; preds = %53, %32, %7
  %56 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %57 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %56, i32 0, i32 1
  %58 = call i64 @skb_queue_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @L2CAP_RX_STATE_RECV, align 4
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %63 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %65 = call i32 @l2cap_send_ack(%struct.l2cap_chan* %64)
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__next_seq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_reassemble_sdu(%struct.l2cap_chan*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @l2cap_send_ack(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
