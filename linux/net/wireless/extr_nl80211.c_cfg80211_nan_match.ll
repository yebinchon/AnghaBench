; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_nan_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_nan_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i32, %struct.TYPE_2__*, %struct.wiphy* }
%struct.TYPE_2__ = type { i32 }
%struct.wiphy = type { i32 }
%struct.cfg80211_nan_match_params = type { i64, i64, i32, i32, i32, i64, i32 }
%struct.cfg80211_registered_device = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.sk_buff = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@NL80211_CMD_NAN_MATCH = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_NAN_MATCH = common dso_local global i32 0, align 4
@NL80211_NAN_MATCH_FUNC_LOCAL = common dso_local global i32 0, align 4
@NL80211_NAN_FUNC_INSTANCE_ID = common dso_local global i32 0, align 4
@NL80211_NAN_MATCH_FUNC_PEER = common dso_local global i32 0, align 4
@NL80211_NAN_FUNC_TYPE = common dso_local global i32 0, align 4
@NL80211_NAN_FUNC_SERVICE_INFO = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_NAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_nan_match(%struct.wireless_dev* %0, %struct.cfg80211_nan_match_params* %1, i32 %2) #0 {
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca %struct.cfg80211_nan_match_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.cfg80211_registered_device*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store %struct.cfg80211_nan_match_params* %1, %struct.cfg80211_nan_match_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %14, i32 0, i32 2
  %16 = load %struct.wiphy*, %struct.wiphy** %15, align 8
  store %struct.wiphy* %16, %struct.wiphy** %7, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %18 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %17)
  store %struct.cfg80211_registered_device* %18, %struct.cfg80211_registered_device** %8, align 8
  %19 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %20 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %25 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %23, %3
  %35 = phi i1 [ true, %23 ], [ true, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %214

40:                                               ; preds = %34
  %41 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.sk_buff* @nlmsg_new(i32 %41, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %12, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %214

47:                                               ; preds = %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = load i32, i32* @NL80211_CMD_NAN_MATCH, align 4
  %50 = call i8* @nl80211hdr_put(%struct.sk_buff* %48, i32 0, i32 0, i32 0, i32 %49)
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = call i32 @nlmsg_free(%struct.sk_buff* %54)
  br label %214

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %58 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %56
  %65 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %66 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %70, i32 %71, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %69, %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %83 = call i32 @wdev_id(%struct.wireless_dev* %82)
  %84 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %85 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %80, i32 %81, i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79, %69, %56
  br label %211

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %91 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %92 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %95 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %89, i32 %90, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %88
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %99 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %100 = load i64, i64* @ETH_ALEN, align 8
  %101 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %102 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @nla_put(%struct.sk_buff* %98, i32 %99, i64 %100, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97, %88
  br label %211

107:                                              ; preds = %97
  %108 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %109 = load i32, i32* @NL80211_ATTR_NAN_MATCH, align 4
  %110 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %108, i32 %109)
  store %struct.nlattr* %110, %struct.nlattr** %9, align 8
  %111 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %112 = icmp ne %struct.nlattr* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %211

114:                                              ; preds = %107
  %115 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %116 = load i32, i32* @NL80211_NAN_MATCH_FUNC_LOCAL, align 4
  %117 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %115, i32 %116)
  store %struct.nlattr* %117, %struct.nlattr** %10, align 8
  %118 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %119 = icmp ne %struct.nlattr* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %211

121:                                              ; preds = %114
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = load i32, i32* @NL80211_NAN_FUNC_INSTANCE_ID, align 4
  %124 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %125 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @nla_put_u8(%struct.sk_buff* %122, i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %211

130:                                              ; preds = %121
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %133 = call i32 @nla_nest_end(%struct.sk_buff* %131, %struct.nlattr* %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %135 = load i32, i32* @NL80211_NAN_MATCH_FUNC_PEER, align 4
  %136 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %134, i32 %135)
  store %struct.nlattr* %136, %struct.nlattr** %11, align 8
  %137 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  br label %211

140:                                              ; preds = %130
  %141 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %142 = load i32, i32* @NL80211_NAN_FUNC_TYPE, align 4
  %143 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %144 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @nla_put_u8(%struct.sk_buff* %141, i32 %142, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %150 = load i32, i32* @NL80211_NAN_FUNC_INSTANCE_ID, align 4
  %151 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %152 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @nla_put_u8(%struct.sk_buff* %149, i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148, %140
  br label %211

157:                                              ; preds = %148
  %158 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %159 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %157
  %163 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %164 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %162
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = load i32, i32* @NL80211_NAN_FUNC_SERVICE_INFO, align 4
  %170 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %171 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.cfg80211_nan_match_params*, %struct.cfg80211_nan_match_params** %5, align 8
  %174 = getelementptr inbounds %struct.cfg80211_nan_match_params, %struct.cfg80211_nan_match_params* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @nla_put(%struct.sk_buff* %168, i32 %169, i64 %172, i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %211

179:                                              ; preds = %167, %162, %157
  %180 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %181 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %182 = call i32 @nla_nest_end(%struct.sk_buff* %180, %struct.nlattr* %181)
  %183 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %184 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %185 = call i32 @nla_nest_end(%struct.sk_buff* %183, %struct.nlattr* %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 @genlmsg_end(%struct.sk_buff* %186, i8* %187)
  %189 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %190 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %179
  %194 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %195 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %194, i32 0, i32 0
  %196 = call i32 @wiphy_net(i32* %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %198 = load i32, i32* @NL80211_MCGRP_NAN, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %196, %struct.sk_buff* %197, i32 0, i32 %198, i32 %199)
  br label %210

201:                                              ; preds = %179
  %202 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %8, align 8
  %203 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %202, i32 0, i32 0
  %204 = call i32 @wiphy_net(i32* %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %206 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %207 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @genlmsg_unicast(i32 %204, %struct.sk_buff* %205, i32 %208)
  br label %210

210:                                              ; preds = %201, %193
  br label %214

211:                                              ; preds = %178, %156, %139, %129, %120, %113, %106, %87
  %212 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %213 = call i32 @nlmsg_free(%struct.sk_buff* %212)
  br label %214

214:                                              ; preds = %211, %210, %53, %46, %39
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
