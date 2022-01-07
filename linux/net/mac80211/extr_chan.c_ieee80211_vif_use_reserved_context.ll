; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_use_reserved_context.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_chan.c_ieee80211_vif_use_reserved_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_chanctx*, %struct.ieee80211_local* }
%struct.ieee80211_chanctx = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CHANCTX_WILL_BE_REPLACED = common dso_local global i64 0, align 8
@IEEE80211_CHANCTX_REPLACE_NONE = common dso_local global i64 0, align 8
@IEEE80211_CHANCTX_REPLACES_OTHER = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"depending in-place reservation failed (err=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_vif_use_reserved_context(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_chanctx*, align 8
  %6 = alloca %struct.ieee80211_chanctx*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 2
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 2
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 1
  %19 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %18, align 8
  store %struct.ieee80211_chanctx* %19, %struct.ieee80211_chanctx** %5, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %21 = call %struct.ieee80211_chanctx* @ieee80211_vif_get_chanctx(%struct.ieee80211_sub_if_data* %20)
  store %struct.ieee80211_chanctx* %21, %struct.ieee80211_chanctx** %6, align 8
  %22 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %23 = icmp ne %struct.ieee80211_chanctx* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %117

31:                                               ; preds = %1
  %32 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_CHANCTX_WILL_BE_REPLACED, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %117

43:                                               ; preds = %31
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %117

52:                                               ; preds = %43
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %56 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IEEE80211_CHANCTX_REPLACE_NONE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %52
  %61 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %62 = icmp ne %struct.ieee80211_chanctx* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %65 = call i32 @ieee80211_vif_use_reserved_reassign(%struct.ieee80211_sub_if_data* %64)
  store i32 %65, i32* %7, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %68 = call i32 @ieee80211_vif_use_reserved_assign(%struct.ieee80211_sub_if_data* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %117

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %77 = icmp ne %struct.ieee80211_chanctx* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE80211_CHANCTX_WILL_BE_REPLACED, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78, %75
  %85 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IEEE80211_CHANCTX_REPLACES_OTHER, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %84, %78
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %92 = call i32 @ieee80211_vif_use_reserved_switch(%struct.ieee80211_local* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.ieee80211_chanctx*, %struct.ieee80211_chanctx** %5, align 8
  %102 = getelementptr inbounds %struct.ieee80211_chanctx, %struct.ieee80211_chanctx* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IEEE80211_CHANCTX_REPLACES_OTHER, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %117

108:                                              ; preds = %100
  %109 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %110 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @wiphy_info(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %108, %95, %90
  br label %116

116:                                              ; preds = %115, %84
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %106, %72, %49, %40, %28
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ieee80211_chanctx* @ieee80211_vif_get_chanctx(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_vif_use_reserved_reassign(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_vif_use_reserved_assign(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_vif_use_reserved_switch(%struct.ieee80211_local*) #1

declare dso_local i32 @wiphy_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
