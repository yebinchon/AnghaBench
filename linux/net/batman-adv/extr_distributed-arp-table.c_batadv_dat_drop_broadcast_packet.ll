; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_drop_broadcast_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_drop_broadcast_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_forw_packet = type { i32 }
%struct.batadv_dat_entry = type { i32 }

@ARPOP_REQUEST = common dso_local global i64 0, align 8
@BATADV_DBG_DAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ARP Request for %pI4: fallback\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ARP Request for %pI4: fallback prevented\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_dat_drop_broadcast_packet(%struct.batadv_priv* %0, %struct.batadv_forw_packet* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_forw_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_dat_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_forw_packet* %1, %struct.batadv_forw_packet** %4, align 8
  store %struct.batadv_dat_entry* null, %struct.batadv_dat_entry** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %4, align 8
  %18 = call i64 @batadv_forw_packet_is_rebroadcast(%struct.batadv_forw_packet* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %56

21:                                               ; preds = %16
  %22 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %4, align 8
  %23 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i16 @batadv_dat_get_vid(i32 %24, i32* %9)
  store i16 %25, i16* %10, align 2
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %27 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %4, align 8
  %28 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @batadv_arp_get_type(%struct.batadv_priv* %26, i32 %29, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @ARPOP_REQUEST, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %56

36:                                               ; preds = %21
  %37 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %4, align 8
  %38 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @batadv_arp_ip_dst(i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i16, i16* %10, align 2
  %45 = call %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv* %42, i32 %43, i16 zeroext %44)
  store %struct.batadv_dat_entry* %45, %struct.batadv_dat_entry** %7, align 8
  %46 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %47 = icmp ne %struct.batadv_dat_entry* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @BATADV_DBG_DAT, align 4
  %50 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %51 = call i32 @batadv_dbg(i32 %49, %struct.batadv_priv* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %6)
  br label %56

52:                                               ; preds = %36
  %53 = load i32, i32* @BATADV_DBG_DAT, align 4
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %55 = call i32 @batadv_dbg(i32 %53, %struct.batadv_priv* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %48, %35, %20, %15
  %57 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %58 = icmp ne %struct.batadv_dat_entry* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %7, align 8
  %61 = call i32 @batadv_dat_entry_put(%struct.batadv_dat_entry* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @batadv_forw_packet_is_rebroadcast(%struct.batadv_forw_packet*) #1

declare dso_local zeroext i16 @batadv_dat_get_vid(i32, i32*) #1

declare dso_local i64 @batadv_arp_get_type(%struct.batadv_priv*, i32, i32) #1

declare dso_local i32 @batadv_arp_ip_dst(i32, i32) #1

declare dso_local %struct.batadv_dat_entry* @batadv_dat_entry_hash_find(%struct.batadv_priv*, i32, i16 zeroext) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*) #1

declare dso_local i32 @batadv_dat_entry_put(%struct.batadv_dat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
