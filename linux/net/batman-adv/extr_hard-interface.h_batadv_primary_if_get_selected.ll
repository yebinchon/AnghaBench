; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.h_batadv_primary_if_get_selected.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.h_batadv_primary_if_get_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { i32 }
%struct.batadv_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_hard_iface* (%struct.batadv_priv*)* @batadv_primary_if_get_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.batadv_hard_iface* @rcu_dereference(i32 %7)
  store %struct.batadv_hard_iface* %8, %struct.batadv_hard_iface** %3, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %10 = icmp ne %struct.batadv_hard_iface* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %14 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %13, i32 0, i32 0
  %15 = call i32 @kref_get_unless_zero(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %3, align 8
  br label %18

18:                                               ; preds = %17, %12
  br label %19

19:                                               ; preds = %18, %11
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  ret %struct.batadv_hard_iface* %21
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.batadv_hard_iface* @rcu_dereference(i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
