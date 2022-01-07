; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_dfs_required.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_dfs_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_chandef_dfs_required(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %11 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %81

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %80 [
    i32 141, label %22
    i32 140, label %22
    i32 132, label %22
    i32 138, label %22
    i32 131, label %77
    i32 135, label %77
    i32 134, label %77
    i32 137, label %77
    i32 139, label %77
    i32 129, label %77
    i32 133, label %77
    i32 136, label %77
    i32 130, label %78
    i32 128, label %78
  ]

22:                                               ; preds = %20, %20, %20, %20
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %24 = call i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %22
  %31 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %32 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %33 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @cfg80211_get_chans_dfs_required(%struct.wiphy* %31, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %46 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BIT(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %81

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %52 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %81

56:                                               ; preds = %50
  %57 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %58 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @cfg80211_get_chans_dfs_required(%struct.wiphy* %57, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %4, align 4
  br label %81

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %72 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BIT(i32 %73)
  store i32 %74, i32* %4, align 4
  br label %81

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  br label %80

77:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20
  br label %80

78:                                               ; preds = %20, %20
  %79 = call i64 @WARN_ON(i32 1)
  br label %80

80:                                               ; preds = %78, %20, %77, %76
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %70, %65, %55, %44, %39, %27, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_chandef_get_width(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_get_chans_dfs_required(%struct.wiphy*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
