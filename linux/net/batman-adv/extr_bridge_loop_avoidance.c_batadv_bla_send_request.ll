; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bridge_loop_avoidance.c_batadv_bla_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_bla_backbone_gw = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BATADV_DBG_BLA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Sending REQUEST to %pM\0A\00", align 1
@BATADV_CLAIM_TYPE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_bla_backbone_gw*)* @batadv_bla_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_bla_send_request(%struct.batadv_bla_backbone_gw* %0) #0 {
  %2 = alloca %struct.batadv_bla_backbone_gw*, align 8
  store %struct.batadv_bla_backbone_gw* %0, %struct.batadv_bla_backbone_gw** %2, align 8
  %3 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %4 = call i32 @batadv_bla_del_backbone_claims(%struct.batadv_bla_backbone_gw* %3)
  %5 = load i32, i32* @BATADV_DBG_BLA, align 4
  %6 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %7 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %10 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @batadv_dbg(i32 %5, %struct.TYPE_5__* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %14 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %17 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %20 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BATADV_CLAIM_TYPE_REQUEST, align 4
  %23 = call i32 @batadv_bla_send_claim(%struct.TYPE_5__* %15, i32 %18, i32 %21, i32 %22)
  %24 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %25 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %24, i32 0, i32 0
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %30 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @atomic_inc(i32* %33)
  %35 = load %struct.batadv_bla_backbone_gw*, %struct.batadv_bla_backbone_gw** %2, align 8
  %36 = getelementptr inbounds %struct.batadv_bla_backbone_gw, %struct.batadv_bla_backbone_gw* %35, i32 0, i32 0
  %37 = call i32 @atomic_set(i32* %36, i32 1)
  br label %38

38:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @batadv_bla_del_backbone_claims(%struct.batadv_bla_backbone_gw*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @batadv_bla_send_claim(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
