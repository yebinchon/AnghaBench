; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i64, i64 }

@NL80211_CHAN_WIDTH_5 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_10 = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@NL80211_CHAN_WIDTH_20 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfg80211_chan_def* @cfg80211_chandef_compatible(%struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %11 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %12 = call i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def* %10, %struct.cfg80211_chan_def* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %15, %struct.cfg80211_chan_def** %3, align 8
  br label %129

16:                                               ; preds = %2
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %129

25:                                               ; preds = %16
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %129

34:                                               ; preds = %25
  %35 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %36 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %34
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %48 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_CHAN_WIDTH_5, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %54 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NL80211_CHAN_WIDTH_10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %46, %40, %34
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %129

59:                                               ; preds = %52
  %60 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %61 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %67 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %59
  %72 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  store %struct.cfg80211_chan_def* %72, %struct.cfg80211_chan_def** %3, align 8
  br label %129

73:                                               ; preds = %65
  %74 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %81 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_CHAN_WIDTH_20, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %73
  %86 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %86, %struct.cfg80211_chan_def** %3, align 8
  br label %129

87:                                               ; preds = %79
  %88 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %89 = call i32 @chandef_primary_freqs(%struct.cfg80211_chan_def* %88, i64* %6, i64* %7)
  %90 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %91 = call i32 @chandef_primary_freqs(%struct.cfg80211_chan_def* %90, i64* %8, i64* %9)
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %129

96:                                               ; preds = %87
  %97 = load i64, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i64, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN_ON(i32 %105)
  %107 = load i64, i64* %7, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %3, align 8
  br label %129

117:                                              ; preds = %112, %109, %103
  %118 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %119 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %122 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  store %struct.cfg80211_chan_def* %126, %struct.cfg80211_chan_def** %3, align 8
  br label %129

127:                                              ; preds = %117
  %128 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  store %struct.cfg80211_chan_def* %128, %struct.cfg80211_chan_def** %3, align 8
  br label %129

129:                                              ; preds = %127, %125, %116, %95, %85, %71, %58, %33, %24, %14
  %130 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  ret %struct.cfg80211_chan_def* %130
}

declare dso_local i64 @cfg80211_chandef_identical(%struct.cfg80211_chan_def*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @chandef_primary_freqs(%struct.cfg80211_chan_def*, i64*, i64*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
