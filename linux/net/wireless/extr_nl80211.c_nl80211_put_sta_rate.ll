; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_put_sta_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_put_sta_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rate_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_RATE_INFO_BITRATE32 = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_BITRATE = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_5_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_10_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_HE_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_VHT_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_VHT_NSS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_HE_MCS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_HE_NSS = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_HE_GI = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_HE_DCM = common dso_local global i32 0, align 4
@NL80211_RATE_INFO_HE_RU_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl80211_put_sta_rate(%struct.sk_buff* %0, %struct.rate_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rate_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.rate_info* %1, %struct.rate_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %8, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %216

18:                                               ; preds = %3
  %19 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %20 = call i64 @cfg80211_calculate_bitrate(%struct.rate_info* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 65536
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* @NL80211_RATE_INFO_BITRATE32, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @nla_put_u32(%struct.sk_buff* %31, i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %216

37:                                               ; preds = %30, %26
  %38 = load i64, i64* %10, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = load i32, i32* @NL80211_RATE_INFO_BITRATE, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @nla_put_u16(%struct.sk_buff* %41, i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %216

47:                                               ; preds = %40, %37
  %48 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %49 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %55 [
    i32 130, label %51
    i32 134, label %53
    i32 132, label %57
    i32 131, label %58
    i32 129, label %60
    i32 133, label %62
    i32 128, label %64
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @NL80211_RATE_INFO_5_MHZ_WIDTH, align 4
  store i32 %52, i32* %11, align 4
  br label %74

53:                                               ; preds = %47
  %54 = load i32, i32* @NL80211_RATE_INFO_10_MHZ_WIDTH, align 4
  store i32 %54, i32* %11, align 4
  br label %74

55:                                               ; preds = %47
  %56 = call i32 @WARN_ON(i32 1)
  br label %57

57:                                               ; preds = %47, %55
  store i32 0, i32* %11, align 4
  br label %74

58:                                               ; preds = %47
  %59 = load i32, i32* @NL80211_RATE_INFO_40_MHZ_WIDTH, align 4
  store i32 %59, i32* %11, align 4
  br label %74

60:                                               ; preds = %47
  %61 = load i32, i32* @NL80211_RATE_INFO_80_MHZ_WIDTH, align 4
  store i32 %61, i32* %11, align 4
  br label %74

62:                                               ; preds = %47
  %63 = load i32, i32* @NL80211_RATE_INFO_160_MHZ_WIDTH, align 4
  store i32 %63, i32* %11, align 4
  br label %74

64:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %65 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %66 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @RATE_INFO_FLAGS_HE_MCS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN_ON(i32 %72)
  br label %74

74:                                               ; preds = %64, %62, %60, %58, %57, %53, %51
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i64 @nla_put_flag(%struct.sk_buff* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %216

83:                                               ; preds = %77, %74
  %84 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %85 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* @NL80211_RATE_INFO_MCS, align 4
  %93 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %94 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @nla_put_u8(%struct.sk_buff* %91, i32 %92, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %216

99:                                               ; preds = %90
  %100 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %101 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i32, i32* @NL80211_RATE_INFO_SHORT_GI, align 4
  %109 = call i64 @nla_put_flag(%struct.sk_buff* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %216

112:                                              ; preds = %106, %99
  br label %212

113:                                              ; preds = %83
  %114 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %115 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %152

120:                                              ; preds = %113
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load i32, i32* @NL80211_RATE_INFO_VHT_MCS, align 4
  %123 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %124 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @nla_put_u8(%struct.sk_buff* %121, i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %216

129:                                              ; preds = %120
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load i32, i32* @NL80211_RATE_INFO_VHT_NSS, align 4
  %132 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %133 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @nla_put_u8(%struct.sk_buff* %130, i32 %131, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %216

138:                                              ; preds = %129
  %139 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %140 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = load i32, i32* @NL80211_RATE_INFO_SHORT_GI, align 4
  %148 = call i64 @nla_put_flag(%struct.sk_buff* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %216

151:                                              ; preds = %145, %138
  br label %211

152:                                              ; preds = %113
  %153 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %154 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RATE_INFO_FLAGS_HE_MCS, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %210

159:                                              ; preds = %152
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = load i32, i32* @NL80211_RATE_INFO_HE_MCS, align 4
  %162 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %163 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @nla_put_u8(%struct.sk_buff* %160, i32 %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %216

168:                                              ; preds = %159
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = load i32, i32* @NL80211_RATE_INFO_HE_NSS, align 4
  %171 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %172 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @nla_put_u8(%struct.sk_buff* %169, i32 %170, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %216

177:                                              ; preds = %168
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = load i32, i32* @NL80211_RATE_INFO_HE_GI, align 4
  %180 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %181 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @nla_put_u8(%struct.sk_buff* %178, i32 %179, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %216

186:                                              ; preds = %177
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = load i32, i32* @NL80211_RATE_INFO_HE_DCM, align 4
  %189 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %190 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @nla_put_u8(%struct.sk_buff* %187, i32 %188, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %216

195:                                              ; preds = %186
  %196 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %197 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 128
  br i1 %199, label %200, label %209

200:                                              ; preds = %195
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = load i32, i32* @NL80211_RATE_INFO_HE_RU_ALLOC, align 4
  %203 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %204 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @nla_put_u8(%struct.sk_buff* %201, i32 %202, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %216

209:                                              ; preds = %200, %195
  br label %210

210:                                              ; preds = %209, %152
  br label %211

211:                                              ; preds = %210, %151
  br label %212

212:                                              ; preds = %211, %112
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %215 = call i32 @nla_nest_end(%struct.sk_buff* %213, %struct.nlattr* %214)
  store i32 1, i32* %4, align 4
  br label %216

216:                                              ; preds = %212, %208, %194, %185, %176, %167, %150, %137, %128, %111, %98, %82, %46, %36, %17
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @cfg80211_calculate_bitrate(%struct.rate_info*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
