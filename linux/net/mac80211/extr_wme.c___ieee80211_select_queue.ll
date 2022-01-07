; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c___ieee80211_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c___ieee80211_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sta_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.mac80211_qos_map = type { i32 }

@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_OCB = common dso_local global i64 0, align 8
@IEEE80211_AC_BE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ieee80211_select_queue(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mac80211_qos_map*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NL80211_IFTYPE_OCB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  store i32 1, i32* %9, align 4
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = icmp ne %struct.sta_info* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %29 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %32, %27
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* @IEEE80211_AC_BE, align 4
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i32 7, i32* %51, align 8
  br label %69

52:                                               ; preds = %41
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.mac80211_qos_map* @rcu_dereference(i32 %55)
  store %struct.mac80211_qos_map* %56, %struct.mac80211_qos_map** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %8, align 8
  %59 = icmp ne %struct.mac80211_qos_map* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.mac80211_qos_map*, %struct.mac80211_qos_map** %8, align 8
  %62 = getelementptr inbounds %struct.mac80211_qos_map, %struct.mac80211_qos_map* %61, i32 0, i32 0
  br label %64

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32* [ %62, %60 ], [ null, %63 ]
  %66 = call i32 @cfg80211_classify8021d(%struct.sk_buff* %57, i32* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %64, %49
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @ieee80211_downgrade_queue(%struct.ieee80211_sub_if_data* %70, %struct.sta_info* %71, %struct.sk_buff* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %37
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.mac80211_qos_map* @rcu_dereference(i32) #1

declare dso_local i32 @cfg80211_classify8021d(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ieee80211_downgrade_queue(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
