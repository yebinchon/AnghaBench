; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.wireless_dev = type { i32, %struct.cfg80211_internal_bss*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cfg80211_internal_bss = type { %struct.cfg80211_bss, i64, i32, i64, i64 }
%struct.cfg80211_bss = type { i32, i32, i32, i32, %struct.TYPE_6__*, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfg80211_bss_ies = type { i32, i64, i64, i64 }
%struct.nlattr = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NL80211_CMD_NEW_SCAN_RESULTS = common dso_local global i32 0, align 4
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_BSS = common dso_local global i32 0, align 4
@NL80211_BSS_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_BSS_PRESP_DATA = common dso_local global i32 0, align 4
@NL80211_BSS_TSF = common dso_local global i32 0, align 4
@NL80211_BSS_PAD = common dso_local global i32 0, align 4
@NL80211_BSS_INFORMATION_ELEMENTS = common dso_local global i32 0, align 4
@NL80211_BSS_BEACON_TSF = common dso_local global i32 0, align 4
@NL80211_BSS_BEACON_IES = common dso_local global i32 0, align 4
@NL80211_BSS_BEACON_INTERVAL = common dso_local global i32 0, align 4
@NL80211_BSS_CAPABILITY = common dso_local global i32 0, align 4
@NL80211_BSS_FREQUENCY = common dso_local global i32 0, align 4
@NL80211_BSS_CHAN_WIDTH = common dso_local global i32 0, align 4
@NL80211_BSS_SEEN_MS_AGO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NL80211_BSS_PARENT_TSF = common dso_local global i32 0, align 4
@NL80211_BSS_PARENT_BSSID = common dso_local global i32 0, align 4
@NL80211_BSS_LAST_SEEN_BOOTTIME = common dso_local global i32 0, align 4
@NL80211_BSS_CHAIN_SIGNAL = common dso_local global i32 0, align 4
@NL80211_BSS_SIGNAL_MBM = common dso_local global i32 0, align 4
@NL80211_BSS_SIGNAL_UNSPEC = common dso_local global i32 0, align 4
@NL80211_BSS_STATUS = common dso_local global i32 0, align 4
@NL80211_BSS_STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@NL80211_BSS_STATUS_IBSS_JOINED = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, i32, i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_internal_bss*)* @nl80211_send_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_bss(%struct.sk_buff* %0, %struct.netlink_callback* %1, i32 %2, i32 %3, %struct.cfg80211_registered_device* %4, %struct.wireless_dev* %5, %struct.cfg80211_internal_bss* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.netlink_callback*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfg80211_registered_device*, align 8
  %14 = alloca %struct.wireless_dev*, align 8
  %15 = alloca %struct.cfg80211_internal_bss*, align 8
  %16 = alloca %struct.cfg80211_bss*, align 8
  %17 = alloca %struct.cfg80211_bss_ies*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nlattr*, align 8
  %20 = alloca %struct.TYPE_8__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.cfg80211_registered_device* %4, %struct.cfg80211_registered_device** %13, align 8
  store %struct.wireless_dev* %5, %struct.wireless_dev** %14, align 8
  store %struct.cfg80211_internal_bss* %6, %struct.cfg80211_internal_bss** %15, align 8
  %21 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %22 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %21, i32 0, i32 0
  store %struct.cfg80211_bss* %22, %struct.cfg80211_bss** %16, align 8
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %24 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %27 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NETLINK_CB(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @NL80211_CMD_NEW_SCAN_RESULTS, align 4
  %36 = call i8* @nl80211hdr_put(%struct.sk_buff* %25, i32 %32, i32 %33, i32 %34, i32 %35)
  store i8* %36, i8** %18, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %368

40:                                               ; preds = %7
  %41 = load %struct.netlink_callback*, %struct.netlink_callback** %10, align 8
  %42 = load i8*, i8** %18, align 8
  %43 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %41, i8* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %46 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %47 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %44, i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %362

52:                                               ; preds = %40
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %60 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %61 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %362

68:                                               ; preds = %57, %52
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %72 = call i64 @wdev_id(%struct.wireless_dev* %71)
  %73 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %74 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %69, i32 %70, i64 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %362

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = load i32, i32* @NL80211_ATTR_BSS, align 4
  %80 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %78, i32 %79)
  store %struct.nlattr* %80, %struct.nlattr** %19, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %362

84:                                               ; preds = %77
  %85 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %86 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @is_zero_ether_addr(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load i32, i32* @NL80211_BSS_BSSID, align 4
  %93 = load i64, i64* @ETH_ALEN, align 8
  %94 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %95 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @nla_put(%struct.sk_buff* %91, i32 %92, i64 %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %362

100:                                              ; preds = %90, %84
  %101 = call i32 (...) @rcu_read_lock()
  %102 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %103 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @rcu_access_pointer(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = load i32, i32* @NL80211_BSS_PRESP_DATA, align 4
  %110 = call i64 @nla_put_flag(%struct.sk_buff* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %360

113:                                              ; preds = %107, %100
  %114 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %115 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %116)
  store %struct.cfg80211_bss_ies* %117, %struct.cfg80211_bss_ies** %17, align 8
  %118 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %119 = icmp ne %struct.cfg80211_bss_ies* %118, null
  br i1 %119, label %120, label %148

120:                                              ; preds = %113
  %121 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %122 = load i32, i32* @NL80211_BSS_TSF, align 4
  %123 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %124 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @NL80211_BSS_PAD, align 4
  %127 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %121, i32 %122, i64 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %360

130:                                              ; preds = %120
  %131 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %132 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %137 = load i32, i32* @NL80211_BSS_INFORMATION_ELEMENTS, align 4
  %138 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %139 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %142 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @nla_put(%struct.sk_buff* %136, i32 %137, i64 %140, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %360

147:                                              ; preds = %135, %130
  br label %148

148:                                              ; preds = %147, %113
  %149 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %150 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %151)
  store %struct.cfg80211_bss_ies* %152, %struct.cfg80211_bss_ies** %17, align 8
  %153 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %154 = icmp ne %struct.cfg80211_bss_ies* %153, null
  br i1 %154, label %155, label %188

155:                                              ; preds = %148
  %156 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %157 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %188

160:                                              ; preds = %155
  %161 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %162 = load i32, i32* @NL80211_BSS_BEACON_TSF, align 4
  %163 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %164 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @NL80211_BSS_PAD, align 4
  %167 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %161, i32 %162, i64 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %160
  br label %360

170:                                              ; preds = %160
  %171 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %172 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %177 = load i32, i32* @NL80211_BSS_BEACON_IES, align 4
  %178 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %179 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %17, align 8
  %182 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @nla_put(%struct.sk_buff* %176, i32 %177, i64 %180, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %360

187:                                              ; preds = %175, %170
  br label %188

188:                                              ; preds = %187, %155, %148
  %189 = call i32 (...) @rcu_read_unlock()
  %190 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %191 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %188
  %195 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %196 = load i32, i32* @NL80211_BSS_BEACON_INTERVAL, align 4
  %197 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %198 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @nla_put_u16(%struct.sk_buff* %195, i32 %196, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %362

203:                                              ; preds = %194, %188
  %204 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %205 = load i32, i32* @NL80211_BSS_CAPABILITY, align 4
  %206 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %207 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @nla_put_u16(%struct.sk_buff* %204, i32 %205, i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %240, label %211

211:                                              ; preds = %203
  %212 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %213 = load i32, i32* @NL80211_BSS_FREQUENCY, align 4
  %214 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %215 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %214, i32 0, i32 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @nla_put_u32(%struct.sk_buff* %212, i32 %213, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %240, label %221

221:                                              ; preds = %211
  %222 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %223 = load i32, i32* @NL80211_BSS_CHAN_WIDTH, align 4
  %224 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %225 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i64 @nla_put_u32(%struct.sk_buff* %222, i32 %223, i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %221
  %230 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %231 = load i32, i32* @NL80211_BSS_SEEN_MS_AGO, align 4
  %232 = load i64, i64* @jiffies, align 8
  %233 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %234 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = sub nsw i64 %232, %235
  %237 = call i32 @jiffies_to_msecs(i64 %236)
  %238 = call i64 @nla_put_u32(%struct.sk_buff* %230, i32 %231, i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %229, %221, %211, %203
  br label %362

241:                                              ; preds = %229
  %242 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %243 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %241
  %247 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %248 = load i32, i32* @NL80211_BSS_PARENT_TSF, align 4
  %249 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %250 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* @NL80211_BSS_PAD, align 4
  %253 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %247, i32 %248, i64 %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %246
  %256 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %257 = load i32, i32* @NL80211_BSS_PARENT_BSSID, align 4
  %258 = load i64, i64* @ETH_ALEN, align 8
  %259 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %260 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @nla_put(%struct.sk_buff* %256, i32 %257, i64 %258, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255, %246
  br label %362

265:                                              ; preds = %255, %241
  %266 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %267 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %265
  %271 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %272 = load i32, i32* @NL80211_BSS_LAST_SEEN_BOOTTIME, align 4
  %273 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %274 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @NL80211_BSS_PAD, align 4
  %277 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %271, i32 %272, i64 %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  br label %362

280:                                              ; preds = %270, %265
  %281 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %282 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %283 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %287 = getelementptr inbounds %struct.cfg80211_internal_bss, %struct.cfg80211_internal_bss* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @NL80211_BSS_CHAIN_SIGNAL, align 4
  %291 = call i32 @nl80211_put_signal(%struct.sk_buff* %281, i32 %285, i32 %289, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %280
  br label %362

294:                                              ; preds = %280
  %295 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %296 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  switch i32 %298, label %319 [
    i32 132, label %299
    i32 131, label %309
  ]

299:                                              ; preds = %294
  %300 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %301 = load i32, i32* @NL80211_BSS_SIGNAL_MBM, align 4
  %302 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %303 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i64 @nla_put_u32(%struct.sk_buff* %300, i32 %301, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %362

308:                                              ; preds = %299
  br label %320

309:                                              ; preds = %294
  %310 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %311 = load i32, i32* @NL80211_BSS_SIGNAL_UNSPEC, align 4
  %312 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %16, align 8
  %313 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @nla_put_u8(%struct.sk_buff* %310, i32 %311, i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %309
  br label %362

318:                                              ; preds = %309
  br label %320

319:                                              ; preds = %294
  br label %320

320:                                              ; preds = %319, %318, %308
  %321 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %322 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  switch i32 %323, label %352 [
    i32 129, label %324
    i32 128, label %324
    i32 130, label %338
  ]

324:                                              ; preds = %320, %320
  %325 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %326 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %327 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %326, i32 0, i32 1
  %328 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %327, align 8
  %329 = icmp eq %struct.cfg80211_internal_bss* %325, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %324
  %331 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %332 = load i32, i32* @NL80211_BSS_STATUS, align 4
  %333 = load i32, i32* @NL80211_BSS_STATUS_ASSOCIATED, align 4
  %334 = call i64 @nla_put_u32(%struct.sk_buff* %331, i32 %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %362

337:                                              ; preds = %330, %324
  br label %353

338:                                              ; preds = %320
  %339 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %15, align 8
  %340 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %341 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %340, i32 0, i32 1
  %342 = load %struct.cfg80211_internal_bss*, %struct.cfg80211_internal_bss** %341, align 8
  %343 = icmp eq %struct.cfg80211_internal_bss* %339, %342
  br i1 %343, label %344, label %351

344:                                              ; preds = %338
  %345 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %346 = load i32, i32* @NL80211_BSS_STATUS, align 4
  %347 = load i32, i32* @NL80211_BSS_STATUS_IBSS_JOINED, align 4
  %348 = call i64 @nla_put_u32(%struct.sk_buff* %345, i32 %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %344
  br label %362

351:                                              ; preds = %344, %338
  br label %353

352:                                              ; preds = %320
  br label %353

353:                                              ; preds = %352, %351, %337
  %354 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %355 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %356 = call i32 @nla_nest_end(%struct.sk_buff* %354, %struct.nlattr* %355)
  %357 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %358 = load i8*, i8** %18, align 8
  %359 = call i32 @genlmsg_end(%struct.sk_buff* %357, i8* %358)
  store i32 0, i32* %8, align 4
  br label %368

360:                                              ; preds = %186, %169, %146, %129, %112
  %361 = call i32 (...) @rcu_read_unlock()
  br label %362

362:                                              ; preds = %360, %350, %336, %317, %307, %293, %279, %264, %240, %202, %99, %83, %76, %67, %51
  %363 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %364 = load i8*, i8** %18, align 8
  %365 = call i32 @genlmsg_cancel(%struct.sk_buff* %363, i8* %364)
  %366 = load i32, i32* @EMSGSIZE, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %8, align 4
  br label %368

368:                                              ; preds = %362, %353, %39
  %369 = load i32, i32* %8, align 4
  ret i32 %369
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @wdev_id(%struct.wireless_dev*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @nl80211_put_signal(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
