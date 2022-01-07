; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_rx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32 }
%struct.ieee80211_bss = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_scan_request = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }

@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_scan_rx(%struct.ieee80211_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca %struct.ieee80211_bss*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.cfg80211_scan_request*, align 8
  %12 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %15)
  store %struct.ieee80211_rx_status* %16, %struct.ieee80211_rx_status** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %21, %struct.ieee80211_mgmt** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 24
  br i1 %25, label %38, label %26

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ieee80211_is_probe_resp(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %34 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ieee80211_is_beacon(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %2
  br label %144

39:                                               ; preds = %32, %26
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @rcu_dereference(i32 %42)
  %44 = bitcast i8* %43 to %struct.ieee80211_sub_if_data*
  store %struct.ieee80211_sub_if_data* %44, %struct.ieee80211_sub_if_data** %6, align 8
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @rcu_dereference(i32 %47)
  %49 = bitcast i8* %48 to %struct.ieee80211_sub_if_data*
  store %struct.ieee80211_sub_if_data* %49, %struct.ieee80211_sub_if_data** %7, align 8
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %51 = icmp ne %struct.ieee80211_sub_if_data* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %39
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %54 = icmp ne %struct.ieee80211_sub_if_data* %53, null
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %52, %39
  %57 = phi i1 [ false, %39 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %144

62:                                               ; preds = %56
  %63 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ieee80211_is_probe_resp(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %62
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %69 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @rcu_dereference(i32 %71)
  %73 = bitcast i8* %72 to %struct.cfg80211_scan_request*
  store %struct.cfg80211_scan_request* %73, %struct.cfg80211_scan_request** %11, align 8
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @rcu_dereference(i32 %76)
  %78 = bitcast i8* %77 to %struct.cfg80211_sched_scan_request*
  store %struct.cfg80211_sched_scan_request* %78, %struct.cfg80211_sched_scan_request** %12, align 8
  %79 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  %80 = icmp ne %struct.cfg80211_scan_request* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %68
  %82 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %11, align 8
  %83 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %81, %68
  %86 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %12, align 8
  %87 = icmp ne %struct.cfg80211_sched_scan_request* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %12, align 8
  %90 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ieee80211_scan_accept_presp(%struct.ieee80211_sub_if_data* %93, i32 %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %92
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %104 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ieee80211_scan_accept_presp(%struct.ieee80211_sub_if_data* %101, i32 %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %144

109:                                              ; preds = %100, %92
  br label %110

110:                                              ; preds = %109, %62
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %112 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %116 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %114, i32 %117)
  store %struct.ieee80211_channel* %118, %struct.ieee80211_channel** %10, align 8
  %119 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %120 = icmp ne %struct.ieee80211_channel* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %123 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121, %110
  br label %144

129:                                              ; preds = %121
  %130 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %131 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %132 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %137 = call %struct.ieee80211_bss* @ieee80211_bss_info_update(%struct.ieee80211_local* %130, %struct.ieee80211_rx_status* %131, %struct.ieee80211_mgmt* %132, i32 %135, %struct.ieee80211_channel* %136)
  store %struct.ieee80211_bss* %137, %struct.ieee80211_bss** %9, align 8
  %138 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %9, align 8
  %139 = icmp ne %struct.ieee80211_bss* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %142 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %9, align 8
  %143 = call i32 @ieee80211_rx_bss_put(%struct.ieee80211_local* %141, %struct.ieee80211_bss* %142)
  br label %144

144:                                              ; preds = %38, %61, %108, %128, %140, %129
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_scan_accept_presp(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local %struct.ieee80211_bss* @ieee80211_bss_info_update(%struct.ieee80211_local*, %struct.ieee80211_rx_status*, %struct.ieee80211_mgmt*, i32, %struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_rx_bss_put(%struct.ieee80211_local*, %struct.ieee80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
