; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_tag_gswip.c_gswip_tag_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_tag_gswip.c_gswip_tag_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.net_device = type { i32 }
%struct.dsa_port = type { i64 }

@GSWIP_TX_HEADER_LEN = common dso_local global i32 0, align 4
@GSWIP_TX_SLPID_CPU = common dso_local global i32 0, align 4
@GSWIP_TX_DPID_ELAN = common dso_local global i32 0, align 4
@GSWIP_TX_PORT_MAP_EN = common dso_local global i32 0, align 4
@GSWIP_TX_PORT_MAP_SEL = common dso_local global i32 0, align 4
@GSWIP_TX_PORT_MAP_SHIFT = common dso_local global i64 0, align 8
@GSWIP_TX_PORT_MAP_MASK = common dso_local global i32 0, align 4
@GSWIP_TX_DPID_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @gswip_tag_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @gswip_tag_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %9)
  store %struct.dsa_port* %10, %struct.dsa_port** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load i32, i32* @GSWIP_TX_HEADER_LEN, align 4
  %13 = call i32 @skb_cow_head(%struct.sk_buff* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @GSWIP_TX_HEADER_LEN, align 4
  %20 = call i32 @skb_push(%struct.sk_buff* %18, i32 %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* @GSWIP_TX_SLPID_CPU, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @GSWIP_TX_DPID_ELAN, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @GSWIP_TX_PORT_MAP_EN, align 4
  %31 = load i32, i32* @GSWIP_TX_PORT_MAP_SEL, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dsa_port*, %struct.dsa_port** %6, align 8
  %36 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GSWIP_TX_PORT_MAP_SHIFT, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @BIT(i64 %39)
  %41 = load i32, i32* @GSWIP_TX_PORT_MAP_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @GSWIP_TX_DPID_EN, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %3, align 8
  br label %51

51:                                               ; preds = %17, %16
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %52
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
