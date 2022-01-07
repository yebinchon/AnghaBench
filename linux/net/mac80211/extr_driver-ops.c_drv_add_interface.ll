; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.c_drv_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.c_drv_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@WANT_MONITOR_VIF = common dso_local global i32 0, align 4
@MONITOR_FLAG_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_SDATA_IN_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drv_add_interface(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %39, label %14

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = load i32, i32* @WANT_MONITOR_VIF, align 4
  %25 = call i32 @ieee80211_hw_check(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MONITOR_FLAG_ACTIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %27, %21, %14
  %38 = phi i1 [ false, %21 ], [ false, %14 ], [ %36, %27 ]
  br label %39

39:                                               ; preds = %37, %2
  %40 = phi i1 [ true, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %39
  %48 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %50 = call i32 @trace_drv_add_interface(%struct.ieee80211_local* %48, %struct.ieee80211_sub_if_data* %49)
  %51 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32 (i32*, %struct.TYPE_8__*)*, i32 (i32*, %struct.TYPE_8__*)** %54, align 8
  %56 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %58, i32 0, i32 1
  %60 = call i32 %55(i32* %57, %struct.TYPE_8__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @trace_drv_return_int(%struct.ieee80211_local* %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %47
  %67 = load i32, i32* @IEEE80211_SDATA_IN_DRIVER, align 4
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %47
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %44
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @trace_drv_add_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @trace_drv_return_int(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
