; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32 }
%struct.l2cap_ctrl = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"chan %p, control %p, skb %p, event %d, state %d\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Invalid reqseq %d (next_tx_seq %d, expected_ack_seq %d\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32)* @l2cap_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_rx(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %11 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = ptrtoint %struct.sk_buff* %12 to i32
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, %struct.l2cap_chan*, %struct.l2cap_ctrl*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %10, %struct.l2cap_ctrl* %11, i32 %13, i32 %14, i32 %17)
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %20 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %21 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @__valid_reqseq(%struct.l2cap_chan* %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %4
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %53 [
    i32 131, label %29
    i32 130, label %35
    i32 128, label %41
    i32 129, label %47
  ]

29:                                               ; preds = %25
  %30 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %31 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @l2cap_rx_state_recv(%struct.l2cap_chan* %30, %struct.l2cap_ctrl* %31, %struct.sk_buff* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %54

35:                                               ; preds = %25
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %37 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @l2cap_rx_state_srej_sent(%struct.l2cap_chan* %36, %struct.l2cap_ctrl* %37, %struct.sk_buff* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %54

41:                                               ; preds = %25
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %43 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @l2cap_rx_state_wait_p(%struct.l2cap_chan* %42, %struct.l2cap_ctrl* %43, %struct.sk_buff* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %54

47:                                               ; preds = %25
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %49 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @l2cap_rx_state_wait_f(%struct.l2cap_chan* %48, %struct.l2cap_ctrl* %49, %struct.sk_buff* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %54

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %47, %41, %35, %29
  br label %73

55:                                               ; preds = %4
  %56 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %57 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to %struct.l2cap_chan*
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %62 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to %struct.l2cap_ctrl*
  %66 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %67 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, %struct.l2cap_chan*, %struct.l2cap_ctrl*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %60, %struct.l2cap_ctrl* %65, i32 %68)
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %71 = load i32, i32* @ECONNRESET, align 4
  %72 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %70, i32 %71)
  br label %73

73:                                               ; preds = %55, %54
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.l2cap_ctrl*, i32, ...) #1

declare dso_local i64 @__valid_reqseq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_rx_state_recv(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_rx_state_srej_sent(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_rx_state_wait_p(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_rx_state_wait_f(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
