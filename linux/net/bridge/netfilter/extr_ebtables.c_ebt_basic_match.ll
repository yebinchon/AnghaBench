; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_basic_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebtables.c_ebt_basic_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_entry = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i64, i32, i32 }
%struct.net_bridge_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@EBT_802_3 = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@EBT_NOPROTO = common dso_local global i32 0, align 4
@EBT_IIN = common dso_local global i32 0, align 4
@EBT_IOUT = common dso_local global i32 0, align 4
@EBT_ILOGICALIN = common dso_local global i32 0, align 4
@EBT_ILOGICALOUT = common dso_local global i32 0, align 4
@EBT_SOURCEMAC = common dso_local global i32 0, align 4
@EBT_ISOURCE = common dso_local global i32 0, align 4
@EBT_DESTMAC = common dso_local global i32 0, align 4
@EBT_IDEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_entry*, %struct.sk_buff*, %struct.net_device*, %struct.net_device*)* @ebt_basic_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_basic_match(%struct.ebt_entry* %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ebt_entry*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  %11 = alloca %struct.net_bridge_port*, align 8
  %12 = alloca i64, align 8
  store %struct.ebt_entry* %0, %struct.ebt_entry** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %13)
  store %struct.ethhdr* %14, %struct.ethhdr** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ETH_P_8021Q, align 4
  %20 = call i64 @htons(i32 %19)
  store i64 %20, i64* %12, align 8
  br label %25

21:                                               ; preds = %4
  %22 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %23 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EBT_802_3, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %34 = load i32, i32* @EBT_IPROTO, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @eth_proto_is_802_3(i64 %35)
  %37 = call i64 @NF_INVF(%struct.ebt_entry* %33, i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %182

40:                                               ; preds = %32
  br label %61

41:                                               ; preds = %25
  %42 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %43 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EBT_NOPROTO, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %50 = load i32, i32* @EBT_IPROTO, align 4
  %51 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %52 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @NF_INVF(%struct.ebt_entry* %49, i32 %50, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %182

60:                                               ; preds = %48, %41
  br label %61

61:                                               ; preds = %60, %40
  %62 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %63 = load i32, i32* @EBT_IIN, align 4
  %64 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %65 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %8, align 8
  %68 = call i32 @ebt_dev_check(i32 %66, %struct.net_device* %67)
  %69 = call i64 @NF_INVF(%struct.ebt_entry* %62, i32 %63, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 1, i32* %5, align 4
  br label %182

72:                                               ; preds = %61
  %73 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %74 = load i32, i32* @EBT_IOUT, align 4
  %75 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %76 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = call i32 @ebt_dev_check(i32 %77, %struct.net_device* %78)
  %80 = call i64 @NF_INVF(%struct.ebt_entry* %73, i32 %74, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %182

83:                                               ; preds = %72
  %84 = load %struct.net_device*, %struct.net_device** %8, align 8
  %85 = icmp ne %struct.net_device* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %83
  %87 = load %struct.net_device*, %struct.net_device** %8, align 8
  %88 = call %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device* %87)
  store %struct.net_bridge_port* %88, %struct.net_bridge_port** %11, align 8
  %89 = icmp ne %struct.net_bridge_port* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %92 = load i32, i32* @EBT_ILOGICALIN, align 4
  %93 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %94 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %97 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load %struct.net_device*, %struct.net_device** %99, align 8
  %101 = call i32 @ebt_dev_check(i32 %95, %struct.net_device* %100)
  %102 = call i64 @NF_INVF(%struct.ebt_entry* %91, i32 %92, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  store i32 1, i32* %5, align 4
  br label %182

105:                                              ; preds = %90, %86, %83
  %106 = load %struct.net_device*, %struct.net_device** %9, align 8
  %107 = icmp ne %struct.net_device* %106, null
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  %109 = load %struct.net_device*, %struct.net_device** %9, align 8
  %110 = call %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device* %109)
  store %struct.net_bridge_port* %110, %struct.net_bridge_port** %11, align 8
  %111 = icmp ne %struct.net_bridge_port* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %114 = load i32, i32* @EBT_ILOGICALOUT, align 4
  %115 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %116 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.net_bridge_port*, %struct.net_bridge_port** %11, align 8
  %119 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load %struct.net_device*, %struct.net_device** %121, align 8
  %123 = call i32 @ebt_dev_check(i32 %117, %struct.net_device* %122)
  %124 = call i64 @NF_INVF(%struct.ebt_entry* %113, i32 %114, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  br label %182

127:                                              ; preds = %112, %108, %105
  %128 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %129 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @EBT_SOURCEMAC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %154

134:                                              ; preds = %127
  %135 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %136 = load i32, i32* @EBT_ISOURCE, align 4
  %137 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %138 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %141 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %144 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ether_addr_equal_masked(i32 %139, i32 %142, i32 %145)
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i64 @NF_INVF(%struct.ebt_entry* %135, i32 %136, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %134
  store i32 1, i32* %5, align 4
  br label %182

153:                                              ; preds = %134
  br label %154

154:                                              ; preds = %153, %127
  %155 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %156 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @EBT_DESTMAC, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %154
  %162 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %163 = load i32, i32* @EBT_IDEST, align 4
  %164 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %165 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %168 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ebt_entry*, %struct.ebt_entry** %6, align 8
  %171 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ether_addr_equal_masked(i32 %166, i32 %169, i32 %172)
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i64 @NF_INVF(%struct.ebt_entry* %162, i32 %163, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %161
  store i32 1, i32* %5, align 4
  br label %182

180:                                              ; preds = %161
  br label %181

181:                                              ; preds = %180, %154
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %181, %179, %152, %126, %104, %82, %71, %59, %39
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @NF_INVF(%struct.ebt_entry*, i32, i32) #1

declare dso_local i32 @eth_proto_is_802_3(i64) #1

declare dso_local i32 @ebt_dev_check(i32, %struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device*) #1

declare dso_local i32 @ether_addr_equal_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
