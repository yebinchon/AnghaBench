; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_mac_cmd.c_mac802154_mlme_start_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_mac_cmd.c_mac802154_mlme_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee802154_addr = type { i64, i32, i32 }
%struct.ieee802154_llsec_params = type { i32, i32, i32, i32 }

@IEEE802154_ADDR_SHORT = common dso_local global i64 0, align 8
@IEEE802154_LLSEC_PARAM_PAN_ID = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_HWADDR = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_COORD_HWADDR = common dso_local global i32 0, align 4
@IEEE802154_LLSEC_PARAM_COORD_SHORTADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee802154_addr*, i32, i32, i32, i32, i32, i32, i32)* @mac802154_mlme_start_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac802154_mlme_start_req(%struct.net_device* %0, %struct.ieee802154_addr* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ieee802154_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee802154_llsec_params, align 4
  %20 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %10, align 8
  store %struct.ieee802154_addr* %1, %struct.ieee802154_addr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %21 = call i32 (...) @ASSERT_RTNL()
  %22 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %11, align 8
  %23 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE802154_ADDR_SHORT, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %11, align 8
  %30 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %11, align 8
  %37 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %10, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @mac802154_dev_set_page_channel(%struct.net_device* %43, i32 %44, i32 %45)
  %47 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %11, align 8
  %48 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %19, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IEEE802154_LLSEC_PARAM_PAN_ID, align 4
  %52 = load i32, i32* %20, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %20, align 4
  %54 = load %struct.net_device*, %struct.net_device** %10, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ieee802154_devaddr_from_raw(i32 %56)
  %58 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %19, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IEEE802154_LLSEC_PARAM_HWADDR, align 4
  %60 = load i32, i32* %20, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %20, align 4
  %62 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %19, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %19, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IEEE802154_LLSEC_PARAM_COORD_HWADDR, align 4
  %66 = load i32, i32* %20, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %20, align 4
  %68 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %11, align 8
  %69 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.ieee802154_llsec_params, %struct.ieee802154_llsec_params* %19, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @IEEE802154_LLSEC_PARAM_COORD_SHORTADDR, align 4
  %73 = load i32, i32* %20, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %20, align 4
  %75 = load %struct.net_device*, %struct.net_device** %10, align 8
  %76 = load i32, i32* %20, align 4
  %77 = call i32 @mac802154_set_params(%struct.net_device* %75, %struct.ieee802154_llsec_params* %19, i32 %76)
  ret i32 %77
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mac802154_dev_set_page_channel(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ieee802154_devaddr_from_raw(i32) #1

declare dso_local i32 @mac802154_set_params(%struct.net_device*, %struct.ieee802154_llsec_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
