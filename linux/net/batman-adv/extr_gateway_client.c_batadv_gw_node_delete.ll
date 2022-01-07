; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_node_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_node_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_gateway_data = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_gw_node_delete(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_orig_node*, align 8
  %5 = alloca %struct.batadv_tvlv_gateway_data, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %4, align 8
  %6 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, %struct.batadv_tvlv_gateway_data* %5, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %9 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %10 = call i32 @batadv_gw_node_update(%struct.batadv_priv* %8, %struct.batadv_orig_node* %9, %struct.batadv_tvlv_gateway_data* %5)
  ret void
}

declare dso_local i32 @batadv_gw_node_update(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_gateway_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
