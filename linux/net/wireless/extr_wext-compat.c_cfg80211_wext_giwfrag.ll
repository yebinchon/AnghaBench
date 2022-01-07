; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwfrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwfrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_wext_giwfrag(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %struct.iw_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %struct.iw_param* %2, %struct.iw_param** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  store %struct.wireless_dev* %12, %struct.wireless_dev** %9, align 8
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %19 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %21 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  %24 = zext i1 %23 to i32
  %25 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %26 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iw_param*, %struct.iw_param** %7, align 8
  %28 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
