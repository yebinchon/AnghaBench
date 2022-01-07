; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_devkey_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_devkey_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { i32 }
%struct.ieee802154_llsec_device_key = type { i32 }
%struct.mac802154_llsec_device = type { i32 }
%struct.mac802154_llsec_device_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_devkey_del(%struct.mac802154_llsec* %0, i32 %1, %struct.ieee802154_llsec_device_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac802154_llsec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee802154_llsec_device_key*, align 8
  %8 = alloca %struct.mac802154_llsec_device*, align 8
  %9 = alloca %struct.mac802154_llsec_device_key*, align 8
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ieee802154_llsec_device_key* %2, %struct.ieee802154_llsec_device_key** %7, align 8
  %10 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.mac802154_llsec_device* @llsec_dev_find_long(%struct.mac802154_llsec* %10, i32 %11)
  store %struct.mac802154_llsec_device* %12, %struct.mac802154_llsec_device** %8, align 8
  %13 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %8, align 8
  %14 = icmp ne %struct.mac802154_llsec_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %8, align 8
  %20 = load %struct.ieee802154_llsec_device_key*, %struct.ieee802154_llsec_device_key** %7, align 8
  %21 = getelementptr inbounds %struct.ieee802154_llsec_device_key, %struct.ieee802154_llsec_device_key* %20, i32 0, i32 0
  %22 = call %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device* %19, i32* %21)
  store %struct.mac802154_llsec_device_key* %22, %struct.mac802154_llsec_device_key** %9, align 8
  %23 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %9, align 8
  %24 = icmp ne %struct.mac802154_llsec_device_key* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %9, align 8
  %30 = getelementptr inbounds %struct.mac802154_llsec_device_key, %struct.mac802154_llsec_device_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @list_del_rcu(i32* %31)
  %33 = load %struct.mac802154_llsec_device_key*, %struct.mac802154_llsec_device_key** %9, align 8
  %34 = load i32, i32* @rcu, align 4
  %35 = call i32 @kfree_rcu(%struct.mac802154_llsec_device_key* %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %25, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.mac802154_llsec_device* @llsec_dev_find_long(%struct.mac802154_llsec*, i32) #1

declare dso_local %struct.mac802154_llsec_device_key* @llsec_devkey_find(%struct.mac802154_llsec_device*, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.mac802154_llsec_device_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
