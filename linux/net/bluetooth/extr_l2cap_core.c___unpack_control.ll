; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___unpack_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___unpack_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@L2CAP_EXT_CTRL_SIZE = common dso_local global i32 0, align 4
@L2CAP_ENH_CTRL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.sk_buff*)* @__unpack_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unpack_control(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_unaligned_le32(i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @__unpack_extended_control(i32 %14, i32* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @L2CAP_EXT_CTRL_SIZE, align 4
  %21 = call i32 @skb_pull(%struct.sk_buff* %19, i32 %20)
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_unaligned_le16(i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @__unpack_enhanced_control(i32 %26, i32* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* @L2CAP_ENH_CTRL_SIZE, align 4
  %33 = call i32 @skb_pull(%struct.sk_buff* %31, i32 %32)
  br label %34

34:                                               ; preds = %22, %10
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__unpack_extended_control(i32, i32*) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__unpack_enhanced_control(i32, i32*) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
