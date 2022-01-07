; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_add_sta_files.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_netdev.c_add_sta_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }

@bssid = common dso_local global i32 0, align 4
@aid = common dso_local global i32 0, align 4
@beacon_timeout = common dso_local global i32 0, align 4
@smps = common dso_local global i32 0, align 4
@tkip_mic_test = common dso_local global i32 0, align 4
@beacon_loss = common dso_local global i32 0, align 4
@uapsd_queues = common dso_local global i32 0, align 4
@uapsd_max_sp_len = common dso_local global i32 0, align 4
@tdls_wider_bw = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*)* @add_sta_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sta_files(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %3 = load i32, i32* @bssid, align 4
  %4 = call i32 @DEBUGFS_ADD(i32 %3)
  %5 = load i32, i32* @aid, align 4
  %6 = call i32 @DEBUGFS_ADD(i32 %5)
  %7 = load i32, i32* @beacon_timeout, align 4
  %8 = call i32 @DEBUGFS_ADD(i32 %7)
  %9 = load i32, i32* @smps, align 4
  %10 = call i32 @DEBUGFS_ADD_MODE(i32 %9, i32 384)
  %11 = load i32, i32* @tkip_mic_test, align 4
  %12 = call i32 @DEBUGFS_ADD_MODE(i32 %11, i32 128)
  %13 = load i32, i32* @beacon_loss, align 4
  %14 = call i32 @DEBUGFS_ADD_MODE(i32 %13, i32 128)
  %15 = load i32, i32* @uapsd_queues, align 4
  %16 = call i32 @DEBUGFS_ADD_MODE(i32 %15, i32 384)
  %17 = load i32, i32* @uapsd_max_sp_len, align 4
  %18 = call i32 @DEBUGFS_ADD_MODE(i32 %17, i32 384)
  %19 = load i32, i32* @tdls_wider_bw, align 4
  %20 = call i32 @DEBUGFS_ADD_MODE(i32 %19, i32 384)
  ret void
}

declare dso_local i32 @DEBUGFS_ADD(i32) #1

declare dso_local i32 @DEBUGFS_ADD_MODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
