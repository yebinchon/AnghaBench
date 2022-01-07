; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_check_fcs.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_check_fcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32 }
%struct.sk_buff = type { i64, i64 }

@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@L2CAP_EXT_HDR_SIZE = common dso_local global i32 0, align 4
@L2CAP_ENH_HDR_SIZE = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@L2CAP_FCS_SIZE = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff*)* @l2cap_check_fcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_check_fcs(%struct.l2cap_chan* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @L2CAP_EXT_HDR_SIZE, align 4
  store i32 %15, i32* %8, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @L2CAP_ENH_HDR_SIZE, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @L2CAP_FCS_SIZE, align 8
  %30 = sub nsw i64 %28, %29
  %31 = call i32 @skb_trim(%struct.sk_buff* %25, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i64 @get_unaligned_le16(i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i64 @crc16(i32 0, i64 %45, i64 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %24
  %57 = load i32, i32* @EBADMSG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %59, %18
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i64 @get_unaligned_le16(i64) #1

declare dso_local i64 @crc16(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
