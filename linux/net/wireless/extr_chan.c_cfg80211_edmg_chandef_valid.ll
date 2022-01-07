; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_edmg_chandef_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_edmg_chandef_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_chan_def*)* @cfg80211_edmg_chandef_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_edmg_chandef_valid(%struct.cfg80211_chan_def* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %102

20:                                               ; preds = %13
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cfg80211_valid_60g_freq(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %102

29:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %48

47:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @max(i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %57 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %80 [
    i32 133, label %60
    i32 129, label %60
    i32 137, label %60
    i32 132, label %65
    i32 128, label %65
    i32 136, label %65
    i32 131, label %70
    i32 139, label %70
    i32 135, label %70
    i32 130, label %75
    i32 138, label %75
    i32 134, label %75
  ]

60:                                               ; preds = %55, %55, %55
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %102

64:                                               ; preds = %60
  br label %81

65:                                               ; preds = %55, %55, %55
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %102

69:                                               ; preds = %65
  br label %81

70:                                               ; preds = %55, %55, %55
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %102

74:                                               ; preds = %70
  br label %81

75:                                               ; preds = %55, %55, %55
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %102

79:                                               ; preds = %75
  br label %81

80:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %102

81:                                               ; preds = %79, %74, %69, %64
  %82 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %83 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %100 [
    i32 133, label %86
    i32 132, label %86
    i32 131, label %86
    i32 130, label %86
    i32 129, label %87
    i32 128, label %87
    i32 139, label %87
    i32 138, label %87
    i32 137, label %92
    i32 136, label %92
    i32 135, label %92
    i32 134, label %92
  ]

86:                                               ; preds = %81, %81, %81, %81
  br label %101

87:                                               ; preds = %81, %81, %81, %81
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 2
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %102

91:                                               ; preds = %87
  br label %101

92:                                               ; preds = %81, %81, %81, %81
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %92
  store i32 0, i32* %2, align 4
  br label %102

99:                                               ; preds = %95
  br label %101

100:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %102

101:                                              ; preds = %99, %91, %86
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %100, %98, %90, %80, %78, %73, %68, %63, %28, %19
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @cfg80211_valid_60g_freq(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
