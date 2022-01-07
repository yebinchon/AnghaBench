; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_outgoing_arp_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_snoop_outgoing_arp_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }

@ARPOP_REPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Parsing outgoing ARP REPLY\00", align 1
@BATADV_P_DAT_DHT_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_dat_snoop_outgoing_arp_reply(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %13 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call zeroext i16 @batadv_dat_get_vid(%struct.sk_buff* %18, i32* %10)
  store i16 %19, i16* %11, align 2
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @batadv_arp_get_type(%struct.batadv_priv* %20, %struct.sk_buff* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @ARPOP_REPLY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %67

28:                                               ; preds = %17
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @batadv_dbg_arp(%struct.batadv_priv* %29, %struct.sk_buff* %30, i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @batadv_arp_hw_src(%struct.sk_buff* %33, i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @batadv_arp_ip_src(%struct.sk_buff* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32* @batadv_arp_hw_dst(%struct.sk_buff* %39, i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @batadv_arp_ip_dst(%struct.sk_buff* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i16, i16* %11, align 2
  %49 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %45, i32 %46, i32* %47, i16 zeroext %48)
  %50 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i16, i16* %11, align 2
  %54 = call i32 @batadv_dat_entry_add(%struct.batadv_priv* %50, i32 %51, i32* %52, i16 zeroext %53)
  %55 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i16, i16* %11, align 2
  %59 = load i32, i32* @BATADV_P_DAT_DHT_PUT, align 4
  %60 = call i32 @batadv_dat_forward_data(%struct.batadv_priv* %55, %struct.sk_buff* %56, i32 %57, i16 zeroext %58, i32 %59)
  %61 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i16, i16* %11, align 2
  %65 = load i32, i32* @BATADV_P_DAT_DHT_PUT, align 4
  %66 = call i32 @batadv_dat_forward_data(%struct.batadv_priv* %61, %struct.sk_buff* %62, i32 %63, i16 zeroext %64, i32 %65)
  br label %67

67:                                               ; preds = %28, %27, %16
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local zeroext i16 @batadv_dat_get_vid(%struct.sk_buff*, i32*) #1

declare dso_local i64 @batadv_arp_get_type(%struct.batadv_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dbg_arp(%struct.batadv_priv*, %struct.sk_buff*, i32, i8*) #1

declare dso_local i32* @batadv_arp_hw_src(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_src(%struct.sk_buff*, i32) #1

declare dso_local i32* @batadv_arp_hw_dst(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_arp_ip_dst(%struct.sk_buff*, i32) #1

declare dso_local i32 @batadv_dat_entry_add(%struct.batadv_priv*, i32, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_dat_forward_data(%struct.batadv_priv*, %struct.sk_buff*, i32, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
