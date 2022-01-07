; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_start_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.net_device = type { i32 }
%struct.ieee802154_addr = type { i64, i8*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)* }

@EBUSY = common dso_local global i32 0, align 4
@IEEE802154_ATTR_COORD_PAN_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_SHORT_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_CHANNEL = common dso_local global i64 0, align 8
@IEEE802154_ATTR_BCN_ORD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_SF_ORD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_PAN_COORD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_BAT_EXT = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_REALIGN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAGE = common dso_local global i64 0, align 8
@IEEE802154_ADDR_BROADCAST = common dso_local global i32 0, align 4
@IEEE802154_NO_SHORT_ADDRESS = common dso_local global i32 0, align 4
@IEEE802154_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_start_req(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_addr, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %25
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %33
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @IEEE802154_ATTR_BCN_ORD, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %41
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @IEEE802154_ATTR_SF_ORD, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %49
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @IEEE802154_ATTR_PAN_COORD, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %57
  %66 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %67 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @IEEE802154_ATTR_BAT_EXT, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @IEEE802154_ATTR_COORD_REALIGN, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73, %65, %57, %49, %41, %33, %25, %2
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %224

84:                                               ; preds = %73
  %85 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %86 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %85)
  store %struct.net_device* %86, %struct.net_device** %6, align 8
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = icmp ne %struct.net_device* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %224

92:                                               ; preds = %84
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = call i64 @netif_running(%struct.net_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %220

97:                                               ; preds = %92
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)** %100, align 8
  %102 = icmp ne i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @EOPNOTSUPP, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %15, align 4
  br label %220

106:                                              ; preds = %97
  %107 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %108 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %110 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @nla_get_shortaddr(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  store i64 %116, i64* %117, align 8
  %118 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %119 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @nla_get_shortaddr(i64 %123)
  %125 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 1
  store i8* %124, i8** %125, align 8
  %126 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %127 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @nla_get_u8(i64 %131)
  store i8* %132, i8** %8, align 8
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @IEEE802154_ATTR_BCN_ORD, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @nla_get_u8(i64 %138)
  store i8* %139, i8** %9, align 8
  %140 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %141 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @IEEE802154_ATTR_SF_ORD, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @nla_get_u8(i64 %145)
  store i8* %146, i8** %10, align 8
  %147 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %148 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @IEEE802154_ATTR_PAN_COORD, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i8* @nla_get_u8(i64 %152)
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %12, align 4
  %155 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %156 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @IEEE802154_ATTR_BAT_EXT, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @nla_get_u8(i64 %160)
  %162 = ptrtoint i8* %161 to i32
  store i32 %162, i32* %13, align 4
  %163 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %164 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @IEEE802154_ATTR_COORD_REALIGN, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @nla_get_u8(i64 %168)
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* %14, align 4
  %171 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %172 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %106
  %179 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %180 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @nla_get_u8(i64 %184)
  store i8* %185, i8** %11, align 8
  br label %187

186:                                              ; preds = %106
  store i8* null, i8** %11, align 8
  br label %187

187:                                              ; preds = %186, %178
  %188 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @IEEE802154_ADDR_BROADCAST, align 4
  %191 = call i64 @cpu_to_le16(i32 %190)
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %187
  %194 = load %struct.net_device*, %struct.net_device** %6, align 8
  %195 = load i32, i32* @IEEE802154_NO_SHORT_ADDRESS, align 4
  %196 = call i32 @ieee802154_nl_start_confirm(%struct.net_device* %194, i32 %195)
  %197 = load %struct.net_device*, %struct.net_device** %6, align 8
  %198 = call i32 @dev_put(%struct.net_device* %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %3, align 4
  br label %224

201:                                              ; preds = %187
  %202 = call i32 (...) @rtnl_lock()
  %203 = load %struct.net_device*, %struct.net_device** %6, align 8
  %204 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %203)
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)** %205, align 8
  %207 = load %struct.net_device*, %struct.net_device** %6, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 %206(%struct.net_device* %207, %struct.ieee802154_addr* %7, i8* %208, i8* %209, i8* %210, i8* %211, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %15, align 4
  %216 = call i32 (...) @rtnl_unlock()
  %217 = load %struct.net_device*, %struct.net_device** %6, align 8
  %218 = load i32, i32* @IEEE802154_SUCCESS, align 4
  %219 = call i32 @ieee802154_nl_start_confirm(%struct.net_device* %217, i32 %218)
  br label %220

220:                                              ; preds = %201, %103, %96
  %221 = load %struct.net_device*, %struct.net_device** %6, align 8
  %222 = call i32 @dev_put(%struct.net_device* %221)
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %220, %193, %89, %81
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i8* @nla_get_shortaddr(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee802154_nl_start_confirm(%struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
