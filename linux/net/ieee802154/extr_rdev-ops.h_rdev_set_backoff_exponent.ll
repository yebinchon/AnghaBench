; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_rdev-ops.h_rdev_set_backoff_exponent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_rdev-ops.h_rdev_set_backoff_exponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg802154_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.wpan_dev*, i32, i32)* }
%struct.wpan_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg802154_registered_device*, %struct.wpan_dev*, i32, i32)* @rdev_set_backoff_exponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_set_backoff_exponent(%struct.cfg802154_registered_device* %0, %struct.wpan_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cfg802154_registered_device*, align 8
  %6 = alloca %struct.wpan_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cfg802154_registered_device* %0, %struct.cfg802154_registered_device** %5, align 8
  store %struct.wpan_dev* %1, %struct.wpan_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %11 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %10, i32 0, i32 0
  %12 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @trace_802154_rdev_set_backoff_exponent(i32* %11, %struct.wpan_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %17 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.wpan_dev*, i32, i32)*, i32 (i32*, %struct.wpan_dev*, i32, i32)** %19, align 8
  %21 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %22 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %21, i32 0, i32 0
  %23 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 %20(i32* %22, %struct.wpan_dev* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %28 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %27, i32 0, i32 0
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @trace_802154_rdev_return_int(i32* %28, i32 %29)
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @trace_802154_rdev_set_backoff_exponent(i32*, %struct.wpan_dev*, i32, i32) #1

declare dso_local i32 @trace_802154_rdev_return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
