; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_handle_claim.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_handle_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_bla_backbone_gw = type { i32 }

@BATADV_CLAIM_TYPE_CLAIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_hard_iface*, i32*, i32*, i16)* @batadv_handle_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_handle_claim(%struct.batadv_priv* %0, %struct.batadv_hard_iface* %1, i32* %2, i32* %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.batadv_bla_backbone_gw*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i16 %4, i16* %11, align 2
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i16, i16* %11, align 2
  %16 = call %struct.batadv_bla_backbone_gw* @batadv_bla_get_backbone_gw(%struct.batadv_priv* %13, i32* %14, i16 zeroext %15, i32 0)
  store %struct.batadv_bla_backbone_gw* %16, %struct.batadv_bla_backbone_gw** %12, align 8
  %17 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %12, align 8
  %18 = icmp ne %struct.batadv_bla_backbone_gw* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %47

24:                                               ; preds = %5
  %25 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i16, i16* %11, align 2
  %28 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %12, align 8
  %29 = call i32 @batadv_bla_add_claim(%struct.batadv_priv* %25, i32* %26, i16 zeroext %27, %struct.batadv_bla_backbone_gw* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %32 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @batadv_compare_eth(i32* %30, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i16, i16* %11, align 2
  %42 = load i32, i32* @BATADV_CLAIM_TYPE_CLAIM, align 4
  %43 = call i32 @batadv_bla_send_claim(%struct.batadv_priv* %39, i32* %40, i16 zeroext %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %24
  %45 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %12, align 8
  %46 = call i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw* %45)
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %23
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.batadv_bla_backbone_gw* @batadv_bla_get_backbone_gw(%struct.batadv_priv*, i32*, i16 zeroext, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @batadv_bla_add_claim(%struct.batadv_priv*, i32*, i16 zeroext, %struct.batadv_bla_backbone_gw*) #1

declare dso_local i64 @batadv_compare_eth(i32*, i32) #1

declare dso_local i32 @batadv_bla_send_claim(%struct.batadv_priv*, i32*, i16 zeroext, i32) #1

declare dso_local i32 @batadv_backbone_gw_put(%struct.batadv_bla_backbone_gw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
