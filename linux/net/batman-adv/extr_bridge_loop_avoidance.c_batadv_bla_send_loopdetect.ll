; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_send_loopdetect.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_send_loopdetect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_bla_backbone_gw = type { i32 }

@BATADV_DBG_BLA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Send loopdetect frame for vid %d\0A\00", align 1
@BATADV_CLAIM_TYPE_LOOPDETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_bla_backbone_gw*)* @batadv_bla_send_loopdetect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_bla_send_loopdetect(%struct.batadv_priv* %0, %struct.batadv_bla_backbone_gw* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_bla_backbone_gw*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_bla_backbone_gw* %1, %struct.batadv_bla_backbone_gw** %4, align 8
  %5 = load i32, i32* @BATADV_DBG_BLA, align 4
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %4, align 8
  %8 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @batadv_dbg(i32 %5, %struct.batadv_priv* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %13 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %4, align 8
  %17 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BATADV_CLAIM_TYPE_LOOPDETECT, align 4
  %20 = call i32 @batadv_bla_send_claim(%struct.batadv_priv* %11, i32 %15, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32) #1

declare dso_local i32 @batadv_bla_send_claim(%struct.batadv_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
