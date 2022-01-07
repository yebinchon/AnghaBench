; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_chandef_vht_oper.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_chandef_vht_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vht_operation = type { i32, i32, i32 }
%struct.ieee80211_ht_operation = type { i32 }
%struct.cfg80211_chan_def = type { i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_HT_OP_MODE_CCFS2_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_OP_MODE_CCFS2_SHIFT = common dso_local global i32 0, align 4
@SUPPORTS_VHT_EXT_NSS_BW = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_80 = common dso_local global i8* null, align 8
@NL80211_CHAN_WIDTH_160 = common dso_local global i8* null, align 8
@NL80211_CHAN_WIDTH_80P80 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_chandef_vht_oper(%struct.ieee80211_hw* %0, %struct.ieee80211_vht_operation* %1, %struct.ieee80211_ht_operation* %2, %struct.cfg80211_chan_def* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vht_operation*, align 8
  %8 = alloca %struct.ieee80211_ht_operation*, align 8
  %9 = alloca %struct.cfg80211_chan_def*, align 8
  %10 = alloca %struct.cfg80211_chan_def, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vht_operation* %1, %struct.ieee80211_vht_operation** %7, align 8
  store %struct.ieee80211_ht_operation* %2, %struct.ieee80211_ht_operation** %8, align 8
  store %struct.cfg80211_chan_def* %3, %struct.cfg80211_chan_def** %9, align 8
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %20 = bitcast %struct.cfg80211_chan_def* %10 to i8*
  %21 = bitcast %struct.cfg80211_chan_def* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %23 = icmp ne %struct.ieee80211_vht_operation* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %8, align 8
  %26 = icmp ne %struct.ieee80211_ht_operation* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %4
  store i32 0, i32* %5, align 4
  br label %124

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.ieee80211_ht_operation*, %struct.ieee80211_ht_operation** %8, align 8
  %36 = getelementptr inbounds %struct.ieee80211_ht_operation, %struct.ieee80211_ht_operation* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = load i32, i32* @IEEE80211_HT_OP_MODE_CCFS2_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @IEEE80211_HT_OP_MODE_CCFS2_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %28
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %49 = load i32, i32* @SUPPORTS_VHT_EXT_NSS_BW, align 4
  %50 = call i64 @ieee80211_hw_check(%struct.ieee80211_hw* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %52, %47, %28
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %57 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ieee80211_channel_to_frequency(i32 %55, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %64 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ieee80211_channel_to_frequency(i32 %62, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.ieee80211_vht_operation*, %struct.ieee80211_vht_operation** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_vht_operation, %struct.ieee80211_vht_operation* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %115 [
    i32 128, label %72
    i32 130, label %73
    i32 131, label %103
    i32 129, label %108
  ]

72:                                               ; preds = %54
  br label %116

73:                                               ; preds = %54
  %74 = load i8*, i8** @NL80211_CHAN_WIDTH_80, align 8
  %75 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 2
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %73
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 @abs(i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 8
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i8*, i8** @NL80211_CHAN_WIDTH_160, align 8
  %89 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %12, align 4
  %91 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  br label %101

92:                                               ; preds = %80
  %93 = load i32, i32* %18, align 4
  %94 = icmp ugt i32 %93, 8
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i8*, i8** @NL80211_CHAN_WIDTH_80P80, align 8
  %97 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 2
  store i8* %96, i8** %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101, %73
  br label %116

103:                                              ; preds = %54
  %104 = load i8*, i8** @NL80211_CHAN_WIDTH_160, align 8
  %105 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 2
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  br label %116

108:                                              ; preds = %54
  %109 = load i8*, i8** @NL80211_CHAN_WIDTH_80P80, align 8
  %110 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 2
  store i8* %109, i8** %110, align 8
  %111 = load i32, i32* %11, align 4
  %112 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  br label %116

115:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %124

116:                                              ; preds = %108, %103, %102, %72
  %117 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %10)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %124

120:                                              ; preds = %116
  %121 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %122 = bitcast %struct.cfg80211_chan_def* %121 to i8*
  %123 = bitcast %struct.cfg80211_chan_def* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 24, i1 false)
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %119, %115, %27
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i64 @ieee80211_hw_check(%struct.ieee80211_hw*, i32) #2

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #2

declare dso_local i32 @abs(i32) #2

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
