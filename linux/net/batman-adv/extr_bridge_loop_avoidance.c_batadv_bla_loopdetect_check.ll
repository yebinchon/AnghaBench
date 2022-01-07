; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_loopdetect_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_loopdetect_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_bla_backbone_gw = type { i32 }
%struct.ethhdr = type { i32 }

@BATADV_BLA_LOOPDETECT_TIMEOUT = common dso_local global i32 0, align 4
@batadv_event_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, %struct.batadv_hard_iface*, i16)* @batadv_bla_loopdetect_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_bla_loopdetect_check(%struct.batadv_priv* %0, %struct.sk_buff* %1, %struct.batadv_hard_iface* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.batadv_bla_backbone_gw*, align 8
  %11 = alloca %struct.ethhdr*, align 8
  %12 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.batadv_hard_iface* %2, %struct.batadv_hard_iface** %8, align 8
  store i16 %3, i16* %9, align 2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %13)
  store %struct.ethhdr* %14, %struct.ethhdr** %11, align 8
  %15 = load %struct.ethhdr*, %struct.ethhdr** %11, align 8
  %16 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @batadv_compare_eth(i32 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %27 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BATADV_BLA_LOOPDETECT_TIMEOUT, align 4
  %31 = call i64 @batadv_has_timed_out(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %61

34:                                               ; preds = %25
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %37 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i16, i16* %9, align 2
  %42 = call %struct.batadv_bla_backbone_gw* @batadv_bla_get_backbone_gw(%struct.batadv_priv* %35, i32 %40, i16 zeroext %41, i32 1)
  store %struct.batadv_bla_backbone_gw* %42, %struct.batadv_bla_backbone_gw** %10, align 8
  %43 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %44 = icmp ne %struct.batadv_bla_backbone_gw* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %61

50:                                               ; preds = %34
  %51 = load i32, i32* @batadv_event_workqueue, align 4
  %52 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %53 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %52, i32 0, i32 0
  %54 = call i32 @queue_work(i32 %51, i32* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %10, align 8
  %59 = call i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw* %58)
  br label %60

60:                                               ; preds = %57, %50
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %49, %33, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @batadv_compare_eth(i32, i32) #1

declare dso_local i64 @batadv_has_timed_out(i32, i32) #1

declare dso_local %struct.batadv_bla_backbone_gw* @batadv_bla_get_backbone_gw(%struct.batadv_priv*, i32, i16 zeroext, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
