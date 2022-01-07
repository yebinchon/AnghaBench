; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_gw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.batadv_priv*)* }

@batadv_gw_tvlv_ogm_handler_v1 = common dso_local global i32 0, align 4
@BATADV_TVLV_GW = common dso_local global i32 0, align 4
@BATADV_TVLV_HANDLER_OGM_CIFNOTFND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_gw_init(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %3 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %4 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %3, i32 0, i32 1
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32 (%struct.batadv_priv*)*, i32 (%struct.batadv_priv*)** %7, align 8
  %9 = icmp ne i32 (%struct.batadv_priv*)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.batadv_priv*)*, i32 (%struct.batadv_priv*)** %15, align 8
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %18 = call i32 %16(%struct.batadv_priv* %17)
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %21 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @atomic_set(i32* %22, i32 1)
  br label %24

24:                                               ; preds = %19, %10
  %25 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %26 = load i32, i32* @batadv_gw_tvlv_ogm_handler_v1, align 4
  %27 = load i32, i32* @BATADV_TVLV_GW, align 4
  %28 = load i32, i32* @BATADV_TVLV_HANDLER_OGM_CIFNOTFND, align 4
  %29 = call i32 @batadv_tvlv_handler_register(%struct.batadv_priv* %25, i32 %26, i32* null, i32 %27, i32 1, i32 %28)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @batadv_tvlv_handler_register(%struct.batadv_priv*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
