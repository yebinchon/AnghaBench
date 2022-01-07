; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_roamed.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_roamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_roam_info = type { %struct.TYPE_4__, i32*, i64, i32*, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, i64, i32*, i64, i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }

@WLAN_PMKID_LEN = common dso_local global i64 0, align 8
@NL80211_CMD_ROAM = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@NL80211_ATTR_REQ_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_RESP_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM = common dso_local global i32 0, align 4
@NL80211_ATTR_FILS_KEK = common dso_local global i32 0, align 4
@NL80211_ATTR_PMK = common dso_local global i32 0, align 4
@NL80211_ATTR_PMKID = common dso_local global i32 0, align 4
@nl80211_fam = common dso_local global i32 0, align 4
@NL80211_MCGRP_MLME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nl80211_send_roamed(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_roam_info* %2, i32 %3) #0 {
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_roam_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_roam_info* %2, %struct.cfg80211_roam_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %13 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %12, i32 0, i32 6
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %18 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %24 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32* [ %21, %16 ], [ %25, %22 ]
  store i32* %27, i32** %11, align 8
  %28 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %29 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 100, %30
  %32 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %33 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %37 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %42 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %47 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %26
  %52 = load i64, i64* @WLAN_PMKID_LEN, align 8
  br label %54

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i64 [ %52, %51 ], [ 0, %53 ]
  %56 = add nsw i64 %45, %55
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.sk_buff* @nlmsg_new(i64 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %9, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %210

62:                                               ; preds = %54
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = load i32, i32* @NL80211_CMD_ROAM, align 4
  %65 = call i8* @nl80211hdr_put(%struct.sk_buff* %63, i32 0, i32 0, i32 0, i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = call i32 @nlmsg_free(%struct.sk_buff* %69)
  br label %210

71:                                               ; preds = %62
  %72 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %73 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %74 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %75 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @nla_put_u32(%struct.sk_buff* %72, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %195, label %79

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @nla_put_u32(%struct.sk_buff* %80, i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %195, label %87

87:                                               ; preds = %79
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %90 = load i64, i64* @ETH_ALEN, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i64 @nla_put(%struct.sk_buff* %88, i32 %89, i64 %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %195, label %94

94:                                               ; preds = %87
  %95 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %96 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = load i32, i32* @NL80211_ATTR_REQ_IE, align 4
  %102 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %103 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %106 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = call i64 @nla_put(%struct.sk_buff* %100, i32 %101, i64 %104, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %195, label %110

110:                                              ; preds = %99, %94
  %111 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %112 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %117 = load i32, i32* @NL80211_ATTR_RESP_IE, align 4
  %118 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %119 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %122 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @nla_put(%struct.sk_buff* %116, i32 %117, i64 %120, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %195, label %126

126:                                              ; preds = %115, %110
  %127 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %128 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %126
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = load i32, i32* @NL80211_ATTR_FILS_ERP_NEXT_SEQ_NUM, align 4
  %135 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %136 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @nla_put_u16(%struct.sk_buff* %133, i32 %134, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %195, label %141

141:                                              ; preds = %132, %126
  %142 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %143 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %160

147:                                              ; preds = %141
  %148 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %149 = load i32, i32* @NL80211_ATTR_FILS_KEK, align 4
  %150 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %151 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %155 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @nla_put(%struct.sk_buff* %148, i32 %149, i64 %153, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %195, label %160

160:                                              ; preds = %147, %141
  %161 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %162 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %168 = load i32, i32* @NL80211_ATTR_PMK, align 4
  %169 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %170 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %174 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i64 @nla_put(%struct.sk_buff* %167, i32 %168, i64 %172, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %195, label %179

179:                                              ; preds = %166, %160
  %180 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %181 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %187 = load i32, i32* @NL80211_ATTR_PMKID, align 4
  %188 = load i64, i64* @WLAN_PMKID_LEN, align 8
  %189 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %7, align 8
  %190 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i64 @nla_put(%struct.sk_buff* %186, i32 %187, i64 %188, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %185, %166, %147, %132, %115, %99, %87, %79, %71
  br label %207

196:                                              ; preds = %185, %179
  %197 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 @genlmsg_end(%struct.sk_buff* %197, i8* %198)
  %200 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %201 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %200, i32 0, i32 0
  %202 = call i32 @wiphy_net(i32* %201)
  %203 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %204 = load i32, i32* @NL80211_MCGRP_MLME, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @genlmsg_multicast_netns(i32* @nl80211_fam, i32 %202, %struct.sk_buff* %203, i32 0, i32 %204, i32 %205)
  br label %210

207:                                              ; preds = %195
  %208 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %209 = call i32 @nlmsg_free(%struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %207, %196, %68, %61
  ret void
}

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_multicast_netns(i32*, i32, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wiphy_net(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
