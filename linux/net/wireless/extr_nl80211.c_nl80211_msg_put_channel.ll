; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_msg_put_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_msg_put_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.wiphy = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_reg_rule = type { i64 }

@IEEE80211_CHAN_NO_10MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_20MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_FREQ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_IR = common dso_local global i32 0, align 4
@__NL80211_FREQUENCY_ATTR_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_RADAR = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DFS_STATE = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DFS_TIME = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_DFS_CAC_TIME = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_HT40_MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_HT40_PLUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_INDOOR_ONLY = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_INDOOR_ONLY = common dso_local global i32 0, align 4
@IEEE80211_CHAN_IR_CONCURRENT = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_IR_CONCURRENT = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_20MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_NO_10MHZ = common dso_local global i32 0, align 4
@NL80211_FREQUENCY_ATTR_MAX_TX_POWER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.wiphy*, %struct.ieee80211_channel*, i32)* @nl80211_msg_put_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_msg_put_channel(%struct.sk_buff* %0, %struct.wiphy* %1, %struct.ieee80211_channel* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_reg_rule*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.wiphy* %1, %struct.wiphy** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_CHAN_NO_10MHZ, align 4
  %19 = load i32, i32* @IEEE80211_CHAN_NO_20MHZ, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %261

24:                                               ; preds = %14, %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* @NL80211_FREQUENCY_ATTR_FREQ, align 4
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @nla_put_u32(%struct.sk_buff* %25, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %258

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @NL80211_FREQUENCY_ATTR_DISABLED, align 4
  %43 = call i64 @nla_put_flag(%struct.sk_buff* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %258

46:                                               ; preds = %40, %33
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_IR, align 4
  %56 = call i64 @nla_put_flag(%struct.sk_buff* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %258

59:                                               ; preds = %53
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @__NL80211_FREQUENCY_ATTR_NO_IBSS, align 4
  %62 = call i64 @nla_put_flag(%struct.sk_buff* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %258

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %113

73:                                               ; preds = %66
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i32, i32* @NL80211_FREQUENCY_ATTR_RADAR, align 4
  %76 = call i64 @nla_put_flag(%struct.sk_buff* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %258

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %112

82:                                               ; preds = %79
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @elapsed_jiffies_msecs(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = load i32, i32* @NL80211_FREQUENCY_ATTR_DFS_STATE, align 4
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %90 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @nla_put_u32(%struct.sk_buff* %87, i32 %88, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %258

95:                                               ; preds = %82
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = load i32, i32* @NL80211_FREQUENCY_ATTR_DFS_TIME, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @nla_put_u32(%struct.sk_buff* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %258

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load i32, i32* @NL80211_FREQUENCY_ATTR_DFS_CAC_TIME, align 4
  %105 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @nla_put_u32(%struct.sk_buff* %103, i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  br label %258

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %79
  br label %113

113:                                              ; preds = %112, %66
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %221

116:                                              ; preds = %113
  %117 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %118 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_HT40_MINUS, align 4
  %126 = call i64 @nla_put_flag(%struct.sk_buff* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %258

129:                                              ; preds = %123, %116
  %130 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %131 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %138 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_HT40_PLUS, align 4
  %139 = call i64 @nla_put_flag(%struct.sk_buff* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %258

142:                                              ; preds = %136, %129
  %143 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %144 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %151 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_80MHZ, align 4
  %152 = call i64 @nla_put_flag(%struct.sk_buff* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %258

155:                                              ; preds = %149, %142
  %156 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %157 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %164 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_160MHZ, align 4
  %165 = call i64 @nla_put_flag(%struct.sk_buff* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %258

168:                                              ; preds = %162, %155
  %169 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %170 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IEEE80211_CHAN_INDOOR_ONLY, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = load i32, i32* @NL80211_FREQUENCY_ATTR_INDOOR_ONLY, align 4
  %178 = call i64 @nla_put_flag(%struct.sk_buff* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %258

181:                                              ; preds = %175, %168
  %182 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %183 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IEEE80211_CHAN_IR_CONCURRENT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = load i32, i32* @NL80211_FREQUENCY_ATTR_IR_CONCURRENT, align 4
  %191 = call i64 @nla_put_flag(%struct.sk_buff* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %258

194:                                              ; preds = %188, %181
  %195 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %196 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IEEE80211_CHAN_NO_20MHZ, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %194
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_20MHZ, align 4
  %204 = call i64 @nla_put_flag(%struct.sk_buff* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %258

207:                                              ; preds = %201, %194
  %208 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %209 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @IEEE80211_CHAN_NO_10MHZ, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %216 = load i32, i32* @NL80211_FREQUENCY_ATTR_NO_10MHZ, align 4
  %217 = call i64 @nla_put_flag(%struct.sk_buff* %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  br label %258

220:                                              ; preds = %214, %207
  br label %221

221:                                              ; preds = %220, %113
  %222 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %223 = load i32, i32* @NL80211_FREQUENCY_ATTR_MAX_TX_POWER, align 4
  %224 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %225 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @DBM_TO_MBM(i32 %226)
  %228 = call i64 @nla_put_u32(%struct.sk_buff* %222, i32 %223, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %258

231:                                              ; preds = %221
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %231
  %235 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %236 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %237 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @MHZ_TO_KHZ(i32 %238)
  %240 = call %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy* %235, i32 %239)
  store %struct.ieee80211_reg_rule* %240, %struct.ieee80211_reg_rule** %11, align 8
  %241 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %242 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_reg_rule* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %234
  %245 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %246 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %244
  %250 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %251 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %252 = call i64 @nl80211_msg_put_wmm_rules(%struct.sk_buff* %250, %struct.ieee80211_reg_rule* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %258

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255, %244, %234
  br label %257

257:                                              ; preds = %256, %231
  store i32 0, i32* %5, align 4
  br label %261

258:                                              ; preds = %254, %230, %219, %206, %193, %180, %167, %154, %141, %128, %110, %101, %94, %78, %64, %58, %45, %32
  %259 = load i32, i32* @ENOBUFS, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %5, align 4
  br label %261

261:                                              ; preds = %258, %257, %23
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @elapsed_jiffies_msecs(i32) #1

declare dso_local i32 @DBM_TO_MBM(i32) #1

declare dso_local %struct.ieee80211_reg_rule* @freq_reg_info(%struct.wiphy*, i32) #1

declare dso_local i32 @MHZ_TO_KHZ(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_reg_rule*) #1

declare dso_local i64 @nl80211_msg_put_wmm_rules(%struct.sk_buff*, %struct.ieee80211_reg_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
