; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_check_client_stop.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_check_client_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_gw_node = type { i32 }

@BATADV_GW_MODE_CLIENT = common dso_local global i64 0, align 8
@BATADV_UEV_GW = common dso_local global i32 0, align 4
@BATADV_UEV_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_gw_check_client_stop(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.batadv_gw_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %4 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i64 @atomic_read(i32* %6)
  %8 = load i64, i64* @BATADV_GW_MODE_CLIENT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %13 = call %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv* %12)
  store %struct.batadv_gw_node* %13, %struct.batadv_gw_node** %3, align 8
  %14 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %15 = icmp ne %struct.batadv_gw_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %26

17:                                               ; preds = %11
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %19 = call i32 @batadv_gw_select(%struct.batadv_priv* %18, i32* null)
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %21 = load i32, i32* @BATADV_UEV_GW, align 4
  %22 = load i32, i32* @BATADV_UEV_DEL, align 4
  %23 = call i32 @batadv_throw_uevent(%struct.batadv_priv* %20, i32 %21, i32 %22, i32* null)
  %24 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %25 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %24)
  br label %26

26:                                               ; preds = %17, %16, %10
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_gw_select(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_throw_uevent(%struct.batadv_priv*, i32, i32, i32*) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
