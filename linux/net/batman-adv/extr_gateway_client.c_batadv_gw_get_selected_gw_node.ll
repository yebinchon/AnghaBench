; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_get_selected_gw_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_get_selected_gw_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_gw_node = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.batadv_gw_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.batadv_gw_node* @rcu_dereference(i32 %8)
  store %struct.batadv_gw_node* %9, %struct.batadv_gw_node** %3, align 8
  %10 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %11 = icmp ne %struct.batadv_gw_node* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %15 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %14, i32 0, i32 0
  %16 = call i32 @kref_get_unless_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.batadv_gw_node* null, %struct.batadv_gw_node** %3, align 8
  br label %19

19:                                               ; preds = %18, %13
  br label %20

20:                                               ; preds = %19, %12
  %21 = call i32 (...) @rcu_read_unlock()
  %22 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  ret %struct.batadv_gw_node* %22
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.batadv_gw_node* @rcu_dereference(i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
