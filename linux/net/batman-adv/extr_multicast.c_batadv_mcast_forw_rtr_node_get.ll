; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_rtr_node_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_rtr_node_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_orig_node* (%struct.batadv_priv*, %struct.ethhdr*)* @batadv_mcast_forw_rtr_node_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_orig_node* @batadv_mcast_forw_rtr_node_get(%struct.batadv_priv* %0, %struct.ethhdr* %1) #0 {
  %3 = alloca %struct.batadv_orig_node*, align 8
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %5, align 8
  %6 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %7 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntohs(i32 %8)
  switch i32 %9, label %16 [
    i32 129, label %10
    i32 128, label %13
  ]

10:                                               ; preds = %2
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %12 = call %struct.batadv_orig_node* @batadv_mcast_forw_rtr4_node_get(%struct.batadv_priv* %11)
  store %struct.batadv_orig_node* %12, %struct.batadv_orig_node** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %15 = call %struct.batadv_orig_node* @batadv_mcast_forw_rtr6_node_get(%struct.batadv_priv* %14)
  store %struct.batadv_orig_node* %15, %struct.batadv_orig_node** %3, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %3, align 8
  br label %17

17:                                               ; preds = %16, %13, %10
  %18 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  ret %struct.batadv_orig_node* %18
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.batadv_orig_node* @batadv_mcast_forw_rtr4_node_get(%struct.batadv_priv*) #1

declare dso_local %struct.batadv_orig_node* @batadv_mcast_forw_rtr6_node_get(%struct.batadv_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
