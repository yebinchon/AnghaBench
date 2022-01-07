; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_incoming_arp_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_incoming_arp_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_dat_entry = type { i32, i32 }

@ARPOP_REPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Parsing incoming ARP REPLY\00", align 1
@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"Doubled ARP reply removed: ARP MSG = [src: %pM-%pI4 dst: %pM-%pI4]; dat_entry: %pM-%pI4\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Device %pM claimed by another backbone gw. Drop ARP reply.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_dat_snoop_incoming_arp_reply(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_dat_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.batadv_dat_entry* null, %struct.batadv_dat_entry** %7, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %16 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %111

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call zeroext i16 @batadv_dat_get_vid(%struct.sk_buff* %21, i32* %6)
  store i16 %22, i16* %14, align 2
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @batadv_arp_get_type(%struct.batadv_priv* %23, %struct.sk_buff* %24, i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @ARPOP_REPLY, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %111

31:                                               ; preds = %20
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @batadv_dbg_arp(%struct.batadv_priv* %32, %struct.sk_buff* %33, i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @batadv_arp_hw_src(%struct.sk_buff* %36, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @batadv_arp_ip_src(%struct.sk_buff* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @batadv_arp_hw_dst(%struct.sk_buff* %42, i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @batadv_arp_ip_dst(%struct.sk_buff* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i16, i16* %14, align 2
  %51 = call %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv* %48, i32 %49, i16 zeroext %50)
  store %struct.batadv_dat_entry* %51, %struct.batadv_dat_entry** %7, align 8
  %52 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %53 = icmp ne %struct.batadv_dat_entry* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %31
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %57 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @batadv_compare_eth(i32* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i32, i32* @BATADV_DBG_DAT, align 4
  %63 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %67 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %70 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %69, i32 0, i32 0
  %71 = call i32 (i32, %struct.batadv_priv*, i8*, i32*, ...) @batadv_dbg(i32 %62, %struct.batadv_priv* %63, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32* %64, i32* %9, i32* %65, i32* %10, i32 %68, i32* %70)
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %61, %54, %31
  %73 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i16, i16* %14, align 2
  %77 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %73, i32 %74, i32* %75, i16 zeroext %76)
  %78 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load i16, i16* %14, align 2
  %82 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %78, i32 %79, i32* %80, i16 zeroext %81)
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %72
  br label %111

86:                                               ; preds = %72
  %87 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i16, i16* %14, align 2
  %90 = call i32 @batadv_bla_check_claim(%struct.batadv_priv* %87, i32* %88, i16 zeroext %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @BATADV_DBG_DAT, align 4
  %94 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 (i32, %struct.batadv_priv*, i8*, i32*, ...) @batadv_dbg(i32 %93, %struct.batadv_priv* %94, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32* %95)
  store i32 1, i32* %13, align 4
  br label %111

97:                                               ; preds = %86
  %98 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i16, i16* %14, align 2
  %101 = call i32 @batadv_is_my_client(%struct.batadv_priv* %98, i32* %99, i16 zeroext %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %13, align 4
  %105 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i16, i16* %14, align 2
  %108 = call i32 @batadv_is_my_client(%struct.batadv_priv* %105, i32* %106, i16 zeroext %107)
  %109 = load i32, i32* %13, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %97, %92, %85, %30, %19
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = call i32 @kfree_skb(%struct.sk_buff* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %119 = icmp ne %struct.batadv_dat_entry* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %122 = call i32 @batadv_dat_entry_put(%struct.batadv_dat_entry* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %13, align 4
  ret i32 %124
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local zeroext i16 @batadv_dat_get_vid(%struct.sk_buff*, i32*) #1

declare dso_local i64 @batadv_arp_get_type(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dbg_arp(%struct.batadv_priv*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32* @batadv_arp_hw_src(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_src(%struct.sk_buff*, i32) #1

declare dso_local i32* @batadv_arp_hw_dst(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_dst(%struct.sk_buff*, i32) #1

declare dso_local %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i64 @batadv_compare_eth(i32*, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*, ...) #1

declare dso_local i32 @batadv_dat_entry_add(%struct.batadv_priv*, i32, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_bla_check_claim(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_is_my_client(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @batadv_dat_entry_put(%struct.batadv_dat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
