; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_orig_ifinfo_sum.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_orig_ifinfo_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_orig_ifinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_orig_node*, %struct.batadv_hard_iface*)* @batadv_iv_orig_ifinfo_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_orig_ifinfo_sum(%struct.batadv_orig_node* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.batadv_orig_node*, align 8
  %5 = alloca %struct.batadv_hard_iface*, align 8
  %6 = alloca %struct.batadv_orig_ifinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %4, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %5, align 8
  %8 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %5, align 8
  %10 = call %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_get(%struct.batadv_orig_node* %8, %struct.batadv_hard_iface* %9)
  store %struct.batadv_orig_ifinfo* %10, %struct.batadv_orig_ifinfo** %6, align 8
  %11 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %6, align 8
  %12 = icmp ne %struct.batadv_orig_ifinfo* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %16 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %6, align 8
  %20 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %4, align 8
  %24 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  %27 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %6, align 8
  %28 = call i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %14, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
