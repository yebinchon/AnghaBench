; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___pack_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___pack_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.l2cap_ctrl = type { i32 }
%struct.sk_buff = type { i64 }

@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*, %struct.sk_buff*)* @__pack_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pack_control(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.l2cap_ctrl*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %14 = call i32 @__pack_extended_control(%struct.l2cap_ctrl* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @put_unaligned_le32(i32 %14, i64 %19)
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %5, align 8
  %23 = call i32 @__pack_enhanced_control(%struct.l2cap_ctrl* %22)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @put_unaligned_le16(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @put_unaligned_le32(i32, i64) #1

declare dso_local i32 @__pack_extended_control(%struct.l2cap_ctrl*) #1

declare dso_local i32 @put_unaligned_le16(i32, i64) #1

declare dso_local i32 @__pack_enhanced_control(%struct.l2cap_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
