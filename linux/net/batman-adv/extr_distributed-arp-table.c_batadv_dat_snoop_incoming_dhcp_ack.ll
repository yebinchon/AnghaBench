; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_incoming_dhcp_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_incoming_dhcp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ethhdr = type { i32*, i32 }

@BATADV_DHCP_CHADDR_LEN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Snooped from incoming DHCPACK (server address): %pI4, %pM (vid: %i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Snooped from incoming DHCPACK (client address): %pI4, %pM (vid: %i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_dat_snoop_incoming_dhcp_ack(%struct.batadv_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @BATADV_DHCP_CHADDR_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %21 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %20, i32 0, i32 0
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 1, i32* %15, align 4
  br label %86

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @ETH_HLEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @pskb_may_pull(%struct.sk_buff* %26, i64 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 1, i32* %15, align 4
  br label %86

38:                                               ; preds = %25
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = inttoptr i64 %44 to %struct.ethhdr*
  store %struct.ethhdr* %45, %struct.ethhdr** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @ETH_HLEN, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @skb_set_network_header(%struct.sk_buff* %46, i64 %50)
  %52 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %53 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %13, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @batadv_dat_check_dhcp_ack(%struct.sk_buff* %55, i32 %56, i32* %10, i32* %19, i32* %11)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %38
  store i32 1, i32* %15, align 4
  br label %86

60:                                               ; preds = %38
  %61 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %62 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %14, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call zeroext i16 @batadv_dat_get_vid(%struct.sk_buff* %64, i32* %6)
  store i16 %65, i16* %12, align 2
  %66 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i16, i16* %12, align 2
  %69 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %66, i32 %67, i32* %19, i16 zeroext %68)
  %70 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i16, i16* %12, align 2
  %74 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %70, i32 %71, i32* %72, i16 zeroext %73)
  %75 = load i32, i32* @BATADV_DBG_DAT, align 4
  %76 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i16, i16* %12, align 2
  %79 = call i32 @batadv_print_vid(i16 zeroext %78)
  %80 = call i32 @batadv_dbg(i32 %75, %struct.batadv_priv* %76, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32* %10, i32* %77, i32 %79)
  %81 = load i32, i32* @BATADV_DBG_DAT, align 4
  %82 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %83 = load i16, i16* %12, align 2
  %84 = call i32 @batadv_print_vid(i16 zeroext %83)
  %85 = call i32 @batadv_dbg(i32 %81, %struct.batadv_priv* %82, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %19, i32 %84)
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %60, %59, %37, %24
  %87 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %15, align 4
  switch i32 %88, label %90 [
    i32 0, label %89
    i32 1, label %89
  ]

89:                                               ; preds = %86, %86
  ret void

90:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #2

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #2

declare dso_local i32 @batadv_dat_check_dhcp_ack(%struct.sk_buff*, i32, i32*, i32*, i32*) #2

declare dso_local zeroext i16 @batadv_dat_get_vid(%struct.sk_buff*, i32*) #2

declare dso_local i32 @batadv_dat_entry_add(%struct.batadv_priv*, i32, i32*, i16 zeroext) #2

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @batadv_print_vid(i16 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
