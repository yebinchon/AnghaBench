; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_check_bcast_duplist.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_check_bcast_duplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.batadv_bcast_duplist_entry* }
%struct.batadv_bcast_duplist_entry = type { i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.batadv_bcast_packet = type { i32 }

@BATADV_DUPLIST_SIZE = common dso_local global i32 0, align 4
@BATADV_DUPLIST_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_bla_check_bcast_duplist(%struct.batadv_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.batadv_bcast_packet*, align 8
  %9 = alloca %struct.batadv_bcast_duplist_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.batadv_bcast_packet*
  store %struct.batadv_bcast_packet* %14, %struct.batadv_bcast_packet** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %8, align 8
  %17 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %16, i64 1
  %18 = bitcast %struct.batadv_bcast_packet* %17 to i32*
  %19 = call i64 @batadv_skb_crc32(%struct.sk_buff* %15, i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %21 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %70, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @BATADV_DUPLIST_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %30 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @BATADV_DUPLIST_SIZE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = srem i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %39 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %41, i64 %43
  store %struct.batadv_bcast_duplist_entry* %44, %struct.batadv_bcast_duplist_entry** %9, align 8
  %45 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %9, align 8
  %46 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BATADV_DUPLIST_TIMEOUT, align 4
  %49 = call i64 @batadv_has_timed_out(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  br label %73

52:                                               ; preds = %28
  %53 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %9, align 8
  %54 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %70

59:                                               ; preds = %52
  %60 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %9, align 8
  %61 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %8, align 8
  %64 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @batadv_compare_eth(i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %108

70:                                               ; preds = %68, %58
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %24

73:                                               ; preds = %51, %24
  %74 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %75 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BATADV_DUPLIST_SIZE, align 4
  %79 = add nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @BATADV_DUPLIST_SIZE, align 4
  %82 = load i32, i32* %6, align 4
  %83 = srem i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %85 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %87, i64 %89
  store %struct.batadv_bcast_duplist_entry* %90, %struct.batadv_bcast_duplist_entry** %9, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %9, align 8
  %93 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @jiffies, align 4
  %95 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %9, align 8
  %96 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.batadv_bcast_duplist_entry*, %struct.batadv_bcast_duplist_entry** %9, align 8
  %98 = getelementptr inbounds %struct.batadv_bcast_duplist_entry, %struct.batadv_bcast_duplist_entry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.batadv_bcast_packet*, %struct.batadv_bcast_packet** %8, align 8
  %101 = getelementptr inbounds %struct.batadv_bcast_packet, %struct.batadv_bcast_packet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ether_addr_copy(i32 %99, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %106 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %108

108:                                              ; preds = %73, %69
  %109 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %110 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock_bh(i32* %111)
  %113 = load i32, i32* %10, align 4
  ret i32 %113
}

declare dso_local i64 @batadv_skb_crc32(%struct.sk_buff*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @batadv_has_timed_out(i32, i32) #1

declare dso_local i64 @batadv_compare_eth(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
