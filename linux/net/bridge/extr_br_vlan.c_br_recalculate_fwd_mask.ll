; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_recalculate_fwd_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan.c_br_recalculate_fwd_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i32* }

@BROPT_VLAN_ENABLED = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@BR_GROUPFWD_DEFAULT = common dso_local global i32 0, align 4
@BR_GROUPFWD_8021AD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_recalculate_fwd_mask(%struct.net_bridge* %0) #0 {
  %2 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %2, align 8
  %3 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %4 = load i32, i32* @BROPT_VLAN_ENABLED, align 4
  %5 = call i32 @br_opt_get(%struct.net_bridge* %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %9 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @ETH_P_8021Q, align 4
  %12 = call i64 @htons(i32 %11)
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %7, %1
  %15 = load i32, i32* @BR_GROUPFWD_DEFAULT, align 4
  %16 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %17 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %30

18:                                               ; preds = %7
  %19 = load i32, i32* @BR_GROUPFWD_8021AD, align 4
  %20 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %21 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 5
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %19, %26
  %28 = load %struct.net_bridge*, %struct.net_bridge** %2, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %18, %14
  ret void
}

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
