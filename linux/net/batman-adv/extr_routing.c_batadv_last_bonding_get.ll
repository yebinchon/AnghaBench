; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_last_bonding_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_last_bonding_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_ifinfo = type { i32 }
%struct.batadv_orig_node = type { i32, %struct.batadv_orig_ifinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.batadv_orig_ifinfo* (%struct.batadv_orig_node*)* @batadv_last_bonding_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.batadv_orig_ifinfo* @batadv_last_bonding_get(%struct.batadv_orig_node* %0) #0 {
  %2 = alloca %struct.batadv_orig_node*, align 8
  %3 = alloca %struct.batadv_orig_ifinfo*, align 8
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %2, align 8
  %4 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %5 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %8 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %7, i32 0, i32 1
  %9 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %8, align 8
  store %struct.batadv_orig_ifinfo* %9, %struct.batadv_orig_ifinfo** %3, align 8
  %10 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %3, align 8
  %11 = icmp ne %struct.batadv_orig_ifinfo* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %3, align 8
  %14 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %13, i32 0, i32 0
  %15 = call i32 @kref_get(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %2, align 8
  %18 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_bh(i32* %18)
  %20 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %3, align 8
  ret %struct.batadv_orig_ifinfo* %20
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
