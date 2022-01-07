; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_primary_if_select.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_primary_if_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.batadv_hard_iface*)* }
%struct.batadv_hard_iface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_hard_iface*)* @batadv_primary_if_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_primary_if_select(%struct.batadv_priv* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %8 = icmp ne %struct.batadv_hard_iface* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %11 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %10, i32 0, i32 0
  %12 = call i32 @kref_get(i32* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %15 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.batadv_hard_iface* @rcu_dereference_protected(i32 %16, i32 1)
  store %struct.batadv_hard_iface* %17, %struct.batadv_hard_iface** %5, align 8
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %22 = call i32 @rcu_assign_pointer(i32 %20, %struct.batadv_hard_iface* %21)
  %23 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %24 = icmp ne %struct.batadv_hard_iface* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %38

26:                                               ; preds = %13
  %27 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %28 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.batadv_hard_iface*)*, i32 (%struct.batadv_hard_iface*)** %31, align 8
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %34 = call i32 %32(%struct.batadv_hard_iface* %33)
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %37 = call i32 @batadv_primary_if_update_addr(%struct.batadv_priv* %35, %struct.batadv_hard_iface* %36)
  br label %38

38:                                               ; preds = %26, %25
  %39 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %40 = icmp ne %struct.batadv_hard_iface* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %43 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %42)
  br label %44

44:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.batadv_hard_iface* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_primary_if_update_addr(%struct.batadv_priv*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
