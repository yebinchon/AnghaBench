; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_associate_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl-mac.c_ieee802154_associate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.net_device = type { i32 }
%struct.ieee802154_addr = type { i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE802154_ATTR_CHANNEL = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_PAN_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_HW_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_SHORT_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_CAPABILITY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee802154_associate_req(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_addr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @IEEE802154_ATTR_COORD_HW_ADDR, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35, %27
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @IEEE802154_ATTR_CAPABILITY, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43, %35, %19, %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %150

54:                                               ; preds = %43
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %55)
  store %struct.net_device* %56, %struct.net_device** %6, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %150

62:                                               ; preds = %54
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)** %65, align 8
  %67 = icmp ne i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  br label %146

69:                                               ; preds = %62
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @IEEE802154_ATTR_COORD_HW_ADDR, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %69
  %78 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %79 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %81 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @IEEE802154_ATTR_COORD_HW_ADDR, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @nla_get_hwaddr(i64 %85)
  %87 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 3
  store i32 %86, i32* %87, align 4
  br label %99

88:                                               ; preds = %69
  %89 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %90 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %92 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @nla_get_shortaddr(i64 %96)
  %98 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 1
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %88, %77
  %100 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %101 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @nla_get_shortaddr(i64 %105)
  %107 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %109 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %99
  %116 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %117 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @nla_get_u8(i64 %121)
  store i64 %122, i64* %8, align 8
  br label %124

123:                                              ; preds = %99
  store i64 0, i64* %8, align 8
  br label %124

124:                                              ; preds = %123, %115
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %125)
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)** %127, align 8
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %131 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @nla_get_u8(i64 %135)
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %139 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* @IEEE802154_ATTR_CAPABILITY, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @nla_get_u8(i64 %143)
  %145 = call i32 %128(%struct.net_device* %129, %struct.ieee802154_addr* %7, i64 %136, i64 %137, i64 %144)
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %124, %68
  %147 = load %struct.net_device*, %struct.net_device** %6, align 8
  %148 = call i32 @dev_put(%struct.net_device* %147)
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %59, %51
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i32 @nla_get_hwaddr(i64) #1

declare dso_local i8* @nla_get_shortaddr(i64) #1

declare dso_local i64 @nla_get_u8(i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
