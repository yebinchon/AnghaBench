; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_lan9303.c_lan9303_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_lan9303.c_lan9303_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i32 }

@LAN9303_TAG_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Cannot make room for the special tag. Dropping packet\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@LAN9303_TAG_TX_USE_ALR = common dso_local global i32 0, align 4
@LAN9303_TAG_TX_STP_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @lan9303_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @lan9303_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %8)
  store %struct.dsa_port* %9, %struct.dsa_port** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i64, i64* @LAN9303_TAG_LEN, align 8
  %12 = call i64 @skb_cow_head(%struct.sk_buff* %10, i64 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i64, i64* @LAN9303_TAG_LEN, align 8
  %21 = call i32 @skb_push(%struct.sk_buff* %19, i64 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LAN9303_TAG_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = mul nsw i32 2, %30
  %32 = call i32 @memmove(i64 %24, i64 %29, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = mul nsw i32 2, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %7, align 8
  %41 = load i32, i32* @ETH_P_8021Q, align 4
  %42 = call i32 @htons(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @lan9303_xmit_use_arl(%struct.dsa_port* %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %18
  %52 = load i32, i32* @LAN9303_TAG_TX_USE_ALR, align 4
  br label %59

53:                                               ; preds = %18
  %54 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %55 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LAN9303_TAG_TX_STP_OVERRIDE, align 4
  %58 = or i32 %56, %57
  br label %59

59:                                               ; preds = %53, %51
  %60 = phi i32 [ %52, %51 ], [ %58, %53 ]
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %3, align 8
  br label %70

70:                                               ; preds = %59, %14
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %71
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @lan9303_xmit_use_arl(%struct.dsa_port*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
