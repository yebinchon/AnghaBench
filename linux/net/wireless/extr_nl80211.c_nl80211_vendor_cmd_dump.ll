; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_vendor_cmd_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_vendor_cmd_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.wiphy_vendor_command* }
%struct.wiphy_vendor_command = type { i32, i32 (%struct.TYPE_5__*, %struct.wireless_dev*, %struct.sk_buff.0*, i8*, i32, i64*)* }
%struct.wireless_dev = type { i32 }
%struct.sk_buff.0 = type opaque
%struct.nlattr = type { i32 }
%struct.TYPE_6__ = type { i32 }

@WIPHY_VENDOR_CMD_NEED_WDEV = common dso_local global i32 0, align 4
@WIPHY_VENDOR_CMD_NEED_NETDEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WIPHY_VENDOR_CMD_NEED_RUNNING = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@NL80211_CMD_VENDOR = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_VENDOR_DATA = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @nl80211_vendor_cmd_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_vendor_cmd_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy_vendor_command*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %15 = call i32 (...) @rtnl_lock()
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %18 = call i32 @nl80211_prepare_vendor_dump(%struct.sk_buff* %16, %struct.netlink_callback* %17, %struct.cfg80211_registered_device** %5, %struct.wireless_dev** %6)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %195

22:                                               ; preds = %2
  %23 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %24 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %29 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %9, align 8
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %41 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %43, i64 %45
  store %struct.wiphy_vendor_command* %46, %struct.wiphy_vendor_command** %8, align 8
  %47 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %8, align 8
  %48 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_WDEV, align 4
  %51 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_NETDEV, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %22
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %57 = icmp ne %struct.wireless_dev* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %195

61:                                               ; preds = %55
  %62 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %8, align 8
  %63 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_NETDEV, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %195

76:                                               ; preds = %68, %61
  %77 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %8, align 8
  %78 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @WIPHY_VENDOR_CMD_NEED_RUNNING, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %85 = call i32 @wdev_running(%struct.wireless_dev* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @ENETDOWN, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %195

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %76
  br label %92

92:                                               ; preds = %91, %22
  br label %93

93:                                               ; preds = %92, %187
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %96 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @NETLINK_CB(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %103 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NLM_F_MULTI, align 4
  %108 = load i32, i32* @NL80211_CMD_VENDOR, align 4
  %109 = call i8* @nl80211hdr_put(%struct.sk_buff* %94, i32 %101, i32 %106, i32 %107, i32 %108)
  store i8* %109, i8** %13, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %93
  br label %191

113:                                              ; preds = %93
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %116 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %117 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @nla_put_u32(%struct.sk_buff* %114, i32 %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %113
  %122 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %123 = icmp ne %struct.wireless_dev* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %126 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %127 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %128 = call i32 @wdev_id(%struct.wireless_dev* %127)
  %129 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %130 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %125, i32 %126, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124, %113
  %133 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @genlmsg_cancel(%struct.sk_buff* %133, i8* %134)
  br label %191

136:                                              ; preds = %124, %121
  %137 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %138 = load i32, i32* @NL80211_ATTR_VENDOR_DATA, align 4
  %139 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %137, i32 %138)
  store %struct.nlattr* %139, %struct.nlattr** %12, align 8
  %140 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %141 = icmp ne %struct.nlattr* %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @genlmsg_cancel(%struct.sk_buff* %143, i8* %144)
  br label %191

146:                                              ; preds = %136
  %147 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %8, align 8
  %148 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %147, i32 0, i32 1
  %149 = load i32 (%struct.TYPE_5__*, %struct.wireless_dev*, %struct.sk_buff.0*, i8*, i32, i64*)*, i32 (%struct.TYPE_5__*, %struct.wireless_dev*, %struct.sk_buff.0*, i8*, i32, i64*)** %148, align 8
  %150 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %151 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %150, i32 0, i32 0
  %152 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %154 = bitcast %struct.sk_buff* %153 to %struct.sk_buff.0*
  %155 = load i8*, i8** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %158 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 5
  %161 = bitcast i32* %160 to i64*
  %162 = call i32 %149(%struct.TYPE_5__* %151, %struct.wireless_dev* %152, %struct.sk_buff.0* %154, i8* %155, i32 %156, i64* %161)
  store i32 %162, i32* %11, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %164 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %165 = call i32 @nla_nest_end(%struct.sk_buff* %163, %struct.nlattr* %164)
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @ENOBUFS, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %175, label %170

170:                                              ; preds = %146
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @ENOENT, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %170, %146
  %176 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = call i32 @genlmsg_cancel(%struct.sk_buff* %176, i8* %177)
  br label %191

179:                                              ; preds = %170
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = call i32 @genlmsg_cancel(%struct.sk_buff* %183, i8* %184)
  br label %195

186:                                              ; preds = %179
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = call i32 @genlmsg_end(%struct.sk_buff* %188, i8* %189)
  br label %93

191:                                              ; preds = %175, %142, %132, %112
  %192 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %191, %182, %87, %73, %58, %21
  %196 = call i32 (...) @rtnl_unlock()
  %197 = load i32, i32* %11, align 4
  ret i32 %197
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nl80211_prepare_vendor_dump(%struct.sk_buff*, %struct.netlink_callback*, %struct.cfg80211_registered_device**, %struct.wireless_dev**) #1

declare dso_local i32 @wdev_running(%struct.wireless_dev*) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
