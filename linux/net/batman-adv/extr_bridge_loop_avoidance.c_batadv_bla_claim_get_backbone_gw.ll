; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_claim_get_backbone_gw.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_claim_get_backbone_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_bla_backbone_gw = type { i32 }
%struct.batadv_bla_claim = type { i32, %struct.batadv_bla_backbone_gw* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_bla_backbone_gw* (%struct.batadv_bla_claim*)* @batadv_bla_claim_get_backbone_gw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_bla_backbone_gw* @batadv_bla_claim_get_backbone_gw(%struct.batadv_bla_claim* %0) #0 {
  %2 = alloca %struct.batadv_bla_claim*, align 8
  %3 = alloca %struct.batadv_bla_backbone_gw*, align 8
  store %struct.batadv_bla_claim* %0, %struct.batadv_bla_claim** %2, align 8
  %4 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %7, i32 0, i32 1
  %9 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %8, align 8
  store %struct.batadv_bla_backbone_gw* %9, %struct.batadv_bla_backbone_gw** %3, align 8
  %10 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %3, align 8
  %11 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %10, i32 0, i32 0
  %12 = call i32 @kref_get(i32* %11)
  %13 = load %struct.batadv_bla_claim*, %struct.batadv_bla_claim** %2, align 8
  %14 = getelementptr inbounds %struct.batadv_bla_claim, %struct.batadv_bla_claim* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_bh(i32* %14)
  %16 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %3, align 8
  ret %struct.batadv_bla_backbone_gw* %16
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
