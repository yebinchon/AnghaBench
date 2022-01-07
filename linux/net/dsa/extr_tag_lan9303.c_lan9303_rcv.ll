; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_lan9303.c_lan9303_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_lan9303.c_lan9303_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.packet_type = type { i32 }

@LAN9303_TAG_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Dropping packet, cannot pull\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Dropping packet due to invalid VLAN marker\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Dropping packet due to invalid source port\0A\00", align 1
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@LAN9303_TAG_RX_TRAPPED_TO_CPU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)* @lan9303_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @lan9303_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i64, i64* @LAN9303_TAG_LEN, align 8
  %13 = call i32 @pskb_may_pull(%struct.sk_buff* %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = call i32 @dev_warn_ratelimited(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i64*
  store i64* %29, i64** %8, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ETH_P_8021Q, align 4
  %34 = call i64 @htons(i32 %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = call i32 @dev_warn_ratelimited(i32* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %90

40:                                               ; preds = %23
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ntohs(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = and i64 %45, 3
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @dsa_master_find_slave(%struct.net_device* %48, i32 0, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %40
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = call i32 @dev_warn_ratelimited(i32* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %90

61:                                               ; preds = %40
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = call i32 @skb_pull_rcsum(%struct.sk_buff* %62, i32 4)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @ETH_HLEN, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @ETH_HLEN, align 8
  %75 = load i64, i64* @LAN9303_TAG_LEN, align 8
  %76 = add nsw i64 %74, %75
  %77 = sub nsw i64 %73, %76
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = mul nsw i32 2, %78
  %80 = call i32 @memmove(i64 %69, i64 %77, i32 %79)
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @LAN9303_TAG_RX_TRAPPED_TO_CPU, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %89, %struct.sk_buff** %4, align 8
  br label %90

90:                                               ; preds = %61, %57, %36, %19
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %91
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_warn_ratelimited(i32*, i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @dsa_master_find_slave(%struct.net_device*, i32, i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
