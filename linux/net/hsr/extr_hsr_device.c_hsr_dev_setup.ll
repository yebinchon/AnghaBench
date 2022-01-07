; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_dev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_device.c_hsr_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32*, i32*, i64 }

@hsr_header_ops = common dso_local global i32 0, align 4
@hsr_device_ops = common dso_local global i32 0, align 4
@hsr_type = common dso_local global i32 0, align 4
@IFF_NO_QUEUE = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_FRAGLIST = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_dev_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i32 @eth_hw_addr_random(%struct.net_device* %3)
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32 @ether_setup(%struct.net_device* %5)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 5
  store i32* @hsr_header_ops, i32** %10, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 4
  store i32* @hsr_device_ops, i32** %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %13, i32* @hsr_type)
  %15 = load i32, i32* @IFF_NO_QUEUE, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* @NETIF_F_SG, align 4
  %23 = load i32, i32* @NETIF_F_FRAGLIST, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @NETIF_F_LLTX, align 4
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  ret void
}

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
