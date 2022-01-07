; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_header_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_header_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee802154_addr = type { i64, i64, i32, i32 }
%struct.ieee802154_hdr = type { i32, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ieee802154_sub_if_data = type { %struct.wpan_dev }
%struct.wpan_dev = type { i64, i64, i32 }
%struct.ieee802154_mac_cb = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_ADDR_BROADCAST = common dso_local global i32 0, align 4
@IEEE802154_ADDR_UNDEF = common dso_local global i32 0, align 4
@IEEE802154_PANID_BROADCAST = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.ieee802154_addr*, %struct.ieee802154_addr*, i32)* @ieee802154_header_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_header_create(%struct.sk_buff* %0, %struct.net_device* %1, %struct.ieee802154_addr* %2, %struct.ieee802154_addr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ieee802154_addr*, align 8
  %10 = alloca %struct.ieee802154_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee802154_hdr, align 8
  %13 = alloca %struct.ieee802154_sub_if_data*, align 8
  %14 = alloca %struct.wpan_dev*, align 8
  %15 = alloca %struct.ieee802154_mac_cb*, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.ieee802154_addr* %2, %struct.ieee802154_addr** %9, align 8
  store %struct.ieee802154_addr* %3, %struct.ieee802154_addr** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %17)
  store %struct.ieee802154_sub_if_data* %18, %struct.ieee802154_sub_if_data** %13, align 8
  %19 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %20 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %19, i32 0, i32 0
  store %struct.wpan_dev* %20, %struct.wpan_dev** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.ieee802154_mac_cb* @mac_cb(%struct.sk_buff* %21)
  store %struct.ieee802154_mac_cb* %22, %struct.ieee802154_mac_cb** %15, align 8
  %23 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %9, align 8
  %24 = icmp ne %struct.ieee802154_addr* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %139

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 3
  %30 = call i32 @memset(%struct.TYPE_4__* %29, i32 0, i32 12)
  %31 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %15, align 8
  %32 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %15, align 8
  %37 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %15, align 8
  %42 = getelementptr inbounds %struct.ieee802154_mac_cb, %struct.ieee802154_mac_cb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @atomic_inc_return(i32* %49)
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %13, align 8
  %54 = load %struct.ieee802154_mac_cb*, %struct.ieee802154_mac_cb** %15, align 8
  %55 = call i64 @mac802154_set_header_security(%struct.ieee802154_sub_if_data* %53, %struct.ieee802154_hdr* %12, %struct.ieee802154_mac_cb* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %28
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %139

60:                                               ; preds = %28
  %61 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %10, align 8
  %62 = icmp ne %struct.ieee802154_addr* %61, null
  br i1 %62, label %108, label %63

63:                                               ; preds = %60
  %64 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %65 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @IEEE802154_ADDR_BROADCAST, align 4
  %68 = call i64 @cpu_to_le16(i32 %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %72 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @IEEE802154_ADDR_UNDEF, align 4
  %75 = call i64 @cpu_to_le16(i32 %74)
  %76 = icmp eq i64 %73, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %79 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @IEEE802154_PANID_BROADCAST, align 4
  %82 = call i64 @cpu_to_le16(i32 %81)
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %77, %70, %63
  %85 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %86 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 2
  %87 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %89 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 2
  %92 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  br label %102

93:                                               ; preds = %77
  %94 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %95 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 2
  %96 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %98 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 2
  %101 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %84
  %103 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %104 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 2
  %107 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %113

108:                                              ; preds = %60
  %109 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 2
  %110 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %10, align 8
  %111 = bitcast %struct.ieee802154_addr* %109 to i8*
  %112 = bitcast %struct.ieee802154_addr* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 24, i1 false)
  br label %113

113:                                              ; preds = %108, %102
  %114 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %12, i32 0, i32 1
  %115 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %9, align 8
  %116 = bitcast %struct.ieee802154_addr* %114 to i8*
  %117 = bitcast %struct.ieee802154_addr* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 24, i1 false)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @ieee802154_hdr_push(%struct.sk_buff* %118, %struct.ieee802154_hdr* %12)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %6, align 4
  br label %139

125:                                              ; preds = %113
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = call i32 @skb_reset_mac_header(%struct.sk_buff* %126)
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @ieee802154_max_payload(%struct.ieee802154_hdr* %12)
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* @EMSGSIZE, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %137, %134, %122, %57, %25
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.ieee802154_mac_cb* @mac_cb(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @mac802154_set_header_security(%struct.ieee802154_sub_if_data*, %struct.ieee802154_hdr*, %struct.ieee802154_mac_cb*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee802154_hdr_push(%struct.sk_buff*, %struct.ieee802154_hdr*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ieee802154_max_payload(%struct.ieee802154_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
