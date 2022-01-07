; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c_ieee80211_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c_ieee80211_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, %struct.TYPE_10__, %struct.ieee80211_local* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.sk_buff = type { i32, i32*, i64 }
%struct.sta_info = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_select_queue(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 6
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %20
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %103

35:                                               ; preds = %27
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %81 [
    i32 130, label %41
    i32 131, label %52
    i32 128, label %56
    i32 129, label %62
    i32 132, label %77
  ]

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.sta_info* @rcu_dereference(i32 %46)
  store %struct.sta_info* %47, %struct.sta_info** %7, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %49 = icmp ne %struct.sta_info* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %82

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %35, %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %8, align 8
  br label %82

56:                                               ; preds = %35
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %8, align 8
  br label %82

62:                                               ; preds = %35
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %63, i32* %66)
  store %struct.sta_info* %67, %struct.sta_info** %7, align 8
  %68 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %69 = icmp ne %struct.sta_info* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %82

71:                                               ; preds = %62
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %8, align 8
  br label %82

77:                                               ; preds = %35
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %8, align 8
  br label %82

81:                                               ; preds = %35
  br label %82

82:                                               ; preds = %81, %77, %71, %70, %56, %52, %50
  %83 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %84 = icmp ne %struct.sta_info* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @is_multicast_ether_addr(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %93, i32* %94)
  store %struct.sta_info* %95, %struct.sta_info** %7, align 8
  br label %96

96:                                               ; preds = %92, %88, %85, %82
  %97 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %98 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @__ieee80211_select_queue(%struct.ieee80211_sub_if_data* %97, %struct.sta_info* %98, %struct.sk_buff* %99)
  store i32 %100, i32* %9, align 4
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %96, %32, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @rcu_dereference(i32) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @__ieee80211_select_queue(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
