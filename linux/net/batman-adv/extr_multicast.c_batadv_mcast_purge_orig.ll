; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_purge_orig.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_purge_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32, %struct.batadv_priv* }
%struct.batadv_priv = type { i32 }

@BATADV_NO_FLAGS = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR4 = common dso_local global i32 0, align 4
@BATADV_MCAST_WANT_NO_RTR6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_mcast_purge_orig(%struct.batadv_orig_node* %0) #0 {
  %2 = alloca %struct.batadv_orig_node*, align 8
  %3 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %2, align 8
  %4 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %4, i32 0, i32 1
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  store %struct.batadv_priv* %6, %struct.batadv_priv** %3, align 8
  %7 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %11 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %12 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %13 = call i32 @batadv_mcast_want_unsnoop_update(%struct.batadv_priv* %10, %struct.batadv_orig_node* %11, i32 %12)
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %15 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %16 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %17 = call i32 @batadv_mcast_want_ipv4_update(%struct.batadv_priv* %14, %struct.batadv_orig_node* %15, i32 %16)
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %20 = load i32, i32* @BATADV_NO_FLAGS, align 4
  %21 = call i32 @batadv_mcast_want_ipv6_update(%struct.batadv_priv* %18, %struct.batadv_orig_node* %19, i32 %20)
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %24 = load i32, i32* @BATADV_MCAST_WANT_NO_RTR4, align 4
  %25 = call i32 @batadv_mcast_want_rtr4_update(%struct.batadv_priv* %22, %struct.batadv_orig_node* %23, i32 %24)
  %26 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %27 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %28 = load i32, i32* @BATADV_MCAST_WANT_NO_RTR6, align 4
  %29 = call i32 @batadv_mcast_want_rtr6_update(%struct.batadv_priv* %26, %struct.batadv_orig_node* %27, i32 %28)
  %30 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %31 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @batadv_mcast_want_unsnoop_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_ipv4_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_ipv6_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_rtr4_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_rtr6_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
