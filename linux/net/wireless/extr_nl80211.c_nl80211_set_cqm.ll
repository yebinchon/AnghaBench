; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_cqm.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_set_cqm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, %struct.nlattr** }
%struct.nlattr = type { i32 }

@NL80211_ATTR_CQM_MAX = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nl80211_attr_cqm_policy = common dso_local global i32 0, align 4
@NL80211_ATTR_CQM_RSSI_THOLD = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_RSSI_HYST = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_TXE_RATE = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_TXE_PKTS = common dso_local global i64 0, align 8
@NL80211_ATTR_CQM_TXE_INTVL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_set_cqm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_cqm(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %17 = load i32, i32* @NL80211_ATTR_CQM_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load %struct.nlattr**, %struct.nlattr*** %23, align 8
  %25 = load i64, i64* @NL80211_ATTR_CQM, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  store %struct.nlattr* %27, %struct.nlattr** %8, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %117

33:                                               ; preds = %2
  %34 = load i32, i32* @NL80211_ATTR_CQM_MAX, align 4
  %35 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %36 = load i32, i32* @nl80211_attr_cqm_policy, align 4
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %21, i32 %34, %struct.nlattr* %35, i32 %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %117

45:                                               ; preds = %33
  %46 = load i64, i64* @NL80211_ATTR_CQM_RSSI_THOLD, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %50, label %81

50:                                               ; preds = %45
  %51 = load i64, i64* @NL80211_ATTR_CQM_RSSI_HYST, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = load i64, i64* @NL80211_ATTR_CQM_RSSI_THOLD, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32* @nla_data(%struct.nlattr* %58)
  store i32* %59, i32** %11, align 8
  %60 = load i64, i64* @NL80211_ATTR_CQM_RSSI_THOLD, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @nla_len(%struct.nlattr* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i64, i64* @NL80211_ATTR_CQM_RSSI_HYST, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @nla_get_u32(%struct.nlattr* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = srem i32 %68, 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %117

74:                                               ; preds = %55
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 %77, 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @nl80211_set_cqm_rssi(%struct.genl_info* %75, i32* %76, i32 %78, i32 %79)
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %117

81:                                               ; preds = %50, %45
  %82 = load i64, i64* @NL80211_ATTR_CQM_TXE_RATE, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = load i64, i64* @NL80211_ATTR_CQM_TXE_PKTS, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %114

91:                                               ; preds = %86
  %92 = load i64, i64* @NL80211_ATTR_CQM_TXE_INTVL, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = icmp ne %struct.nlattr* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load i64, i64* @NL80211_ATTR_CQM_TXE_RATE, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i32 @nla_get_u32(%struct.nlattr* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i64, i64* @NL80211_ATTR_CQM_TXE_PKTS, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i32 @nla_get_u32(%struct.nlattr* %103)
  store i32 %104, i32* %15, align 4
  %105 = load i64, i64* @NL80211_ATTR_CQM_TXE_INTVL, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = call i32 @nla_get_u32(%struct.nlattr* %107)
  store i32 %108, i32* %16, align 4
  %109 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @nl80211_set_cqm_txe(%struct.genl_info* %109, i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %117

114:                                              ; preds = %91, %86, %81
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %114, %96, %74, %71, %43, %30
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32) #2

declare dso_local i32* @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @nl80211_set_cqm_rssi(%struct.genl_info*, i32*, i32, i32) #2

declare dso_local i32 @nl80211_set_cqm_txe(%struct.genl_info*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
