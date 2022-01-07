; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_qca.c_qca_tag_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_qca.c_qca_tag_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.packet_type = type { i32 }

@QCA_HDR_LEN = common dso_local global i32 0, align 4
@QCA_HDR_RECV_VERSION_MASK = common dso_local global i32 0, align 4
@QCA_HDR_RECV_VERSION_S = common dso_local global i32 0, align 4
@QCA_HDR_VERSION = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@QCA_HDR_RECV_SOURCE_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*)* @qca_tag_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @qca_tag_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @QCA_HDR_LEN, align 4
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %78

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohs(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @QCA_HDR_RECV_VERSION_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @QCA_HDR_RECV_VERSION_S, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @QCA_HDR_VERSION, align 4
  %38 = icmp ne i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %78

43:                                               ; preds = %21
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i32, i32* @QCA_HDR_LEN, align 4
  %46 = call i32 @skb_pull_rcsum(%struct.sk_buff* %44, i32 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ETH_HLEN, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETH_HLEN, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32, i32* @QCA_HDR_LEN, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @ETH_HLEN, align 4
  %60 = load i32, i32* @QCA_HDR_LEN, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @memmove(i32 %51, i32 %58, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @QCA_HDR_RECV_SOURCE_PORT_MASK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dsa_master_find_slave(%struct.net_device* %66, i32 0, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %43
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %78

76:                                               ; preds = %43
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %77, %struct.sk_buff** %4, align 8
  br label %78

78:                                               ; preds = %76, %75, %42, %20
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @dsa_master_find_slave(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
