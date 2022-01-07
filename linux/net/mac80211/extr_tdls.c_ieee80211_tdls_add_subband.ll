; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_subband.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_subband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32, i32, i32)* @ieee80211_tdls_add_subband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ieee80211_tdls_add_subband(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ieee80211_channel*, align 8
  %14 = alloca %struct.cfg80211_chan_def, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wiphy*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.wiphy*, %struct.wiphy** %24, align 8
  store %struct.wiphy* %25, %struct.wiphy** %17, align 8
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %78, %5
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load i8*, i8** %12, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.wiphy*, %struct.wiphy** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = call %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy* %42, i32 %43)
  store %struct.ieee80211_channel* %44, %struct.ieee80211_channel** %13, align 8
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %46 = icmp ne %struct.ieee80211_channel* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %36
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  %49 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %50 = call i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def* %14, %struct.ieee80211_channel* %48, i32 %49)
  %51 = load %struct.wiphy*, %struct.wiphy** %17, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @cfg80211_reg_can_beacon_relax(%struct.wiphy* %51, %struct.cfg80211_chan_def* %14, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %12, align 8
  br label %78

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i8*, i8** %12, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i8** @skb_put(%struct.sk_buff* %66, i32 2)
  store i8** %67, i8*** %18, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i8* @ieee80211_frequency_to_channel(i32 %68)
  %70 = load i8**, i8*** %18, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %18, align 8
  store i8* %69, i8** %70, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i8**, i8*** %18, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %18, align 8
  store i8* %72, i8** %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8* null, i8** %12, align 8
  br label %77

77:                                               ; preds = %65, %62
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %27

82:                                               ; preds = %27
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i8** @skb_put(%struct.sk_buff* %86, i32 2)
  store i8** %87, i8*** %19, align 8
  %88 = load i32, i32* %16, align 4
  %89 = call i8* @ieee80211_frequency_to_channel(i32 %88)
  %90 = load i8**, i8*** %19, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %19, align 8
  store i8* %89, i8** %90, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i8**, i8*** %19, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %19, align 8
  store i8* %92, i8** %93, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %11, align 8
  br label %97

97:                                               ; preds = %85, %82
  %98 = load i8*, i8** %11, align 8
  ret i8* %98
}

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(%struct.wiphy*, i32) #1

declare dso_local i32 @cfg80211_chandef_create(%struct.cfg80211_chan_def*, %struct.ieee80211_channel*, i32) #1

declare dso_local i64 @cfg80211_reg_can_beacon_relax(%struct.wiphy*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i8** @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @ieee80211_frequency_to_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
