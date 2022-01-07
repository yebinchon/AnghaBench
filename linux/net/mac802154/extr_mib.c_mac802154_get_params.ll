; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_mib.c_mac802154_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_mib.c_mac802154_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ieee802154_llsec_params = type { i32 }
%struct.ieee802154_sub_if_data = type { i32, i32 }

@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_get_params(%struct.net_device* %0, %struct.ieee802154_llsec_params* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee802154_llsec_params*, align 8
  %5 = alloca %struct.ieee802154_sub_if_data*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee802154_llsec_params* %1, %struct.ieee802154_llsec_params** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %7)
  store %struct.ieee802154_sub_if_data* %8, %struct.ieee802154_sub_if_data** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %17 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %20 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %19, i32 0, i32 1
  %21 = load %struct.ieee802154_llsec_params*, %struct.ieee802154_llsec_params** %4, align 8
  %22 = call i32 @mac802154_llsec_get_params(i32* %20, %struct.ieee802154_llsec_params* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %5, align 8
  %24 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mac802154_llsec_get_params(i32*, %struct.ieee802154_llsec_params*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
