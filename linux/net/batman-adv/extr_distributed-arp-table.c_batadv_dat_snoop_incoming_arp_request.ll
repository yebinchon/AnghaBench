; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_incoming_arp_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_incoming_arp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_dat_entry = type { i32 }

@ARPOP_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Parsing incoming ARP REQUEST\00", align 1
@BATADV_P_DAT_CACHE_REPLY = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@BATADV_CNT_DAT_CACHED_REPLY_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_dat_snoop_incoming_arp_request(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.batadv_dat_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.batadv_dat_entry* null, %struct.batadv_dat_entry** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %17 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call zeroext i16 @batadv_dat_get_vid(%struct.sk_buff* %22, i32* %6)
  store i16 %23, i16* %14, align 2
  %24 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @batadv_arp_get_type(%struct.batadv_priv* %24, %struct.sk_buff* %25, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @ARPOP_REQUEST, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %95

32:                                               ; preds = %21
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @batadv_arp_hw_src(%struct.sk_buff* %33, i32 %34)
  store i32* %35, i32** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @batadv_arp_ip_src(%struct.sk_buff* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @batadv_arp_ip_dst(%struct.sk_buff* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @batadv_dbg_arp(%struct.batadv_priv* %42, %struct.sk_buff* %43, i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i16, i16* %14, align 2
  %50 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %46, i32 %47, i32* %48, i16 zeroext %49)
  %51 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i16, i16* %14, align 2
  %54 = call %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv* %51, i32 %52, i16 zeroext %53)
  store %struct.batadv_dat_entry* %54, %struct.batadv_dat_entry** %12, align 8
  %55 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %12, align 8
  %56 = icmp ne %struct.batadv_dat_entry* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %32
  br label %95

58:                                               ; preds = %32
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %12, align 8
  %63 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load i16, i16* %14, align 2
  %67 = call %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv* %59, i32 %60, i32 %61, i32 %64, i32* %65, i16 zeroext %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %11, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %58
  br label %95

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load i32, i32* @BATADV_P_DAT_CACHE_REPLY, align 4
  %79 = load i16, i16* %14, align 2
  %80 = call i32 @batadv_send_skb_via_tt_4addr(%struct.batadv_priv* %76, %struct.sk_buff* %77, i32 %78, i32* null, i16 zeroext %79)
  store i32 %80, i32* %15, align 4
  br label %86

81:                                               ; preds = %71
  %82 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %84 = load i16, i16* %14, align 2
  %85 = call i32 @batadv_send_skb_via_tt(%struct.batadv_priv* %82, %struct.sk_buff* %83, i32* null, i16 zeroext %84)
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %81, %75
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @NET_XMIT_DROP, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %92 = load i32, i32* @BATADV_CNT_DAT_CACHED_REPLY_TX, align 4
  %93 = call i32 @batadv_inc_counter(%struct.batadv_priv* %91, i32 %92)
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %70, %57, %31, %20
  %96 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %12, align 8
  %97 = icmp ne %struct.batadv_dat_entry* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %12, align 8
  %100 = call i32 @batadv_dat_entry_put(%struct.batadv_dat_entry* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %13, align 4
  ret i32 %108
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local zeroext i16 @batadv_dat_get_vid(%struct.sk_buff*, i32*) #1

declare dso_local i64 @batadv_arp_get_type(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32* @batadv_arp_hw_src(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_src(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_dst(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dbg_arp(%struct.batadv_priv*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32 @batadv_dat_entry_add(%struct.batadv_priv*, i32, i32*, i16 zeroext) #1

declare dso_local %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv*, i32, i32, i32, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_send_skb_via_tt_4addr(%struct.batadv_priv*, %struct.sk_buff*, i32, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_send_skb_via_tt(%struct.batadv_priv*, %struct.sk_buff*, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_dat_entry_put(%struct.batadv_dat_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
