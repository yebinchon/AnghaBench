; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32*, %struct.wireless_dev** }
%struct.wireless_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.cfg80211_chan_def = type { i32 }

@NL80211_ATTR_WIPHY_FREQ = common dso_local global i64 0, align 8
@NL80211_ATTR_DURATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_MIN_REMAIN_ON_CHANNEL_TIME = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_remain_on_channel(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_chan_def, align 4
  %9 = alloca %struct.cfg80211_chan_def*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 3
  %17 = load %struct.wireless_dev**, %struct.wireless_dev*** %16, align 8
  %18 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %17, i64 0
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  %20 = bitcast %struct.wireless_dev* %19 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %6, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 3
  %23 = load %struct.wireless_dev**, %struct.wireless_dev*** %22, align 8
  %24 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %23, i64 1
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %24, align 8
  store %struct.wireless_dev* %25, %struct.wireless_dev** %7, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @NL80211_ATTR_WIPHY_FREQ, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33, %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %174

44:                                               ; preds = %33
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @NL80211_ATTR_DURATION, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_get_u32(i32 %50)
  store i64 %51, i64* %13, align 8
  %52 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %53 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %60 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58, %44
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %174

69:                                               ; preds = %58
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @NL80211_MIN_REMAIN_ON_CHANNEL_TIME, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %13, align 8
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %76 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %69
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %174

83:                                               ; preds = %73
  %84 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %85 = bitcast %struct.cfg80211_registered_device* %84 to %struct.wireless_dev*
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = call i32 @nl80211_parse_chandef(%struct.wireless_dev* %85, %struct.genl_info* %86, %struct.cfg80211_chan_def* %8)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %3, align 4
  br label %174

92:                                               ; preds = %83
  %93 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %94 = call i32 @wdev_lock(%struct.wireless_dev* %93)
  %95 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %96 = call i32 @cfg80211_off_channel_oper_allowed(%struct.wireless_dev* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %92
  %99 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %100 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %99, i32 0, i32 0
  %101 = call i32 @cfg80211_chandef_identical(i32* %100, %struct.cfg80211_chan_def* %8)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %98
  %104 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %105 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %104, i32 0, i32 0
  %106 = call %struct.cfg80211_chan_def* @cfg80211_chandef_compatible(i32* %105, %struct.cfg80211_chan_def* %8)
  store %struct.cfg80211_chan_def* %106, %struct.cfg80211_chan_def** %9, align 8
  %107 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %108 = icmp ne %struct.cfg80211_chan_def* %107, %8
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %111 = call i32 @wdev_unlock(%struct.wireless_dev* %110)
  %112 = load i32, i32* @EBUSY, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %174

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %98, %92
  %116 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %117 = call i32 @wdev_unlock(%struct.wireless_dev* %116)
  %118 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call %struct.sk_buff* @nlmsg_new(i32 %118, i32 %119)
  store %struct.sk_buff* %120, %struct.sk_buff** %10, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %174

126:                                              ; preds = %115
  %127 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %128 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %129 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %132 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NL80211_CMD_REMAIN_ON_CHANNEL, align 4
  %135 = call i8* @nl80211hdr_put(%struct.sk_buff* %127, i32 %130, i32 %133, i32 0, i32 %134)
  store i8* %135, i8** %11, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %126
  %139 = load i32, i32* @ENOBUFS, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %14, align 4
  br label %170

141:                                              ; preds = %126
  %142 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %143 = bitcast %struct.cfg80211_registered_device* %142 to %struct.wireless_dev*
  %144 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %145 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @rdev_remain_on_channel(%struct.wireless_dev* %143, %struct.wireless_dev* %144, i32 %146, i64 %147, i32* %12)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %170

152:                                              ; preds = %141
  %153 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %154 = load i32, i32* @NL80211_ATTR_COOKIE, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %157 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %153, i32 %154, i32 %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %167

160:                                              ; preds = %152
  %161 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @genlmsg_end(%struct.sk_buff* %161, i8* %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %165 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %166 = call i32 @genlmsg_reply(%struct.sk_buff* %164, %struct.genl_info* %165)
  store i32 %166, i32* %3, align 4
  br label %174

167:                                              ; preds = %159
  %168 = load i32, i32* @ENOBUFS, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %167, %151, %138
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = call i32 @nlmsg_free(%struct.sk_buff* %171)
  %173 = load i32, i32* %14, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %160, %123, %109, %90, %80, %66, %41
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i64 @nla_get_u32(i32) #1

declare dso_local i32 @nl80211_parse_chandef(%struct.wireless_dev*, %struct.genl_info*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_off_channel_oper_allowed(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_chandef_identical(i32*, %struct.cfg80211_chan_def*) #1

declare dso_local %struct.cfg80211_chan_def* @cfg80211_chandef_compatible(i32*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @rdev_remain_on_channel(%struct.wireless_dev*, %struct.wireless_dev*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
