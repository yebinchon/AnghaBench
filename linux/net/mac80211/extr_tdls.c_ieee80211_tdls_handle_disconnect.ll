; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_handle_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_handle_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_sta = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"disconnected from TDLS peer %pM (Reason: %u=%s)\0A\00", align 1
@NL80211_TDLS_TEARDOWN = common dso_local global i32 0, align 4
@WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tdls_handle_disconnect(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_sta*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %5, align 8
  %12 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32* %10, i32* %11)
  store %struct.ieee80211_sta* %12, %struct.ieee80211_sta** %7, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = icmp ne %struct.ieee80211_sta* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %3
  %21 = call i32 (...) @rcu_read_unlock()
  br label %37

22:                                               ; preds = %15
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ieee80211_get_reason_code_string(i32 %27)
  %29 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32* %25, i32 %26, i32 %28)
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @NL80211_TDLS_TEARDOWN, align 4
  %34 = load i32, i32* @WLAN_REASON_TDLS_TEARDOWN_UNREACHABLE, align 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32 @ieee80211_tdls_oper_request(i32* %31, i32* %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %22, %20
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_get_reason_code_string(i32) #1

declare dso_local i32 @ieee80211_tdls_oper_request(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
