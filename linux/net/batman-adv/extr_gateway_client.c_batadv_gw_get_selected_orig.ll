; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_get_selected_orig.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_client.c_batadv_gw_get_selected_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32 }
%struct.batadv_priv = type { i32 }
%struct.batadv_gw_node = type { %struct.batadv_orig_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_orig_node* @batadv_gw_get_selected_orig(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.batadv_gw_node*, align 8
  %4 = alloca %struct.batadv_orig_node*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %4, align 8
  %5 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %6 = call %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv* %5)
  store %struct.batadv_gw_node* %6, %struct.batadv_gw_node** %3, align 8
  %7 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %8 = icmp ne %struct.batadv_gw_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %13 = getelementptr inbounds %struct.batadv_gw_node, %struct.batadv_gw_node* %12, i32 0, i32 0
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  store %struct.batadv_orig_node* %14, %struct.batadv_orig_node** %4, align 8
  %15 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %16 = icmp ne %struct.batadv_orig_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10
  %19 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %20 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %19, i32 0, i32 0
  %21 = call i32 @kref_get_unless_zero(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.batadv_orig_node* null, %struct.batadv_orig_node** %4, align 8
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %17
  %26 = call i32 (...) @rcu_read_unlock()
  br label %27

27:                                               ; preds = %25, %9
  %28 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %29 = icmp ne %struct.batadv_gw_node* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %3, align 8
  %32 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  ret %struct.batadv_orig_node* %34
}

declare dso_local %struct.batadv_gw_node* @batadv_gw_get_selected_gw_node(%struct.batadv_priv*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
