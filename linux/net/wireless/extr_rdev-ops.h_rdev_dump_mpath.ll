; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_dump_mpath.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_dump_mpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.net_device*, i32, i32*, i32*, %struct.mpath_info*)* }
%struct.net_device = type { i32 }
%struct.mpath_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32*, i32*, %struct.mpath_info*)* @rdev_dump_mpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_dump_mpath(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32* %3, i32* %4, %struct.mpath_info* %5) #0 {
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mpath_info*, align 8
  %13 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.mpath_info* %5, %struct.mpath_info** %12, align 8
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @trace_rdev_dump_mpath(i32* %15, %struct.net_device* %16, i32 %17, i32* %18, i32* %19)
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, %struct.net_device*, i32, i32*, i32*, %struct.mpath_info*)*, i32 (i32*, %struct.net_device*, i32, i32*, i32*, %struct.mpath_info*)** %24, align 8
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.mpath_info*, %struct.mpath_info** %12, align 8
  %33 = call i32 %25(i32* %27, %struct.net_device* %28, i32 %29, i32* %30, i32* %31, %struct.mpath_info* %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %35 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %34, i32 0, i32 0
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.mpath_info*, %struct.mpath_info** %12, align 8
  %38 = call i32 @trace_rdev_return_int_mpath_info(i32* %35, i32 %36, %struct.mpath_info* %37)
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @trace_rdev_dump_mpath(i32*, %struct.net_device*, i32, i32*, i32*) #1

declare dso_local i32 @trace_rdev_return_int_mpath_info(i32*, i32, %struct.mpath_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
