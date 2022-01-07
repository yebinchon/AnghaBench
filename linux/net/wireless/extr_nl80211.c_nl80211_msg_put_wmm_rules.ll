; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_msg_put_wmm_rules.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_msg_put_wmm_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_reg_rule = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_FREQUENCY_ATTR_WMM = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@NL80211_WMMR_CW_MIN = common dso_local global i32 0, align 4
@NL80211_WMMR_CW_MAX = common dso_local global i32 0, align 4
@NL80211_WMMR_AIFSN = common dso_local global i32 0, align 4
@NL80211_WMMR_TXOP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_reg_rule*)* @nl80211_msg_put_wmm_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_msg_put_wmm_rules(%struct.sk_buff* %0, %struct.ieee80211_reg_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_reg_rule*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_reg_rule* %1, %struct.ieee80211_reg_rule** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NL80211_FREQUENCY_ATTR_WMM, align 4
  %11 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %9, i32 %10)
  store %struct.nlattr* %11, %struct.nlattr** %7, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %95

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %88, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %21, i32 %22)
  store %struct.nlattr* %23, %struct.nlattr** %8, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %95

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @NL80211_WMMR_CW_MIN, align 4
  %30 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @nla_put_u16(%struct.sk_buff* %28, i32 %29, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %83, label %41

41:                                               ; preds = %27
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @NL80211_WMMR_CW_MAX, align 4
  %44 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @nla_put_u16(%struct.sk_buff* %42, i32 %43, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %41
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @NL80211_WMMR_AIFSN, align 4
  %58 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @nla_put_u8(%struct.sk_buff* %56, i32 %57, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %55
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i32, i32* @NL80211_WMMR_TXOP, align 4
  %72 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %5, align 8
  %73 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @nla_put_u16(%struct.sk_buff* %70, i32 %71, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69, %55, %41, %27
  br label %95

84:                                               ; preds = %69
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %87 = call i32 @nla_nest_end(%struct.sk_buff* %85, %struct.nlattr* %86)
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %16

91:                                               ; preds = %16
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %94 = call i32 @nla_nest_end(%struct.sk_buff* %92, %struct.nlattr* %93)
  store i32 0, i32* %3, align 4
  br label %98

95:                                               ; preds = %83, %26, %14
  %96 = load i32, i32* @ENOBUFS, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
