; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_disable_hw_accel.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_disable_hw_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.ieee80211_sub_if_data*, %struct.sta_info* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.sta_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@KEY_FLAG_UPLOADED_TO_HARDWARE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_MIC_SPACE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RESERVE_TAILROOM = common dso_local global i32 0, align 4
@DISABLE_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to remove key (%d, %pM) from hardware (%d)\0A\00", align 1
@bcast_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*)* @ieee80211_key_disable_hw_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_key_disable_hw_accel(%struct.ieee80211_key* %0) #0 {
  %2 = alloca %struct.ieee80211_key*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %2, align 8
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %8 = icmp ne %struct.ieee80211_key* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9, %1
  br label %96

19:                                               ; preds = %9
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @assert_key_lock(%struct.TYPE_7__* %22)
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %96

31:                                               ; preds = %19
  %32 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %32, i32 0, i32 4
  %34 = load %struct.sta_info*, %struct.sta_info** %33, align 8
  store %struct.sta_info* %34, %struct.sta_info** %4, align 8
  %35 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %35, i32 0, i32 3
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %36, align 8
  store %struct.ieee80211_sub_if_data* %37, %struct.ieee80211_sub_if_data** %3, align 8
  %38 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %43 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_MIC_SPACE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IEEE80211_KEY_FLAG_RESERVE_TAILROOM, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %51 = call i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data* %50)
  br label %52

52:                                               ; preds = %49, %31
  %53 = load i32, i32* @KEY_FLAG_UPLOADED_TO_HARDWARE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %60 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* @DISABLE_KEY, align 4
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %64 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %65 = icmp ne %struct.sta_info* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 0
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi %struct.TYPE_8__* [ %68, %66 ], [ null, %69 ]
  %72 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %72, i32 0, i32 1
  %74 = call i32 @drv_set_key(%struct.TYPE_7__* %61, i32 %62, %struct.ieee80211_sub_if_data* %63, %struct.TYPE_8__* %71, %struct.TYPE_9__* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %79 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %84 = icmp ne %struct.sta_info* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  br label %92

90:                                               ; preds = %77
  %91 = load i32, i32* @bcast_addr, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi i32 [ %89, %85 ], [ %91, %90 ]
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %18, %30, %92, %70
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @assert_key_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @increment_tailroom_need_count(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_set_key(%struct.TYPE_7__*, i32, %struct.ieee80211_sub_if_data*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
