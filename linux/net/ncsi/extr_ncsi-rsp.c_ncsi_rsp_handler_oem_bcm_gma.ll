; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem_bcm_gma.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem_bcm_gma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.sockaddr*)* }
%struct.net_device.0 = type opaque
%struct.sockaddr = type { i64, i32 }
%struct.ncsi_rsp_oem_pkt = type { i32* }

@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@BCM_MAC_ADDR_OFFSET = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NCSI: 'Writing mac address to device failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_oem_bcm_gma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_oem_bcm_gma(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_ops*, align 8
  %7 = alloca %struct.ncsi_rsp_oem_pkt*, align 8
  %8 = alloca %struct.sockaddr, align 8
  %9 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %10 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %11 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %10, i32 0, i32 1
  %12 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %11, align 8
  store %struct.ncsi_dev_priv* %12, %struct.ncsi_dev_priv** %4, align 8
  %13 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  %19 = load %struct.net_device_ops*, %struct.net_device_ops** %18, align 8
  store %struct.net_device_ops* %19, %struct.net_device_ops** %6, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %21 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @skb_network_header(i32 %22)
  %24 = inttoptr i64 %23 to %struct.ncsi_rsp_oem_pkt*
  store %struct.ncsi_rsp_oem_pkt* %24, %struct.ncsi_rsp_oem_pkt** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ncsi_rsp_oem_pkt*, %struct.ncsi_rsp_oem_pkt** %7, align 8
  %37 = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, %struct.ncsi_rsp_oem_pkt* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @BCM_MAC_ADDR_OFFSET, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i64 %35, i32* %40, i32 %41)
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @eth_addr_inc(i32* %45)
  %47 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @is_valid_ether_addr(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %1
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %69

55:                                               ; preds = %1
  %56 = load %struct.net_device_ops*, %struct.net_device_ops** %6, align 8
  %57 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %56, i32 0, i32 0
  %58 = load i32 (%struct.net_device.0*, %struct.sockaddr*)*, i32 (%struct.net_device.0*, %struct.sockaddr*)** %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = bitcast %struct.net_device* %59 to %struct.net_device.0*
  %61 = call i32 %58(%struct.net_device.0* %60, %struct.sockaddr* %8)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = call i32 @netdev_warn(%struct.net_device* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %52
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @eth_addr_inc(i32*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
