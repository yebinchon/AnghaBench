; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_primary_if_update_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_hard-interface.c_batadv_primary_if_update_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_hard_iface*)* @batadv_primary_if_update_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_primary_if_update_addr(%struct.batadv_priv* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %6 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %7 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %6)
  store %struct.batadv_hard_iface* %7, %struct.batadv_hard_iface** %5, align 8
  %8 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %9 = icmp ne %struct.batadv_hard_iface* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %19

11:                                               ; preds = %2
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %13 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %14 = call i32 @batadv_dat_init_own_addr(%struct.batadv_priv* %12, %struct.batadv_hard_iface* %13)
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %18 = call i32 @batadv_bla_update_orig_address(%struct.batadv_priv* %15, %struct.batadv_hard_iface* %16, %struct.batadv_hard_iface* %17)
  br label %19

19:                                               ; preds = %11, %10
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %21 = icmp ne %struct.batadv_hard_iface* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %24 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %23)
  br label %25

25:                                               ; preds = %22, %19
  ret void
}

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i32 @batadv_dat_init_own_addr(%struct.batadv_priv*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_bla_update_orig_address(%struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
