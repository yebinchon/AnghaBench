; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_is_sub_chan.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_is_sub_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_channel = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_is_sub_chan(%struct.cfg80211_chan_def* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %91

18:                                               ; preds = %2
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %20 = call i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 20
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %91

24:                                               ; preds = %18
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 2
  %30 = sub nsw i32 %27, %29
  %31 = add nsw i32 %30, 10
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %51, %24
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %36, %38
  %40 = sub nsw i32 %39, 10
  %41 = icmp sle i32 %33, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %91

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 20
  store i32 %53, i32* %7, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %56 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %91

60:                                               ; preds = %54
  %61 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %62 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 2
  %66 = sub nsw i32 %63, %65
  %67 = add nsw i32 %66, 10
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %87, %60
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %71 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %72, %74
  %76 = sub nsw i32 %75, 10
  %77 = icmp sle i32 %69, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %68
  %79 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %91

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 20
  store i32 %89, i32* %7, align 4
  br label %68

90:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %85, %59, %49, %23, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
