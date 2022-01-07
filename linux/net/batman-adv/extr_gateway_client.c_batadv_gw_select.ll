; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_select.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.batadv_gw_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_gw_node*)* @batadv_gw_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_gw_select(%struct.batadv_priv* %0, %struct.batadv_gw_node* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_gw_node*, align 8
  %5 = alloca %struct.batadv_gw_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_gw_node* %1, %struct.batadv_gw_node** %4, align 8
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %4, align 8
  %11 = icmp ne %struct.batadv_gw_node* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %13, i32 0, i32 0
  %15 = call i32 @kref_get(i32* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %18 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.batadv_gw_node* @rcu_dereference_protected(i32 %20, i32 1)
  store %struct.batadv_gw_node* %21, %struct.batadv_gw_node** %5, align 8
  %22 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %23 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %4, align 8
  %27 = call i32 @rcu_assign_pointer(i32 %25, %struct.batadv_gw_node* %26)
  %28 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %5, align 8
  %29 = icmp ne %struct.batadv_gw_node* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %5, align 8
  %32 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %31)
  br label %33

33:                                               ; preds = %30, %16
  %34 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %35 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_bh(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.batadv_gw_node* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.batadv_gw_node*) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
