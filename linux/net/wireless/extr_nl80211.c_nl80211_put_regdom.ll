; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_put_regdom.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_put_regdom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32, %struct.ieee80211_reg_rule*, i64, i32 }
%struct.ieee80211_reg_rule = type { i32, i32, %struct.ieee80211_power_rule, %struct.ieee80211_freq_range }
%struct.ieee80211_power_rule = type { i32, i32 }
%struct.ieee80211_freq_range = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_REG_ALPHA2 = common dso_local global i32 0, align 4
@NL80211_ATTR_DFS_REGION = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_RULES = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_RULE_FLAGS = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_START = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_END = common dso_local global i32 0, align 4
@NL80211_ATTR_FREQ_RANGE_MAX_BW = common dso_local global i32 0, align 4
@NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN = common dso_local global i32 0, align 4
@NL80211_ATTR_POWER_RULE_MAX_EIRP = common dso_local global i32 0, align 4
@NL80211_ATTR_DFS_CAC_TIME = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*, %struct.sk_buff*)* @nl80211_put_regdom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_put_regdom(%struct.ieee80211_regdomain* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_regdomain*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.ieee80211_reg_rule*, align 8
  %10 = alloca %struct.ieee80211_freq_range*, align 8
  %11 = alloca %struct.ieee80211_power_rule*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load i32, i32* @NL80211_ATTR_REG_ALPHA2, align 4
  %15 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @nla_put_string(%struct.sk_buff* %13, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @NL80211_ATTR_DFS_REGION, align 4
  %28 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @nla_put_u8(%struct.sk_buff* %26, i32 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %2
  br label %141

34:                                               ; preds = %25, %20
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @NL80211_ATTR_REG_RULES, align 4
  %37 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %35, i32 %36)
  store %struct.nlattr* %37, %struct.nlattr** %6, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %141

41:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %134, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %137

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %49, i32 0, i32 1
  %51 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %51, i64 %53
  store %struct.ieee80211_reg_rule* %54, %struct.ieee80211_reg_rule** %9, align 8
  %55 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %55, i32 0, i32 3
  store %struct.ieee80211_freq_range* %56, %struct.ieee80211_freq_range** %10, align 8
  %57 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %57, i32 0, i32 2
  store %struct.ieee80211_power_rule* %58, %struct.ieee80211_power_rule** %11, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %59, i32 %60)
  store %struct.nlattr* %61, %struct.nlattr** %8, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  br label %141

65:                                               ; preds = %48
  %66 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %67 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %4, align 8
  %73 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %74 = call i32 @reg_get_max_bandwidth(%struct.ieee80211_regdomain* %72, %struct.ieee80211_reg_rule* %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* @NL80211_ATTR_REG_RULE_FLAGS, align 4
  %78 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @nla_put_u32(%struct.sk_buff* %76, i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %129, label %83

83:                                               ; preds = %75
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load i32, i32* @NL80211_ATTR_FREQ_RANGE_START, align 4
  %86 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %87 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @nla_put_u32(%struct.sk_buff* %84, i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %129, label %91

91:                                               ; preds = %83
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = load i32, i32* @NL80211_ATTR_FREQ_RANGE_END, align 4
  %94 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %10, align 8
  %95 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @nla_put_u32(%struct.sk_buff* %92, i32 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %129, label %99

99:                                               ; preds = %91
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load i32, i32* @NL80211_ATTR_FREQ_RANGE_MAX_BW, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i64 @nla_put_u32(%struct.sk_buff* %100, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %129, label %105

105:                                              ; preds = %99
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i32, i32* @NL80211_ATTR_POWER_RULE_MAX_ANT_GAIN, align 4
  %108 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %11, align 8
  %109 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @nla_put_u32(%struct.sk_buff* %106, i32 %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %105
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = load i32, i32* @NL80211_ATTR_POWER_RULE_MAX_EIRP, align 4
  %116 = load %struct.ieee80211_power_rule*, %struct.ieee80211_power_rule** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_power_rule, %struct.ieee80211_power_rule* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @nla_put_u32(%struct.sk_buff* %114, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = load i32, i32* @NL80211_ATTR_DFS_CAC_TIME, align 4
  %124 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %9, align 8
  %125 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @nla_put_u32(%struct.sk_buff* %122, i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121, %113, %105, %99, %91, %83, %75
  br label %141

130:                                              ; preds = %121
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %133 = call i32 @nla_nest_end(%struct.sk_buff* %131, %struct.nlattr* %132)
  br label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %42

137:                                              ; preds = %42
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %140 = call i32 @nla_nest_end(%struct.sk_buff* %138, %struct.nlattr* %139)
  store i32 0, i32* %3, align 4
  br label %144

141:                                              ; preds = %129, %64, %40, %33
  %142 = load i32, i32* @EMSGSIZE, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @reg_get_max_bandwidth(%struct.ieee80211_regdomain*, %struct.ieee80211_reg_rule*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
