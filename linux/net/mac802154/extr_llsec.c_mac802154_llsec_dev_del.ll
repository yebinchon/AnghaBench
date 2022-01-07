; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_dev_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_mac802154_llsec_dev_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { i32 }
%struct.mac802154_llsec_device = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llsec_dev_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac802154_llsec_dev_del(%struct.mac802154_llsec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mac802154_llsec_device*, align 8
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.mac802154_llsec_device* @llsec_dev_find_long(%struct.mac802154_llsec* %7, i32 %8)
  store %struct.mac802154_llsec_device* %9, %struct.mac802154_llsec_device** %6, align 8
  %10 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %11 = icmp ne %struct.mac802154_llsec_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %17 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %16, i32 0, i32 3
  %18 = call i32 @hash_del_rcu(i32* %17)
  %19 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %20 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %19, i32 0, i32 2
  %21 = call i32 @hash_del_rcu(i32* %20)
  %22 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %23 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @list_del_rcu(i32* %24)
  %26 = load %struct.mac802154_llsec_device*, %struct.mac802154_llsec_device** %6, align 8
  %27 = getelementptr inbounds %struct.mac802154_llsec_device, %struct.mac802154_llsec_device* %26, i32 0, i32 0
  %28 = load i32, i32* @llsec_dev_free_rcu, align 4
  %29 = call i32 @call_rcu(i32* %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %15, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.mac802154_llsec_device* @llsec_dev_find_long(%struct.mac802154_llsec*, i32) #1

declare dso_local i32 @hash_del_rcu(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
