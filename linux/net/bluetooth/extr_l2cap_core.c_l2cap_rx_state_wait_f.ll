; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_wait_f.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx_state_wait_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_10__*, %struct.TYPE_7__*, i64, i32, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.l2cap_ctrl = type { i32, i32 }
%struct.sk_buff = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@L2CAP_RX_STATE_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32)* @l2cap_rx_state_wait_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_rx_state_wait_f(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2, i32 %3) #0 {
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
  %11 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %12 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EPROTO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %95

18:                                               ; preds = %4
  %19 = load i32, i32* @CONN_REMOTE_BUSY, align 4
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 7
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @L2CAP_RX_STATE_RECV, align 4
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %27 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %28 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @l2cap_process_reqseq(%struct.l2cap_chan* %26, i32 %29)
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %32 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %31, i32 0, i32 5
  %33 = call i32 @skb_queue_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %18
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 5
  %38 = call i32* @skb_peek(i32* %37)
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  br label %44

41:                                               ; preds = %18
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %46 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %44
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %65 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 8
  br label %82

68:                                               ; preds = %44
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %70 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %79 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 8
  br label %82

82:                                               ; preds = %68, %56
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %84 = call i32 @l2cap_resegment(%struct.l2cap_chan* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %89 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %7, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @l2cap_rx_state_recv(%struct.l2cap_chan* %88, %struct.l2cap_ctrl* %89, %struct.sk_buff* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %15
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @l2cap_process_reqseq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32* @skb_peek(i32*) #1

declare dso_local i32 @l2cap_resegment(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_rx_state_recv(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
