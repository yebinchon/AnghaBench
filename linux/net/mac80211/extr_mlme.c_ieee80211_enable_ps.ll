; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_enable_ps.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_enable_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i64, i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@SUPPORTS_DYNAMIC_PS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*)* @ieee80211_enable_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_enable_ps(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %4, align 8
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ieee80211_conf* %8, %struct.ieee80211_conf** %5, align 8
  %9 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = load i32, i32* @SUPPORTS_DYNAMIC_PS, align 4
  %23 = call i64 @ieee80211_hw_check(%struct.TYPE_2__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 1
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @msecs_to_jiffies(i64 %31)
  %33 = add nsw i64 %28, %32
  %34 = call i32 @mod_timer(i32* %27, i64 %33)
  br label %67

35:                                               ; preds = %19, %14
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 0
  %38 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %39 = call i64 @ieee80211_hw_check(%struct.TYPE_2__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %44 = call i32 @ieee80211_send_nullfunc(%struct.ieee80211_local* %42, %struct.ieee80211_sub_if_data* %43, i32 1)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  %48 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %49 = call i64 @ieee80211_hw_check(%struct.TYPE_2__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %52, i32 0, i32 0
  %54 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %55 = call i64 @ieee80211_hw_check(%struct.TYPE_2__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %67

58:                                               ; preds = %51, %45
  %59 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %60 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %65 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %66 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %64, i32 %65)
  br label %67

67:                                               ; preds = %13, %57, %58, %25
  ret void
}

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @ieee80211_send_nullfunc(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
