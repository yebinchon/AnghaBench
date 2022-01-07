; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i64*, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { %struct.genl_info*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.wiphy_vendor_command* }
%struct.wiphy_vendor_command = type { i32, i32 (%struct.TYPE_4__*, %struct.wireless_dev*, i8*, i32)*, %struct.TYPE_3__ }
%struct.wireless_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_ID = common dso_local global i64 0, align 8
@NL80211_ATTR_VENDOR_SUBCMD = common dso_local global i64 0, align 8
@WIPHY_VENDOR_CMD_NEED_WDEV = common dso_local global i32 0, align 4
@WIPHY_VENDOR_CMD_NEED_NETDEV = common dso_local global i32 0, align 4
@WIPHY_VENDOR_CMD_NEED_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_vendor_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wiphy_vendor_command*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 2
  %17 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %16, align 8
  %18 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %17, i64 0
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %18, align 8
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = call i32 @genl_info_net(%struct.genl_info* %20)
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = call %struct.wireless_dev* @__cfg80211_wdev_from_attrs(i32 %21, i64* %24)
  store %struct.wireless_dev* %25, %struct.wireless_dev** %7, align 8
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %28, align 8
  %30 = icmp ne %struct.wiphy_vendor_command* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %238

34:                                               ; preds = %2
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %36 = call i64 @IS_ERR(%struct.wireless_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %40 = call i32 @PTR_ERR(%struct.wireless_dev* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %238

47:                                               ; preds = %38
  store %struct.wireless_dev* null, %struct.wireless_dev** %7, align 8
  br label %59

48:                                               ; preds = %34
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %53 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %52, i32 0, i32 1
  %54 = icmp ne %struct.TYPE_4__* %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %238

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @NL80211_ATTR_VENDOR_ID, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @NL80211_ATTR_VENDOR_SUBCMD, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67, %59
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %238

78:                                               ; preds = %67
  %79 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %80 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @NL80211_ATTR_VENDOR_ID, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @nla_get_u32(i64 %84)
  store i64 %85, i64* %10, align 8
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @NL80211_ATTR_VENDOR_SUBCMD, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @nla_get_u32(i64 %91)
  store i64 %92, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %232, %78
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %96 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %235

100:                                              ; preds = %93
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %101 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %102 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %104, i64 %106
  store %struct.wiphy_vendor_command* %107, %struct.wiphy_vendor_command** %12, align 8
  %108 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %109 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %100
  %115 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %116 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %11, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %100
  br label %232

122:                                              ; preds = %114
  %123 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %124 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_WDEV, align 4
  %127 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_NETDEV, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %176

131:                                              ; preds = %122
  %132 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %133 = icmp ne %struct.wireless_dev* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %238

137:                                              ; preds = %131
  %138 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %139 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_NETDEV, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %146 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %238

152:                                              ; preds = %144, %137
  %153 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %154 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_RUNNING, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %152
  %160 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %161 = call i32 @wdev_running(%struct.wireless_dev* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* @ENETDOWN, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %238

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %152
  %168 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %169 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %168, i32 0, i32 1
  %170 = load i32 (%struct.TYPE_4__*, %struct.wireless_dev*, i8*, i32)*, i32 (%struct.TYPE_4__*, %struct.wireless_dev*, i8*, i32)** %169, align 8
  %171 = icmp ne i32 (%struct.TYPE_4__*, %struct.wireless_dev*, i8*, i32)* %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @EOPNOTSUPP, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %238

175:                                              ; preds = %167
  br label %177

176:                                              ; preds = %122
  store %struct.wireless_dev* null, %struct.wireless_dev** %7, align 8
  br label %177

177:                                              ; preds = %176, %175
  %178 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %179 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %216

185:                                              ; preds = %177
  %186 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %187 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = call i8* @nla_data(i64 %191)
  store i8* %192, i8** %13, align 8
  %193 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %194 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %193, i32 0, i32 1
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @nla_len(i64 %198)
  store i32 %199, i32* %14, align 4
  %200 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %201 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %202 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %208 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @nl80211_vendor_check_policy(%struct.wiphy_vendor_command* %200, i64 %206, i32 %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %185
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %3, align 4
  br label %238

215:                                              ; preds = %185
  br label %216

216:                                              ; preds = %215, %177
  %217 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %218 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %219 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %218, i32 0, i32 0
  store %struct.genl_info* %217, %struct.genl_info** %219, align 8
  %220 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %12, align 8
  %221 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %220, i32 0, i32 1
  %222 = load i32 (%struct.TYPE_4__*, %struct.wireless_dev*, i8*, i32)*, i32 (%struct.TYPE_4__*, %struct.wireless_dev*, i8*, i32)** %221, align 8
  %223 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %224 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %223, i32 0, i32 1
  %225 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i32 %222(%struct.TYPE_4__* %224, %struct.wireless_dev* %225, i8* %226, i32 %227)
  store i32 %228, i32* %9, align 4
  %229 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %230 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %229, i32 0, i32 0
  store %struct.genl_info* null, %struct.genl_info** %230, align 8
  %231 = load i32, i32* %9, align 4
  store i32 %231, i32* %3, align 4
  br label %238

232:                                              ; preds = %121
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %93

235:                                              ; preds = %93
  %236 = load i32, i32* @EOPNOTSUPP, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %235, %216, %213, %172, %163, %149, %134, %75, %55, %45, %31
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.wireless_dev* @__cfg80211_wdev_from_attrs(i32, i64*) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i64 @nla_get_u32(i64) #1

declare dso_local i32 @wdev_running(%struct.wireless_dev*) #1

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @nl80211_vendor_check_policy(%struct.wiphy_vendor_command*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
