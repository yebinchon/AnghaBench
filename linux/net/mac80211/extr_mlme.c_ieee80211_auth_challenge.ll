; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_auth_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_auth_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_7__ }
%struct.ieee80211_local = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_mgd_auth_data* }
%struct.ieee80211_mgd_auth_data = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.ieee802_11_elems = type { i64, i64 }

@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_auth_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_auth_challenge(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_mgd_auth_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee802_11_elems, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %7, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %18, align 8
  store %struct.ieee80211_mgd_auth_data* %19, %struct.ieee80211_mgd_auth_data** %8, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %29 = bitcast %struct.ieee80211_mgmt* %28 to i32*
  %30 = ptrtoint i32* %27 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = sub i64 %26, %33
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %39 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ieee802_11_parse_elems(i32* %25, i64 %34, i32 0, %struct.ieee802_11_elems* %10, i32 %37, i32 %42)
  %44 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %3
  br label %97

48:                                               ; preds = %3
  %49 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 0
  %53 = load %struct.ieee80211_local*, %struct.ieee80211_local** %52, align 8
  %54 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %55 = call i32 @drv_mgd_prepare_tx(%struct.ieee80211_local* %53, %struct.ieee80211_sub_if_data* %54, i32 0)
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 0
  %58 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %59 = call i64 @ieee80211_hw_check(i32* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %63 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %48
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %67 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 2
  %73 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 2
  %76 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %77 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %76, i32 0, i32 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %82 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %81, i32 0, i32 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ieee80211_mgd_auth_data*, %struct.ieee80211_mgd_auth_data** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_mgd_auth_data, %struct.ieee80211_mgd_auth_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ieee80211_send_auth(%struct.ieee80211_sub_if_data* %66, i32 3, i32 %69, i32 0, i64 %72, i64 %75, i32 %80, i32 %85, i32 %88, i32 %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %65, %47
  ret void
}

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, i32, %struct.ieee802_11_elems*, i32, i32) #1

declare dso_local i32 @drv_mgd_prepare_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @ieee80211_send_auth(%struct.ieee80211_sub_if_data*, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
