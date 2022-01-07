; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_mib.c_mac802154_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_mib.c_mac802154_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ieee802154_llsec_key_id = type { i32 }
%struct.ieee802154_llsec_key = type { i32 }
%struct.ieee802154_sub_if_data = type { i32, i32 }

@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_add_key(%struct.net_device* %0, %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee802154_llsec_key_id*, align 8
  %6 = alloca %struct.ieee802154_llsec_key*, align 8
  %7 = alloca %struct.ieee802154_sub_if_data*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee802154_llsec_key_id* %1, %struct.ieee802154_llsec_key_id** %5, align 8
  store %struct.ieee802154_llsec_key* %2, %struct.ieee802154_llsec_key** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %9)
  store %struct.ieee802154_sub_if_data* %10, %struct.ieee802154_sub_if_data** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %7, align 8
  %19 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %7, align 8
  %22 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %21, i32 0, i32 1
  %23 = load %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key_id** %5, align 8
  %24 = load %struct.ieee802154_llsec_key*, %struct.ieee802154_llsec_key** %6, align 8
  %25 = call i32 @mac802154_llsec_key_add(i32* %22, %struct.ieee802154_llsec_key_id* %23, %struct.ieee802154_llsec_key* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %7, align 8
  %27 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i32, i32* %8, align 4
  ret i32 %29
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mac802154_llsec_key_add(i32*, %struct.ieee802154_llsec_key_id*, %struct.ieee802154_llsec_key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
