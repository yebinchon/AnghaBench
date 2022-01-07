; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_coalesce_rules.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_coalesce_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.cfg80211_coalesce_rules* }
%struct.cfg80211_coalesce_rules = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_COALESCE_RULE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_COALESCE_RULE_DELAY = common dso_local global i32 0, align 4
@NL80211_ATTR_COALESCE_RULE_CONDITION = common dso_local global i32 0, align 4
@NL80211_ATTR_COALESCE_RULE_PKT_PATTERN = common dso_local global i32 0, align 4
@NL80211_PKTPAT_MASK = common dso_local global i32 0, align 4
@NL80211_PKTPAT_PATTERN = common dso_local global i32 0, align 4
@NL80211_PKTPAT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg80211_registered_device*)* @nl80211_send_coalesce_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_coalesce_rules(%struct.sk_buff* %0, %struct.cfg80211_registered_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfg80211_coalesce_rules*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg80211_registered_device* %1, %struct.cfg80211_registered_device** %5, align 8
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %179

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @NL80211_ATTR_COALESCE_RULE, align 4
  %24 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %22, i32 %23)
  store %struct.nlattr* %24, %struct.nlattr** %9, align 8
  %25 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOBUFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %179

30:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %172, %30
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %175

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %40, i32 %42)
  store %struct.nlattr* %43, %struct.nlattr** %8, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOBUFS, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %179

49:                                               ; preds = %39
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %54, i64 %56
  store %struct.cfg80211_coalesce_rules* %57, %struct.cfg80211_coalesce_rules** %13, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @NL80211_ATTR_COALESCE_RULE_DELAY, align 4
  %60 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %61 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %49
  %66 = load i32, i32* @ENOBUFS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %179

68:                                               ; preds = %49
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* @NL80211_ATTR_COALESCE_RULE_CONDITION, align 4
  %71 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %72 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @nla_put_u32(%struct.sk_buff* %69, i32 %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @ENOBUFS, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %179

79:                                               ; preds = %68
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = load i32, i32* @NL80211_ATTR_COALESCE_RULE_PKT_PATTERN, align 4
  %82 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %80, i32 %81)
  store %struct.nlattr* %82, %struct.nlattr** %6, align 8
  %83 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %84 = icmp ne %struct.nlattr* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOBUFS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %179

88:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %162, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %92 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %165

95:                                               ; preds = %89
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %96, i32 %98)
  store %struct.nlattr* %99, %struct.nlattr** %7, align 8
  %100 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %101 = icmp ne %struct.nlattr* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @ENOBUFS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %179

105:                                              ; preds = %95
  %106 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %107 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %12, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load i32, i32* @NL80211_PKTPAT_MASK, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @DIV_ROUND_UP(i32 %116, i32 8)
  %118 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %119 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @nla_put(%struct.sk_buff* %114, i32 %115, i32 %117, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %155, label %128

128:                                              ; preds = %105
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = load i32, i32* @NL80211_PKTPAT_PATTERN, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %133 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @nla_put(%struct.sk_buff* %129, i32 %130, i32 %131, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %155, label %142

142:                                              ; preds = %128
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = load i32, i32* @NL80211_PKTPAT_OFFSET, align 4
  %145 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %13, align 8
  %146 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @nla_put_u32(%struct.sk_buff* %143, i32 %144, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %142, %128, %105
  %156 = load i32, i32* @ENOBUFS, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %179

158:                                              ; preds = %142
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %161 = call i32 @nla_nest_end(%struct.sk_buff* %159, %struct.nlattr* %160)
  br label %162

162:                                              ; preds = %158
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %89

165:                                              ; preds = %89
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %168 = call i32 @nla_nest_end(%struct.sk_buff* %166, %struct.nlattr* %167)
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %171 = call i32 @nla_nest_end(%struct.sk_buff* %169, %struct.nlattr* %170)
  br label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %31

175:                                              ; preds = %31
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %178 = call i32 @nla_nest_end(%struct.sk_buff* %176, %struct.nlattr* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %175, %155, %102, %85, %76, %65, %46, %27, %20
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
