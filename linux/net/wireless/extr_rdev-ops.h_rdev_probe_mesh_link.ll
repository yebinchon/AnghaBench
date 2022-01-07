; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_probe_mesh_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_probe_mesh_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.net_device*, i8*, i64)* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i8*, i64)* @rdev_probe_mesh_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_probe_mesh_link(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %13 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @trace_rdev_probe_mesh_link(i32* %13, %struct.net_device* %14, i32* %15, i8* %16, i64 %17)
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (i32*, %struct.net_device*, i8*, i64)*, i32 (i32*, %struct.net_device*, i8*, i64)** %22, align 8
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 %23(i32* %25, %struct.net_device* %26, i8* %27, i64 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %31 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %30, i32 0, i32 0
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @trace_rdev_return_int(i32* %31, i32 %32)
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local i32 @trace_rdev_probe_mesh_link(i32*, %struct.net_device*, i32*, i8*, i64) #1

declare dso_local i32 @trace_rdev_return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
