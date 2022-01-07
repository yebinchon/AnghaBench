; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_aggregate_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_aggregate_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32, i32 }
%struct.batadv_forw_packet = type { i32, i32, i32, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@BATADV_MAX_AGGREGATION_BYTES = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@batadv_iv_send_outstanding_bat_ogm_packet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, i32, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*, i32)* @batadv_iv_ogm_aggregate_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_aggregate_new(i8* %0, i32 %1, i64 %2, i32 %3, %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.batadv_hard_iface*, align 8
  %13 = alloca %struct.batadv_hard_iface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.batadv_priv*, align 8
  %16 = alloca %struct.batadv_forw_packet*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.batadv_hard_iface* %4, %struct.batadv_hard_iface** %12, align 8
  store %struct.batadv_hard_iface* %5, %struct.batadv_hard_iface** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %22 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.batadv_priv* @netdev_priv(i32 %23)
  store %struct.batadv_priv* %24, %struct.batadv_priv** %15, align 8
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %7
  br label %31

28:                                               ; preds = %7
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %15, align 8
  %30 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %29, i32 0, i32 1
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32* [ null, %27 ], [ %30, %28 ]
  store i32* %32, i32** %20, align 8
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %15, align 8
  %34 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %33, i32 0, i32 0
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BATADV_MAX_AGGREGATION_BYTES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @BATADV_MAX_AGGREGATION_BYTES, align 4
  store i32 %42, i32* %19, align 4
  br label %45

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %19, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i64, i64* @ETH_HLEN, align 8
  %47 = load i32, i32* %19, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32* null, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %17, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %54 = icmp ne %struct.sk_buff* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %116

56:                                               ; preds = %45
  %57 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %58 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %13, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = load %struct.batadv_priv*, %struct.batadv_priv** %15, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %62 = call %struct.batadv_forw_packet* @batadv_forw_packet_alloc(%struct.batadv_hard_iface* %57, %struct.batadv_hard_iface* %58, i32* %59, %struct.batadv_priv* %60, %struct.sk_buff* %61)
  store %struct.batadv_forw_packet* %62, %struct.batadv_forw_packet** %16, align 8
  %63 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %64 = icmp ne %struct.batadv_forw_packet* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  br label %116

68:                                               ; preds = %56
  %69 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %70 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %71 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %75 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %74, i32 0, i32 5
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* @ETH_HLEN, align 8
  %78 = call i32 @skb_reserve(%struct.TYPE_3__* %76, i64 %77)
  %79 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %80 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %79, i32 0, i32 5
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i8* @skb_put(%struct.TYPE_3__* %81, i32 %82)
  store i8* %83, i8** %18, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %86 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %93 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %95 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %96 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %99 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %68
  %103 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %104 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, 1
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %102, %68
  %108 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %109 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %108, i32 0, i32 4
  %110 = load i32, i32* @batadv_iv_send_outstanding_bat_ogm_packet, align 4
  %111 = call i32 @INIT_DELAYED_WORK(i32* %109, i32 %110)
  %112 = load %struct.batadv_priv*, %struct.batadv_priv** %15, align 8
  %113 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %16, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @batadv_forw_packet_ogmv1_queue(%struct.batadv_priv* %112, %struct.batadv_forw_packet* %113, i64 %114)
  br label %116

116:                                              ; preds = %107, %65, %55
  ret void
}

declare dso_local %struct.batadv_priv* @netdev_priv(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32*, i32) #1

declare dso_local %struct.batadv_forw_packet* @batadv_forw_packet_alloc(%struct.batadv_hard_iface*, %struct.batadv_hard_iface*, i32*, %struct.batadv_priv*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_3__*, i64) #1

declare dso_local i8* @skb_put(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @batadv_forw_packet_ogmv1_queue(%struct.batadv_priv*, %struct.batadv_forw_packet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
