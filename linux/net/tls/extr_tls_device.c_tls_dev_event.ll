; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_dev_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_dev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NETIF_F_HW_TLS_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_TLS_TX = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @tls_dev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_dev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NETIF_F_HW_TLS_RX, align 4
  %20 = load i32, i32* @NETIF_F_HW_TLS_TX, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %15, %3
  %27 = load i64, i64* %6, align 8
  switch i64 %27, label %70 [
    i64 128, label %28
    i64 129, label %28
    i64 130, label %67
  ]

28:                                               ; preds = %26, %26
  %29 = load %struct.net_device*, %struct.net_device** %8, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @NETIF_F_HW_TLS_RX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %35, %28
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp ne %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %64, i32* %4, align 4
  br label %72

65:                                               ; preds = %56, %49, %44
  %66 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %26
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = call i32 @tls_device_down(%struct.net_device* %68)
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %26
  %71 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %67, %65, %63, %42, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @tls_device_down(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
