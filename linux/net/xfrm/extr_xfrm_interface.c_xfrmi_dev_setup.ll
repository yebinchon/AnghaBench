; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_dev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32* }

@xfrmi_netdev_ops = common dso_local global i32 0, align 4
@ARPHRD_NONE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i8* null, align 8
@ETH_DATA_LEN = common dso_local global i8* null, align 8
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@xfrmi_dev_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xfrmi_dev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrmi_dev_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 11
  store i32* @xfrmi_netdev_ops, i32** %4, align 8
  %5 = load i32, i32* @ARPHRD_NONE, align 4
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 10
  store i32 %5, i32* %7, align 8
  %8 = load i8*, i8** @ETH_HLEN, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 9
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** @ETH_HLEN, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 8
  store i8* %11, i8** %13, align 8
  %14 = load i8*, i8** @ETH_DATA_LEN, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @ETH_MIN_MTU, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @ETH_DATA_LEN, align 8
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @IFF_NOARP, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @xfrmi_dev_free, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_keep_dst(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @eth_broadcast_addr(i32 %38)
  ret void
}

declare dso_local i32 @netif_keep_dst(%struct.net_device*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
