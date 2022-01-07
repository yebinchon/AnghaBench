; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_chandef.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_chandef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_FREQ = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_CHANNEL_TYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_CHANNEL_WIDTH = common dso_local global i32 0, align 4
@NL80211_ATTR_CENTER_FREQ1 = common dso_local global i32 0, align 4
@NL80211_ATTR_CENTER_FREQ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_chan_def*)* @nl80211_send_chandef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_chandef(%struct.sk_buff* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %6 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %7 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %84

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @NL80211_ATTR_WIPHY_FREQ, align 4
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @nla_put_u32(%struct.sk_buff* %17, i32 %18, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOBUFS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %16
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %44 [
    i32 129, label %33
    i32 130, label %33
    i32 128, label %33
  ]

33:                                               ; preds = %29, %29, %29
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @NL80211_ATTR_WIPHY_CHANNEL_TYPE, align 4
  %36 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %37 = call i32 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def* %36)
  %38 = call i64 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOBUFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %84

43:                                               ; preds = %33
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %43
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @NL80211_ATTR_CHANNEL_WIDTH, align 4
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %84

56:                                               ; preds = %45
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @NL80211_ATTR_CENTER_FREQ1, align 4
  %59 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @ENOBUFS, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %84

67:                                               ; preds = %56
  %68 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %69 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @NL80211_ATTR_CENTER_FREQ2, align 4
  %75 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %76 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @ENOBUFS, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %72, %67
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %80, %64, %53, %40, %26, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
