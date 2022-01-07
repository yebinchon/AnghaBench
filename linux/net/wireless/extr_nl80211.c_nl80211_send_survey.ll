; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_survey.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.survey_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_CMD_NEW_SURVEY_RESULTS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_SURVEY_INFO = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_FREQUENCY = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_NOISE = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_PAD = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_EXT_BUSY = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME_EXT_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_RX = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME_RX = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME_TX = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_SCAN = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME_SCAN = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BSS_RX = common dso_local global i32 0, align 4
@NL80211_SURVEY_INFO_TIME_BSS_RX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.net_device*, i32, %struct.survey_info*)* @nl80211_send_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_survey(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.net_device* %4, i32 %5, %struct.survey_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.survey_info*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.net_device* %4, %struct.net_device** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.survey_info* %6, %struct.survey_info** %15, align 8
  %18 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %19 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %18, i32 0, i32 9
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %231

26:                                               ; preds = %22, %7
  %27 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @NL80211_CMD_NEW_SURVEY_RESULTS, align 4
  %32 = call i8* @nl80211hdr_put(%struct.sk_buff* %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %231

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %41 = load %struct.net_device*, %struct.net_device** %13, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %225

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load i32, i32* @NL80211_ATTR_SURVEY_INFO, align 4
  %50 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %48, i32 %49)
  store %struct.nlattr* %50, %struct.nlattr** %17, align 8
  %51 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %225

54:                                               ; preds = %47
  %55 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %56 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %55, i32 0, i32 9
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load i32, i32* @NL80211_SURVEY_INFO_FREQUENCY, align 4
  %62 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %63 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %62, i32 0, i32 9
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @nla_put_u32(%struct.sk_buff* %60, i32 %61, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %225

70:                                               ; preds = %59, %54
  %71 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %72 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %70
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load i32, i32* @NL80211_SURVEY_INFO_NOISE, align 4
  %80 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %81 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @nla_put_u8(%struct.sk_buff* %78, i32 %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %225

86:                                               ; preds = %77, %70
  %87 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %88 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = load i32, i32* @NL80211_SURVEY_INFO_IN_USE, align 4
  %96 = call i64 @nla_put_flag(%struct.sk_buff* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %225

99:                                               ; preds = %93, %86
  %100 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %101 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = load i32, i32* @NL80211_SURVEY_INFO_TIME, align 4
  %109 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %110 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %113 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %107, i32 %108, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %225

116:                                              ; preds = %106, %99
  %117 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %118 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = load i32, i32* @NL80211_SURVEY_INFO_TIME_BUSY, align 4
  %126 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %127 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %130 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %124, i32 %125, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %225

133:                                              ; preds = %123, %116
  %134 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %135 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SURVEY_INFO_TIME_EXT_BUSY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %133
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = load i32, i32* @NL80211_SURVEY_INFO_TIME_EXT_BUSY, align 4
  %143 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %144 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %147 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %141, i32 %142, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  br label %225

150:                                              ; preds = %140, %133
  %151 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %152 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SURVEY_INFO_TIME_RX, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = load i32, i32* @NL80211_SURVEY_INFO_TIME_RX, align 4
  %160 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %161 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %164 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %158, i32 %159, i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %225

167:                                              ; preds = %157, %150
  %168 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %169 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @SURVEY_INFO_TIME_TX, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %167
  %175 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %176 = load i32, i32* @NL80211_SURVEY_INFO_TIME_TX, align 4
  %177 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %178 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %181 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %175, i32 %176, i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %225

184:                                              ; preds = %174, %167
  %185 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %186 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SURVEY_INFO_TIME_SCAN, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %193 = load i32, i32* @NL80211_SURVEY_INFO_TIME_SCAN, align 4
  %194 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %195 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %198 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %192, i32 %193, i32 %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %225

201:                                              ; preds = %191, %184
  %202 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %203 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SURVEY_INFO_TIME_BSS_RX, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %201
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = load i32, i32* @NL80211_SURVEY_INFO_TIME_BSS_RX, align 4
  %211 = load %struct.survey_info*, %struct.survey_info** %15, align 8
  %212 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @NL80211_SURVEY_INFO_PAD, align 4
  %215 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %209, i32 %210, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %225

218:                                              ; preds = %208, %201
  %219 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %220 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %221 = call i32 @nla_nest_end(%struct.sk_buff* %219, %struct.nlattr* %220)
  %222 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %223 = load i8*, i8** %16, align 8
  %224 = call i32 @genlmsg_end(%struct.sk_buff* %222, i8* %223)
  store i32 0, i32* %8, align 4
  br label %231

225:                                              ; preds = %217, %200, %183, %166, %149, %132, %115, %98, %85, %69, %53, %46
  %226 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = call i32 @genlmsg_cancel(%struct.sk_buff* %226, i8* %227)
  %229 = load i32, i32* @EMSGSIZE, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %8, align 4
  br label %231

231:                                              ; preds = %225, %218, %35, %25
  %232 = load i32, i32* %8, align 4
  ret i32 %232
}

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
