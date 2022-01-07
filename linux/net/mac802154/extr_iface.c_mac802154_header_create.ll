; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_header_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_header_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee802154_hdr = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ieee802154_sub_if_data = type { %struct.wpan_dev }
%struct.wpan_dev = type { i32, i32, i32 }
%struct.ieee802154_mac_cb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_FC_TYPE_DATA = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i8* null, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @mac802154_header_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac802154_header_create(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee802154_hdr, align 8
  %15 = alloca %struct.ieee802154_sub_if_data*, align 8
  %16 = alloca %struct.wpan_dev*, align 8
  %17 = alloca %struct.ieee802154_mac_cb, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %19)
  store %struct.ieee802154_sub_if_data* %20, %struct.ieee802154_sub_if_data** %15, align 8
  %21 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %15, align 8
  %22 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %21, i32 0, i32 0
  store %struct.wpan_dev* %22, %struct.wpan_dev** %16, align 8
  %23 = bitcast %struct.ieee802154_mac_cb* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %109

29:                                               ; preds = %6
  %30 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 3
  %31 = call i32 @memset(%struct.TYPE_8__* %30, i32 0, i32 8)
  %32 = load i32, i32* @IEEE802154_FC_TYPE_DATA, align 4
  %33 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wpan_dev*, %struct.wpan_dev** %16, align 8
  %36 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @atomic_inc_return(i32* %43)
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %15, align 8
  %48 = call i64 @mac802154_set_header_security(%struct.ieee802154_sub_if_data* %47, %struct.ieee802154_hdr* %14, %struct.ieee802154_mac_cb* %17)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %109

53:                                               ; preds = %29
  %54 = load %struct.wpan_dev*, %struct.wpan_dev** %16, align 8
  %55 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @IEEE802154_ADDR_LONG, align 8
  %60 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @ieee802154_be64_to_le64(i32* %63, i8* %64)
  %66 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @IEEE802154_ADDR_LONG, align 8
  %72 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %53
  %77 = load %struct.wpan_dev*, %struct.wpan_dev** %16, align 8
  %78 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %87

82:                                               ; preds = %53
  %83 = getelementptr inbounds %struct.ieee802154_hdr, %struct.ieee802154_hdr* %14, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @ieee802154_be64_to_le64(i32* %84, i8* %85)
  br label %87

87:                                               ; preds = %82, %76
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @ieee802154_hdr_push(%struct.sk_buff* %88, %struct.ieee802154_hdr* %14)
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %109

95:                                               ; preds = %87
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = call i32 @skb_reset_mac_header(%struct.sk_buff* %96)
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @ieee802154_max_payload(%struct.ieee802154_hdr* %14)
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @EMSGSIZE, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %18, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %104, %92, %50, %26
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @mac802154_set_header_security(%struct.ieee802154_sub_if_data*, %struct.ieee802154_hdr*, %struct.ieee802154_mac_cb*) #1

declare dso_local i32 @ieee802154_be64_to_le64(i32*, i8*) #1

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
