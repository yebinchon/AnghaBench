; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_put_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_put_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg802154_registered_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wpan_phy_supported }
%struct.wpan_phy_supported = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32*, i32*, i64* }
%struct.nlattr = type { i32 }

@NL802154_ATTR_WPAN_PHY_CAPS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_CHANNELS = common dso_local global i32 0, align 4
@IEEE802154_MAX_PAGE = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_ED_LEVEL = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_CCA_ED_LEVELS = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_TXPOWER = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_TX_POWERS = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_MODE = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_CCA_MODES = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_CCA_OPTS = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MIN_MINBE = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MAX_MINBE = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MIN_MAXBE = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MAX_MAXBE = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MIN_CSMA_BACKOFFS = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MAX_CSMA_BACKOFFS = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MIN_FRAME_RETRIES = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_MAX_FRAME_RETRIES = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_IFTYPES = common dso_local global i32 0, align 4
@NL802154_CAP_ATTR_LBT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.cfg802154_registered_device*)* @nl802154_put_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_put_capabilities(%struct.sk_buff* %0, %struct.cfg802154_registered_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cfg802154_registered_device*, align 8
  %6 = alloca %struct.wpan_phy_supported*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.cfg802154_registered_device* %1, %struct.cfg802154_registered_device** %5, align 8
  %12 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %13 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.wpan_phy_supported* %14, %struct.wpan_phy_supported** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load i32, i32* @NL802154_ATTR_WPAN_PHY_CAPS, align 4
  %17 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %15, i32 %16)
  store %struct.nlattr* %17, %struct.nlattr** %7, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %19 = icmp ne %struct.nlattr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOBUFS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %278

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @NL802154_CAP_ATTR_CHANNELS, align 4
  %26 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %24, i32 %25)
  store %struct.nlattr* %26, %struct.nlattr** %8, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %278

32:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @IEEE802154_MAX_PAGE, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %39 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %38, i32 0, i32 16
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %50 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %49, i32 0, i32 16
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @nl802154_put_flags(%struct.sk_buff* %47, i32 %48, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @ENOBUFS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %278

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %69 = call i32 @nla_nest_end(%struct.sk_buff* %67, %struct.nlattr* %68)
  %70 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %71 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WPAN_PHY_FLAG_CCA_ED_LEVEL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %116

77:                                               ; preds = %66
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i32, i32* @NL802154_CAP_ATTR_CCA_ED_LEVELS, align 4
  %80 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %78, i32 %79)
  store %struct.nlattr* %80, %struct.nlattr** %10, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @ENOBUFS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %278

86:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %109, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %90 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %87
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %97 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %96, i32 0, i32 15
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @nla_put_s32(%struct.sk_buff* %94, i32 %95, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* @ENOBUFS, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %278

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %115 = call i32 @nla_nest_end(%struct.sk_buff* %113, %struct.nlattr* %114)
  br label %116

116:                                              ; preds = %112, %66
  %117 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %118 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @WPAN_PHY_FLAG_TXPOWER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %116
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load i32, i32* @NL802154_CAP_ATTR_TX_POWERS, align 4
  %127 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %125, i32 %126)
  store %struct.nlattr* %127, %struct.nlattr** %11, align 8
  %128 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = load i32, i32* @ENOBUFS, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %278

133:                                              ; preds = %124
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %156, %133
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %137 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %134
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %144 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %143, i32 0, i32 14
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @nla_put_s32(%struct.sk_buff* %141, i32 %142, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* @ENOBUFS, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %278

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %134

159:                                              ; preds = %134
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %162 = call i32 @nla_nest_end(%struct.sk_buff* %160, %struct.nlattr* %161)
  br label %163

163:                                              ; preds = %159, %116
  %164 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %5, align 8
  %165 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @WPAN_PHY_FLAG_CCA_MODE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %191

171:                                              ; preds = %163
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = load i32, i32* @NL802154_CAP_ATTR_CCA_MODES, align 4
  %174 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %175 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %174, i32 0, i32 13
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @nl802154_put_flags(%struct.sk_buff* %172, i32 %173, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %187, label %179

179:                                              ; preds = %171
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = load i32, i32* @NL802154_CAP_ATTR_CCA_OPTS, align 4
  %182 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %183 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %182, i32 0, i32 12
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @nl802154_put_flags(%struct.sk_buff* %180, i32 %181, i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179, %171
  %188 = load i32, i32* @ENOBUFS, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %278

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190, %163
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = load i32, i32* @NL802154_CAP_ATTR_MIN_MINBE, align 4
  %194 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %195 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %194, i32 0, i32 11
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @nla_put_u8(%struct.sk_buff* %192, i32 %193, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %271, label %199

199:                                              ; preds = %191
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = load i32, i32* @NL802154_CAP_ATTR_MAX_MINBE, align 4
  %202 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %203 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @nla_put_u8(%struct.sk_buff* %200, i32 %201, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %271, label %207

207:                                              ; preds = %199
  %208 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %209 = load i32, i32* @NL802154_CAP_ATTR_MIN_MAXBE, align 4
  %210 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %211 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @nla_put_u8(%struct.sk_buff* %208, i32 %209, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %271, label %215

215:                                              ; preds = %207
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = load i32, i32* @NL802154_CAP_ATTR_MAX_MAXBE, align 4
  %218 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %219 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @nla_put_u8(%struct.sk_buff* %216, i32 %217, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %271, label %223

223:                                              ; preds = %215
  %224 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %225 = load i32, i32* @NL802154_CAP_ATTR_MIN_CSMA_BACKOFFS, align 4
  %226 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %227 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = call i64 @nla_put_u8(%struct.sk_buff* %224, i32 %225, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %271, label %231

231:                                              ; preds = %223
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = load i32, i32* @NL802154_CAP_ATTR_MAX_CSMA_BACKOFFS, align 4
  %234 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %235 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = call i64 @nla_put_u8(%struct.sk_buff* %232, i32 %233, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %271, label %239

239:                                              ; preds = %231
  %240 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %241 = load i32, i32* @NL802154_CAP_ATTR_MIN_FRAME_RETRIES, align 4
  %242 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %243 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @nla_put_s8(%struct.sk_buff* %240, i32 %241, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %271, label %247

247:                                              ; preds = %239
  %248 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %249 = load i32, i32* @NL802154_CAP_ATTR_MAX_FRAME_RETRIES, align 4
  %250 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %251 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = call i64 @nla_put_s8(%struct.sk_buff* %248, i32 %249, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %271, label %255

255:                                              ; preds = %247
  %256 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %257 = load i32, i32* @NL802154_CAP_ATTR_IFTYPES, align 4
  %258 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %259 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = call i64 @nl802154_put_flags(%struct.sk_buff* %256, i32 %257, i64 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %271, label %263

263:                                              ; preds = %255
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = load i32, i32* @NL802154_CAP_ATTR_LBT, align 4
  %266 = load %struct.wpan_phy_supported*, %struct.wpan_phy_supported** %6, align 8
  %267 = getelementptr inbounds %struct.wpan_phy_supported, %struct.wpan_phy_supported* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @nla_put_u32(%struct.sk_buff* %264, i32 %265, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %263, %255, %247, %239, %231, %223, %215, %207, %199, %191
  %272 = load i32, i32* @ENOBUFS, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %3, align 4
  br label %278

274:                                              ; preds = %263
  %275 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %276 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %277 = call i32 @nla_nest_end(%struct.sk_buff* %275, %struct.nlattr* %276)
  store i32 0, i32* %3, align 4
  br label %278

278:                                              ; preds = %274, %271, %187, %152, %130, %105, %83, %58, %29, %20
  %279 = load i32, i32* %3, align 4
  ret i32 %279
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nl802154_put_flags(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_s8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
