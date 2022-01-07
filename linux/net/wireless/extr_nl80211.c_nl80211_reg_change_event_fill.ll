; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_reg_change_event_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_reg_change_event_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.regulatory_request = type { i8*, i64, i64, i32 }
%struct.wiphy = type { i32 }

@NL80211_ATTR_REG_INITIATOR = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_TYPE = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_WORLD = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_CUSTOM_WORLD = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_INTERSECTION = common dso_local global i32 0, align 4
@NL80211_REGDOM_TYPE_COUNTRY = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_ALPHA2 = common dso_local global i32 0, align 4
@WIPHY_IDX_INVALID = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@REGULATORY_WIPHY_SELF_MANAGED = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_SELF_MANAGED_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.regulatory_request*)* @nl80211_reg_change_event_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_reg_change_event_fill(%struct.sk_buff* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.wiphy*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @NL80211_ATTR_REG_INITIATOR, align 4
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %10 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @nla_put_u8(%struct.sk_buff* %7, i32 %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %150

15:                                               ; preds = %2
  %16 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %17 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %23, label %39

23:                                               ; preds = %15
  %24 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %25 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %34 = load i32, i32* @NL80211_REGDOM_TYPE_WORLD, align 4
  %35 = call i64 @nla_put_u8(%struct.sk_buff* %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %150

38:                                               ; preds = %31
  br label %110

39:                                               ; preds = %23, %15
  %40 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %41 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 57
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %49 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 57
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %58 = load i32, i32* @NL80211_REGDOM_TYPE_CUSTOM_WORLD, align 4
  %59 = call i64 @nla_put_u8(%struct.sk_buff* %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %150

62:                                               ; preds = %55
  br label %109

63:                                               ; preds = %47, %39
  %64 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %65 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 57
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %73 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 56
  br i1 %78, label %84, label %79

79:                                               ; preds = %71, %63
  %80 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %81 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79, %71
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %87 = load i32, i32* @NL80211_REGDOM_TYPE_INTERSECTION, align 4
  %88 = call i64 @nla_put_u8(%struct.sk_buff* %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %150

91:                                               ; preds = %84
  br label %108

92:                                               ; preds = %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* @NL80211_ATTR_REG_TYPE, align 4
  %95 = load i32, i32* @NL80211_REGDOM_TYPE_COUNTRY, align 4
  %96 = call i64 @nla_put_u8(%struct.sk_buff* %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %92
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load i32, i32* @NL80211_ATTR_REG_ALPHA2, align 4
  %101 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %102 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @nla_put_string(%struct.sk_buff* %99, i32 %100, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98, %92
  br label %150

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %91
  br label %109

109:                                              ; preds = %108, %62
  br label %110

110:                                              ; preds = %109, %38
  %111 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %112 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WIPHY_IDX_INVALID, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %149

116:                                              ; preds = %110
  %117 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %118 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call %struct.wiphy* @wiphy_idx_to_wiphy(i64 %119)
  store %struct.wiphy* %120, %struct.wiphy** %6, align 8
  %121 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %122 = icmp ne %struct.wiphy* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %116
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %126 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %127 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @nla_put_u32(%struct.sk_buff* %124, i32 %125, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %150

132:                                              ; preds = %123, %116
  %133 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %134 = icmp ne %struct.wiphy* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %137 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @REGULATORY_WIPHY_SELF_MANAGED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = load i32, i32* @NL80211_ATTR_WIPHY_SELF_MANAGED_REG, align 4
  %145 = call i64 @nla_put_flag(%struct.sk_buff* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %150

148:                                              ; preds = %142, %135, %132
  br label %149

149:                                              ; preds = %148, %110
  store i32 1, i32* %3, align 4
  br label %151

150:                                              ; preds = %147, %131, %106, %90, %61, %37, %14
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %149
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i64) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
