; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_ctstoself_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_ctstoself_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_cts = type { i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_CTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ctstoself_get(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i8* %2, i64 %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_cts* %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_cts*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %11, align 8
  store %struct.ieee80211_cts* %5, %struct.ieee80211_cts** %12, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %15, %struct.ieee80211_hdr** %13, align 8
  %16 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %17 = load i32, i32* @IEEE80211_STYPE_CTS, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load %struct.ieee80211_cts*, %struct.ieee80211_cts** %12, align 8
  %21 = getelementptr inbounds %struct.ieee80211_cts, %struct.ieee80211_cts* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %26 = call i32 @ieee80211_ctstoself_duration(%struct.ieee80211_hw* %22, %struct.ieee80211_vif* %23, i64 %24, %struct.ieee80211_tx_info* %25)
  %27 = load %struct.ieee80211_cts*, %struct.ieee80211_cts** %12, align 8
  %28 = getelementptr inbounds %struct.ieee80211_cts, %struct.ieee80211_cts* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ieee80211_cts*, %struct.ieee80211_cts** %12, align 8
  %30 = getelementptr inbounds %struct.ieee80211_cts, %struct.ieee80211_cts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %31, i32 %34, i32 4)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_ctstoself_duration(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
