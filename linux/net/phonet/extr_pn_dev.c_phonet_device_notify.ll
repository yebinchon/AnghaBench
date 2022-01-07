; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c_phonet_device_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_dev.c_phonet_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }

@ARPHRD_PHONET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @phonet_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phonet_device_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %8)
  store %struct.net_device* %9, %struct.net_device** %7, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %26 [
    i64 129, label %11
    i64 128, label %21
  ]

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ARPHRD_PHONET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call i32 @phonet_device_autoconf(%struct.net_device* %18)
  br label %20

20:                                               ; preds = %17, %11
  br label %26

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call i32 @phonet_device_destroy(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i32 @phonet_route_autodel(%struct.net_device* %24)
  br label %26

26:                                               ; preds = %3, %21, %20
  ret i32 0
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @phonet_device_autoconf(%struct.net_device*) #1

declare dso_local i32 @phonet_device_destroy(%struct.net_device*) #1

declare dso_local i32 @phonet_route_autodel(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
