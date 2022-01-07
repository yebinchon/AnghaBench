; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_last_bonding_replace.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_routing.c_batadv_last_bonding_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node = type { i32, %struct.batadv_orig_ifinfo* }
%struct.batadv_orig_ifinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_orig_node*, %struct.batadv_orig_ifinfo*)* @batadv_last_bonding_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_last_bonding_replace(%struct.batadv_orig_node* %0, %struct.batadv_orig_ifinfo* %1) #0 {
  %3 = alloca %struct.batadv_orig_node*, align 8
  %4 = alloca %struct.batadv_orig_ifinfo*, align 8
  %5 = alloca %struct.batadv_orig_ifinfo*, align 8
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %3, align 8
  store %struct.batadv_orig_ifinfo* %1, %struct.batadv_orig_ifinfo** %4, align 8
  %6 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %10 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %9, i32 0, i32 1
  %11 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %10, align 8
  store %struct.batadv_orig_ifinfo* %11, %struct.batadv_orig_ifinfo** %5, align 8
  %12 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %4, align 8
  %13 = icmp ne %struct.batadv_orig_ifinfo* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %4, align 8
  %16 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %15, i32 0, i32 0
  %17 = call i32 @kref_get(i32* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %4, align 8
  %20 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %21 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %20, i32 0, i32 1
  store %struct.batadv_orig_ifinfo* %19, %struct.batadv_orig_ifinfo** %21, align 8
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %23 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %26 = icmp ne %struct.batadv_orig_ifinfo* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %5, align 8
  %29 = call i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo* %28)
  br label %30

30:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
