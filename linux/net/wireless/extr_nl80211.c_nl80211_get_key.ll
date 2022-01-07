; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i64*, %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.get_key_cookie = type { i64, i32, %struct.sk_buff* }

@NL80211_ATTR_KEY_IDX = common dso_local global i64 0, align 8
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@NL80211_ATTR_KEY_TYPE = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_GROUP = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_KEY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@get_key_callback = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_key(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.get_key_cookie, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 3
  %18 = load %struct.net_device**, %struct.net_device*** %17, align 8
  %19 = getelementptr inbounds %struct.net_device*, %struct.net_device** %18, i64 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  %21 = bitcast %struct.net_device* %20 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %21, %struct.cfg80211_registered_device** %6, align 8
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 3
  %24 = load %struct.net_device**, %struct.net_device*** %23, align 8
  %25 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 1
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %27 = bitcast %struct.get_key_cookie* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %2
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @nla_get_u8(i64 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35, %2
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32* @nla_data(i64 %57)
  store i32* %58, i32** %10, align 8
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %59
  %73 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %74 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @nla_get_u32(i64 %78)
  store i64 %79, i64* %15, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load i64, i64* @NL80211_KEYTYPE_GROUP, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* @NL80211_KEYTYPE_PAIRWISE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %205

90:                                               ; preds = %83, %72
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* @NL80211_KEYTYPE_PAIRWISE, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %90, %59
  %96 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %97 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @EOPNOTSUPP, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %205

105:                                              ; preds = %95
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = load i32*, i32** %10, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %113 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %205

122:                                              ; preds = %111, %108, %105
  %123 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call %struct.sk_buff* @nlmsg_new(i32 %123, i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %14, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %205

131:                                              ; preds = %122
  %132 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %137 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @NL80211_CMD_NEW_KEY, align 4
  %140 = call i8* @nl80211hdr_put(%struct.sk_buff* %132, i32 %135, i32 %138, i32 0, i32 %139)
  store i8* %140, i8** %13, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %131
  br label %198

144:                                              ; preds = %131
  %145 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %146 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %12, i32 0, i32 2
  store %struct.sk_buff* %145, %struct.sk_buff** %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %12, i32 0, i32 1
  store i32 %147, i32* %148, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %150 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %151 = load %struct.net_device*, %struct.net_device** %8, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @nla_put_u32(%struct.sk_buff* %149, i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %144
  %157 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %158 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i64 @nla_put_u8(%struct.sk_buff* %157, i64 %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156, %144
  br label %198

163:                                              ; preds = %156
  %164 = load i32*, i32** %10, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %168 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %169 = load i32, i32* @ETH_ALEN, align 4
  %170 = load i32*, i32** %10, align 8
  %171 = call i64 @nla_put(%struct.sk_buff* %167, i64 %168, i32 %169, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %198

174:                                              ; preds = %166, %163
  %175 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %176 = bitcast %struct.cfg80211_registered_device* %175 to %struct.net_device*
  %177 = load %struct.net_device*, %struct.net_device** %8, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* @get_key_callback, align 4
  %182 = call i32 @rdev_get_key(%struct.net_device* %176, %struct.net_device* %177, i32 %178, i32 %179, i32* %180, %struct.get_key_cookie* %12, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  br label %201

186:                                              ; preds = %174
  %187 = getelementptr inbounds %struct.get_key_cookie, %struct.get_key_cookie* %12, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %198

191:                                              ; preds = %186
  %192 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @genlmsg_end(%struct.sk_buff* %192, i8* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %196 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %197 = call i32 @genlmsg_reply(%struct.sk_buff* %195, %struct.genl_info* %196)
  store i32 %197, i32* %3, align 4
  br label %205

198:                                              ; preds = %190, %173, %162, %143
  %199 = load i32, i32* @ENOBUFS, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %198, %185
  %202 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %203 = call i32 @nlmsg_free(%struct.sk_buff* %202)
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %201, %191, %128, %119, %102, %87
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nla_get_u8(i64) #2

declare dso_local i32* @nla_data(i64) #2

declare dso_local i64 @nla_get_u32(i64) #2

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #2

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #2

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #2

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i64, i32) #2

declare dso_local i64 @nla_put(%struct.sk_buff*, i64, i32, i32*) #2

declare dso_local i32 @rdev_get_key(%struct.net_device*, %struct.net_device*, i32, i32, i32*, %struct.get_key_cookie*, i32) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #2

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
