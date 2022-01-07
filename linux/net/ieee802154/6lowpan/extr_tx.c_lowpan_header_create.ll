; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_header_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/6lowpan/extr_tx.c_lowpan_header_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.wpan_dev = type { i32, i8*, i32 }
%struct.lowpan_addr_info = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }
%struct.lowpan_802154_neigh = type { i8* }
%struct.ipv6hdr = type { i32 }
%struct.neighbour = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.wpan_dev* }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i16 0, align 2
@EUI64_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE802154_ADDR_BROADCAST = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i8* null, align 8
@IEEE802154_ADDR_SHORT_UNSPEC = common dso_local global i32 0, align 4
@nd_tbl = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lowpan_header_create(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wpan_dev*, align 8
  %15 = alloca %struct.lowpan_addr_info*, align 8
  %16 = alloca %struct.lowpan_802154_neigh*, align 8
  %17 = alloca %struct.ipv6hdr*, align 8
  %18 = alloca %struct.neighbour*, align 8
  %19 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = call %struct.TYPE_8__* @lowpan_802154_dev(%struct.net_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.wpan_dev*, %struct.wpan_dev** %24, align 8
  store %struct.wpan_dev* %25, %struct.wpan_dev** %14, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call %struct.lowpan_addr_info* @lowpan_skb_priv(%struct.sk_buff* %26)
  store %struct.lowpan_addr_info* %27, %struct.lowpan_addr_info** %15, align 8
  store %struct.lowpan_802154_neigh* null, %struct.lowpan_802154_neigh** %16, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %28)
  store %struct.ipv6hdr* %29, %struct.ipv6hdr** %17, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %171

35:                                               ; preds = %6
  %36 = load i16, i16* %10, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @ETH_P_IPV6, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %171

42:                                               ; preds = %35
  %43 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %44 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %47 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %50 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %54 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.net_device*, %struct.net_device** %9, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EUI64_ADDR_LEN, align 4
  %61 = call i32 @memcmp(i8* %56, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %42
  %64 = load i32, i32* @IEEE802154_ADDR_BROADCAST, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %67 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  %69 = load i8*, i8** @IEEE802154_ADDR_SHORT, align 8
  %70 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %71 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  br label %128

73:                                               ; preds = %42
  %74 = load i32, i32* @IEEE802154_ADDR_SHORT_UNSPEC, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  store i8* %75, i8** %19, align 8
  %76 = load %struct.ipv6hdr*, %struct.ipv6hdr** %17, align 8
  %77 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %76, i32 0, i32 0
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = call %struct.neighbour* @neigh_lookup(i32* @nd_tbl, i32* %77, %struct.net_device* %78)
  store %struct.neighbour* %79, %struct.neighbour** %18, align 8
  %80 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %81 = icmp ne %struct.neighbour* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %73
  %83 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %84 = call i32 @neighbour_priv(%struct.neighbour* %83)
  %85 = call %struct.lowpan_802154_neigh* @lowpan_802154_neigh(i32 %84)
  store %struct.lowpan_802154_neigh* %85, %struct.lowpan_802154_neigh** %16, align 8
  %86 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %87 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %86, i32 0, i32 0
  %88 = call i32 @read_lock_bh(i32* %87)
  %89 = load %struct.lowpan_802154_neigh*, %struct.lowpan_802154_neigh** %16, align 8
  %90 = getelementptr inbounds %struct.lowpan_802154_neigh, %struct.lowpan_802154_neigh* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %19, align 8
  %92 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %93 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %92, i32 0, i32 0
  %94 = call i32 @read_unlock_bh(i32* %93)
  br label %95

95:                                               ; preds = %82, %73
  %96 = load %struct.lowpan_802154_neigh*, %struct.lowpan_802154_neigh** %16, align 8
  %97 = icmp ne %struct.lowpan_802154_neigh* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i8*, i8** %19, align 8
  %100 = call i64 @lowpan_802154_is_valid_src_short_addr(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i8*, i8** %19, align 8
  %104 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %105 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @IEEE802154_ADDR_SHORT, align 8
  %108 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %109 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  br label %121

111:                                              ; preds = %98, %95
  %112 = load i8*, i8** @IEEE802154_ADDR_LONG, align 8
  %113 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %114 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %117 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @ieee802154_be64_to_le64(i32* %118, i8* %119)
  br label %121

121:                                              ; preds = %111, %102
  %122 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %123 = icmp ne %struct.neighbour* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.neighbour*, %struct.neighbour** %18, align 8
  %126 = call i32 @neigh_release(%struct.neighbour* %125)
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %63
  %129 = load i8*, i8** %12, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %160, label %131

131:                                              ; preds = %128
  %132 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %133 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @lowpan_802154_is_valid_src_short_addr(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load i8*, i8** @IEEE802154_ADDR_SHORT, align 8
  %139 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %140 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i8* %138, i8** %141, align 8
  %142 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %143 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %146 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  br label %159

148:                                              ; preds = %131
  %149 = load i8*, i8** @IEEE802154_ADDR_LONG, align 8
  %150 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %151 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i8* %149, i8** %152, align 8
  %153 = load %struct.wpan_dev*, %struct.wpan_dev** %14, align 8
  %154 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %157 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  br label %159

159:                                              ; preds = %148, %137
  br label %170

160:                                              ; preds = %128
  %161 = load i8*, i8** @IEEE802154_ADDR_LONG, align 8
  %162 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %163 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load %struct.lowpan_addr_info*, %struct.lowpan_addr_info** %15, align 8
  %166 = getelementptr inbounds %struct.lowpan_addr_info, %struct.lowpan_addr_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i8*, i8** %12, align 8
  %169 = call i32 @ieee802154_be64_to_le64(i32* %167, i8* %168)
  br label %170

170:                                              ; preds = %160, %159
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %170, %41, %32
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local %struct.TYPE_8__* @lowpan_802154_dev(%struct.net_device*) #1

declare dso_local %struct.lowpan_addr_info* @lowpan_skb_priv(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.neighbour* @neigh_lookup(i32*, i32*, %struct.net_device*) #1

declare dso_local %struct.lowpan_802154_neigh* @lowpan_802154_neigh(i32) #1

declare dso_local i32 @neighbour_priv(%struct.neighbour*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i64 @lowpan_802154_is_valid_src_short_addr(i8*) #1

declare dso_local i32 @ieee802154_be64_to_le64(i32*, i8*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
