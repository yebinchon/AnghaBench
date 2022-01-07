; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem_mlx_gma.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_oem_mlx_gma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, %struct.sockaddr*)* }
%struct.net_device.0 = type opaque
%struct.sockaddr = type { i32, i32 }
%struct.ncsi_rsp_oem_pkt = type { i32* }

@IFF_LIVE_ADDR_CHANGE = common dso_local global i32 0, align 4
@MLX_MAC_ADDR_OFFSET = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"NCSI: 'Writing mac address to device failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_oem_mlx_gma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_oem_mlx_gma(%struct.ncsi_request* %0) #0 {
  %2 = alloca %struct.ncsi_request*, align 8
  %3 = alloca %struct.ncsi_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  %6 = alloca %struct.ncsi_rsp_oem_pkt*, align 8
  %7 = alloca %struct.sockaddr, align 4
  %8 = alloca i32, align 4
  store %struct.ncsi_request* %0, %struct.ncsi_request** %2, align 8
  %9 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %10 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %9, i32 0, i32 1
  %11 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %10, align 8
  store %struct.ncsi_dev_priv* %11, %struct.ncsi_dev_priv** %3, align 8
  %12 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 2
  %18 = load %struct.net_device_ops*, %struct.net_device_ops** %17, align 8
  store %struct.net_device_ops* %18, %struct.net_device_ops** %5, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.ncsi_request*, %struct.ncsi_request** %2, align 8
  %20 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @skb_network_header(i32 %21)
  %23 = inttoptr i64 %22 to %struct.ncsi_rsp_oem_pkt*
  store %struct.ncsi_rsp_oem_pkt* %23, %struct.ncsi_rsp_oem_pkt** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IFF_LIVE_ADDR_CHANGE, align 4
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ncsi_rsp_oem_pkt*, %struct.ncsi_rsp_oem_pkt** %6, align 8
  %36 = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, %struct.ncsi_rsp_oem_pkt* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @MLX_MAC_ADDR_OFFSET, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memcpy(i32 %34, i32* %39, i32 %40)
  %42 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %43 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.net_device.0*, %struct.sockaddr*)*, i32 (%struct.net_device.0*, %struct.sockaddr*)** %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = bitcast %struct.net_device* %45 to %struct.net_device.0*
  %47 = call i32 %44(%struct.net_device.0* %46, %struct.sockaddr* %7)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netdev_warn(%struct.net_device* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %1
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
