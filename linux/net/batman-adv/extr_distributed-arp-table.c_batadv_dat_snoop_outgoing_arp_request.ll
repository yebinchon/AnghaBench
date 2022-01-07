; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_outgoing_arp_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_outgoing_arp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.batadv_dat_entry = type { i32 }

@ARPOP_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Parsing outgoing ARP REQUEST\00", align 1
@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Device %pM claimed by another backbone gw. Don't send ARP reply!\00", align 1
@BATADV_CNT_RX = common dso_local global i32 0, align 4
@BATADV_CNT_RX_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"ARP request replied locally\0A\00", align 1
@BATADV_P_DAT_DHT_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_dat_snoop_outgoing_arp_request(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_dat_entry*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  store %struct.batadv_dat_entry* null, %struct.batadv_dat_entry** %10, align 8
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %16 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %129

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call zeroext i16 @batadv_dat_get_vid(%struct.sk_buff* %24, i32* %13)
  store i16 %25, i16* %14, align 2
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @batadv_arp_get_type(%struct.batadv_priv* %26, %struct.sk_buff* %27, i32 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @ARPOP_REQUEST, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %129

34:                                               ; preds = %23
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @batadv_dbg_arp(%struct.batadv_priv* %35, %struct.sk_buff* %36, i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @batadv_arp_ip_src(%struct.sk_buff* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32* @batadv_arp_hw_src(%struct.sk_buff* %42, i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @batadv_arp_ip_dst(%struct.sk_buff* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i16, i16* %14, align 2
  %52 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %48, i32 %49, i32* %50, i16 zeroext %51)
  %53 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i16, i16* %14, align 2
  %56 = call %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv* %53, i32 %54, i16 zeroext %55)
  store %struct.batadv_dat_entry* %56, %struct.batadv_dat_entry** %10, align 8
  %57 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %58 = icmp ne %struct.batadv_dat_entry* %57, null
  br i1 %58, label %59, label %121

59:                                               ; preds = %34
  %60 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %61 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %62 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i16, i16* %14, align 2
  %65 = call i64 @batadv_is_my_client(%struct.batadv_priv* %60, i32 %63, i16 zeroext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %9, align 4
  br label %129

68:                                               ; preds = %59
  %69 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %70 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %71 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i16, i16* %14, align 2
  %74 = call i32 @batadv_bla_check_claim(%struct.batadv_priv* %69, i32 %72, i16 zeroext %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* @BATADV_DBG_DAT, align 4
  %78 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %79 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %80 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %77, %struct.batadv_priv* %78, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  store i32 1, i32* %9, align 4
  br label %129

83:                                               ; preds = %68
  %84 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %88 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i16, i16* %14, align 2
  %92 = call %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv* %84, i32 %85, i32 %86, i32 %89, i32* %90, i16 zeroext %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %11, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %83
  br label %129

96:                                               ; preds = %83
  %97 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %98 = load %struct.net_device*, %struct.net_device** %12, align 8
  %99 = call i32 @eth_type_trans(%struct.sk_buff* %97, %struct.net_device* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %103 = load i32, i32* @BATADV_CNT_RX, align 4
  %104 = call i32 @batadv_inc_counter(%struct.batadv_priv* %102, i32 %103)
  %105 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %106 = load i32, i32* @BATADV_CNT_RX_BYTES, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ETH_HLEN, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @batadv_add_counter(%struct.batadv_priv* %105, i32 %106, i64 %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %117 = call i32 @netif_rx(%struct.sk_buff* %116)
  %118 = load i32, i32* @BATADV_DBG_DAT, align 4
  %119 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %120 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %118, %struct.batadv_priv* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %128

121:                                              ; preds = %34
  %122 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i16, i16* %14, align 2
  %126 = load i32, i32* @BATADV_P_DAT_DHT_GET, align 4
  %127 = call i32 @batadv_dat_forward_data(%struct.batadv_priv* %122, %struct.sk_buff* %123, i32 %124, i16 zeroext %125, i32 %126)
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %121, %96
  br label %129

129:                                              ; preds = %128, %95, %76, %67, %33, %22
  %130 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %131 = icmp ne %struct.batadv_dat_entry* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %10, align 8
  %134 = call i32 @batadv_dat_entry_put(%struct.batadv_dat_entry* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local zeroext i16 @batadv_dat_get_vid(%struct.sk_buff*, i32*) #1

declare dso_local i64 @batadv_arp_get_type(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dbg_arp(%struct.batadv_priv*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @batadv_arp_ip_src(%struct.sk_buff*, i32) #1

declare dso_local i32* @batadv_arp_hw_src(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_dst(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dat_entry_add(%struct.batadv_priv*, i32, i32*, i16 zeroext) #1

declare dso_local %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i64 @batadv_is_my_client(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_bla_check_claim(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, ...) #1

declare dso_local %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv*, i32, i32, i32, i32*, i16 zeroext) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_add_counter(%struct.batadv_priv*, i32, i64) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @batadv_dat_forward_data(%struct.batadv_priv*, %struct.sk_buff*, i32, i16 zeroext, i32) #1

declare dso_local i32 @batadv_dat_entry_put(%struct.batadv_dat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
