; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_scan_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c_cfg80211_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_request = type { i32, i32, %struct.cfg80211_scan_info }
%struct.cfg80211_scan_info = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.cfg80211_scan_request* }

@cfg80211_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_scan_done(%struct.cfg80211_scan_request* %0, %struct.cfg80211_scan_info* %1) #0 {
  %3 = alloca %struct.cfg80211_scan_request*, align 8
  %4 = alloca %struct.cfg80211_scan_info*, align 8
  store %struct.cfg80211_scan_request* %0, %struct.cfg80211_scan_request** %3, align 8
  store %struct.cfg80211_scan_info* %1, %struct.cfg80211_scan_info** %4, align 8
  %5 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %6 = load %struct.cfg80211_scan_info*, %struct.cfg80211_scan_info** %4, align 8
  %7 = call i32 @trace_cfg80211_scan_done(%struct.cfg80211_scan_request* %5, %struct.cfg80211_scan_info* %6)
  %8 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %9 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @wiphy_to_rdev(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %13, align 8
  %15 = icmp ne %struct.cfg80211_scan_request* %8, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %19 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %18, i32 0, i32 2
  %20 = load %struct.cfg80211_scan_info*, %struct.cfg80211_scan_info** %4, align 8
  %21 = bitcast %struct.cfg80211_scan_info* %19 to i8*
  %22 = bitcast %struct.cfg80211_scan_info* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %24 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @cfg80211_wq, align 4
  %26 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %3, align 8
  %27 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_2__* @wiphy_to_rdev(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @queue_work(i32 %25, i32* %30)
  ret void
}

declare dso_local i32 @trace_cfg80211_scan_done(%struct.cfg80211_scan_request*, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @wiphy_to_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
