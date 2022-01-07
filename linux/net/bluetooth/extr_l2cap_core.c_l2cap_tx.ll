; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.l2cap_ctrl = type { i32 }
%struct.sk_buff_head = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"chan %p, control %p, skbs %p, event %d, state %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff_head*, i32)* @l2cap_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_tx(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff_head* %2, i32 %3) #0 {
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.l2cap_ctrl*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %5, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %6, align 8
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %10 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %11 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %9, %struct.l2cap_ctrl* %10, %struct.sk_buff_head* %11, i32 %12, i32 %15)
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 129, label %26
  ]

20:                                               ; preds = %4
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %22 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %23 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @l2cap_tx_state_xmit(%struct.l2cap_chan* %21, %struct.l2cap_ctrl* %22, %struct.sk_buff_head* %23, i32 %24)
  br label %33

26:                                               ; preds = %4
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %28 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %6, align 8
  %29 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @l2cap_tx_state_wait_f(%struct.l2cap_chan* %27, %struct.l2cap_ctrl* %28, %struct.sk_buff_head* %29, i32 %30)
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %26, %20
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff_head*, i32, i32) #1

declare dso_local i32 @l2cap_tx_state_xmit(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff_head*, i32) #1

declare dso_local i32 @l2cap_tx_state_wait_f(%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
