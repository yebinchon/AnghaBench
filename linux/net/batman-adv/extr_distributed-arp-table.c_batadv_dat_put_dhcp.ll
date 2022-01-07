; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_put_dhcp.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_put_dhcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@BATADV_P_DAT_DHT_PUT = common dso_local global i32 0, align 4
@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Snooped from outgoing DHCPACK (server address): %pI4, %pM (vid: %i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Snooped from outgoing DHCPACK (client address): %pI4, %pM (vid: %i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, i32*, i32, i32*, i32, i16)* @batadv_dat_put_dhcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_dat_put_dhcp(%struct.batadv_priv* %0, i32* %1, i32 %2, i32* %3, i32 %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i16 %5, i16* %12, align 2
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i16, i16* %12, align 2
  %20 = call %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv* %14, i32 %15, i32 %16, i32* %17, i32* %18, i16 zeroext %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %64

24:                                               ; preds = %6
  %25 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %26 = load i32, i32* @ETH_HLEN, align 4
  %27 = call i32 @skb_set_network_header(%struct.sk_buff* %25, i32 %26)
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i16, i16* %12, align 2
  %32 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %28, i32 %29, i32* %30, i16 zeroext %31)
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i16, i16* %12, align 2
  %37 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %33, i32 %34, i32* %35, i16 zeroext %36)
  %38 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i16, i16* %12, align 2
  %42 = load i32, i32* @BATADV_P_DAT_DHT_PUT, align 4
  %43 = call i32 @batadv_dat_forward_data(%struct.batadv_priv* %38, %struct.sk_buff* %39, i32 %40, i16 zeroext %41, i32 %42)
  %44 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i16, i16* %12, align 2
  %48 = load i32, i32* @BATADV_P_DAT_DHT_PUT, align 4
  %49 = call i32 @batadv_dat_forward_data(%struct.batadv_priv* %44, %struct.sk_buff* %45, i32 %46, i16 zeroext %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = call i32 @consume_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* @BATADV_DBG_DAT, align 4
  %53 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i16, i16* %12, align 2
  %56 = call i32 @batadv_print_vid(i16 zeroext %55)
  %57 = call i32 @batadv_dbg(i32 %52, %struct.batadv_priv* %53, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %54, i32 %56)
  %58 = load i32, i32* @BATADV_DBG_DAT, align 4
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i16, i16* %12, align 2
  %62 = call i32 @batadv_print_vid(i16 zeroext %61)
  %63 = call i32 @batadv_dbg(i32 %58, %struct.batadv_priv* %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %60, i32 %62)
  br label %64

64:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.sk_buff* @batadv_dat_arp_create_reply(%struct.batadv_priv*, i32, i32, i32*, i32*, i16 zeroext) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dat_entry_add(%struct.batadv_priv*, i32, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_dat_forward_data(%struct.batadv_priv*, %struct.sk_buff*, i32, i16 zeroext, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @batadv_print_vid(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
