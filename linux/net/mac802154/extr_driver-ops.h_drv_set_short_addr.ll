; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_driver-ops.h_drv_set_short_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_driver-ops.h_drv_set_short_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.ieee802154_hw_addr_filt*, i32)* }
%struct.ieee802154_hw_addr_filt = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE802154_AFILT_SADDR_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_local*, i32)* @drv_set_short_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_set_short_addr(%struct.ieee802154_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee802154_hw_addr_filt, align 4
  %7 = alloca i32, align 4
  store %struct.ieee802154_local* %0, %struct.ieee802154_local** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32*, %struct.ieee802154_hw_addr_filt*, i32)*, i32 (i32*, %struct.ieee802154_hw_addr_filt*, i32)** %12, align 8
  %14 = icmp ne i32 (i32*, %struct.ieee802154_hw_addr_filt*, i32)* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 @WARN_ON(i32 1)
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %6, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @trace_802154_drv_set_short_addr(%struct.ieee802154_local* %22, i32 %23)
  %25 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %26 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32*, %struct.ieee802154_hw_addr_filt*, i32)*, i32 (i32*, %struct.ieee802154_hw_addr_filt*, i32)** %28, align 8
  %30 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %31 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %30, i32 0, i32 0
  %32 = load i32, i32* @IEEE802154_AFILT_SADDR_CHANGED, align 4
  %33 = call i32 %29(i32* %31, %struct.ieee802154_hw_addr_filt* %6, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.ieee802154_local*, %struct.ieee802154_local** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @trace_802154_drv_return_int(%struct.ieee802154_local* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %19, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @trace_802154_drv_set_short_addr(%struct.ieee802154_local*, i32) #1

declare dso_local i32 @trace_802154_drv_return_int(%struct.ieee802154_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
