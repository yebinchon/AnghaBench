; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i8*, %struct.TYPE_2__, i64, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee80211_channel = type { i32 }

@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i8* null, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i8* null, align 8
@NL80211_CHAN_WIDTH_40 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_chandef_create(%struct.cfg80211_chan_def* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %8 = icmp ne %struct.ieee80211_channel* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %67

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 4
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %17, align 8
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %65 [
    i32 128, label %27
    i32 131, label %36
    i32 129, label %45
    i32 130, label %55
  ]

27:                                               ; preds = %14
  %28 = load i8*, i8** @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %67

36:                                               ; preds = %14
  %37 = load i8*, i8** @NL80211_CHAN_WIDTH_20, align 8
  %38 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %39 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %44 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %67

45:                                               ; preds = %14
  %46 = load i8*, i8** @NL80211_CHAN_WIDTH_40, align 8
  %47 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %48 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 10
  %53 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %54 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %67

55:                                               ; preds = %14
  %56 = load i8*, i8** @NL80211_CHAN_WIDTH_40, align 8
  %57 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 10
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %64 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %67

65:                                               ; preds = %14
  %66 = call i64 @WARN_ON(i32 1)
  br label %67

67:                                               ; preds = %13, %65, %55, %45, %36, %27
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
