; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"SDU reassemble complete: chan %p skb->len %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @l2cap_le_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_recv(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %6, i32 %9)
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.l2cap_chan*, %struct.sk_buff*)**
  %16 = load i32 (%struct.l2cap_chan*, %struct.sk_buff*)*, i32 (%struct.l2cap_chan*, %struct.sk_buff*)** %15, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 %16(%struct.l2cap_chan* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %21 = call i32 @l2cap_chan_le_send_credits(%struct.l2cap_chan* %20)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_le_send_credits(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
