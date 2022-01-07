; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_orig_node_vlan_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_orig_node_vlan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_orig_node_vlan = type { i16, i32, i32 }
%struct.batadv_orig_node = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_new(%struct.batadv_orig_node* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.batadv_orig_node*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.batadv_orig_node_vlan*, align 8
  store %struct.batadv_orig_node* %0, %struct.batadv_orig_node** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %10 = load i16, i16* %4, align 2
  %11 = call %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_get(%struct.batadv_orig_node* %9, i16 zeroext %10)
  store %struct.batadv_orig_node_vlan* %11, %struct.batadv_orig_node_vlan** %5, align 8
  %12 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  %13 = icmp ne %struct.batadv_orig_node_vlan* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.batadv_orig_node_vlan* @kzalloc(i32 12, i32 %16)
  store %struct.batadv_orig_node_vlan* %17, %struct.batadv_orig_node_vlan** %5, align 8
  %18 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  %19 = icmp ne %struct.batadv_orig_node_vlan* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %36

21:                                               ; preds = %15
  %22 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  %23 = getelementptr inbounds %struct.batadv_orig_node_vlan, %struct.batadv_orig_node_vlan* %22, i32 0, i32 2
  %24 = call i32 @kref_init(i32* %23)
  %25 = load i16, i16* %4, align 2
  %26 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  %27 = getelementptr inbounds %struct.batadv_orig_node_vlan, %struct.batadv_orig_node_vlan* %26, i32 0, i32 0
  store i16 %25, i16* %27, align 4
  %28 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  %29 = getelementptr inbounds %struct.batadv_orig_node_vlan, %struct.batadv_orig_node_vlan* %28, i32 0, i32 2
  %30 = call i32 @kref_get(i32* %29)
  %31 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  %32 = getelementptr inbounds %struct.batadv_orig_node_vlan, %struct.batadv_orig_node_vlan* %31, i32 0, i32 1
  %33 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %34 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %33, i32 0, i32 1
  %35 = call i32 @hlist_add_head_rcu(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %21, %20, %14
  %37 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %3, align 8
  %38 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  %40 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %5, align 8
  ret %struct.batadv_orig_node_vlan* %40
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_get(%struct.batadv_orig_node*, i16 zeroext) #1

declare dso_local %struct.batadv_orig_node_vlan* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
