; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_neigh_ifinfo_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_neigh_ifinfo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_neigh_ifinfo = type { i32, i32, %struct.batadv_hard_iface* }
%struct.batadv_neigh_node = type { i32, i32 }
%struct.batadv_hard_iface = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_new(%struct.batadv_neigh_node* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_neigh_node*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_neigh_ifinfo*, align 8
  store %struct.batadv_neigh_node* %0, %struct.batadv_neigh_node** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %6 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %3, align 8
  %7 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %3, align 8
  %10 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %11 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %9, %struct.batadv_hard_iface* %10)
  store %struct.batadv_neigh_ifinfo* %11, %struct.batadv_neigh_ifinfo** %5, align 8
  %12 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %13 = icmp ne %struct.batadv_neigh_ifinfo* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.batadv_neigh_ifinfo* @kzalloc(i32 16, i32 %16)
  store %struct.batadv_neigh_ifinfo* %17, %struct.batadv_neigh_ifinfo** %5, align 8
  %18 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %19 = icmp ne %struct.batadv_neigh_ifinfo* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %46

21:                                               ; preds = %15
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %23 = icmp ne %struct.batadv_hard_iface* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %26 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %25, i32 0, i32 0
  %27 = call i32 @kref_get(i32* %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %30 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %29, i32 0, i32 0
  %31 = call i32 @INIT_HLIST_NODE(i32* %30)
  %32 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %33 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %32, i32 0, i32 1
  %34 = call i32 @kref_init(i32* %33)
  %35 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %36 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %37 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %36, i32 0, i32 2
  store %struct.batadv_hard_iface* %35, %struct.batadv_hard_iface** %37, align 8
  %38 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %39 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %38, i32 0, i32 1
  %40 = call i32 @kref_get(i32* %39)
  %41 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  %42 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %41, i32 0, i32 0
  %43 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %3, align 8
  %44 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %43, i32 0, i32 1
  %45 = call i32 @hlist_add_head_rcu(i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %28, %20, %14
  %47 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %3, align 8
  %48 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %5, align 8
  ret %struct.batadv_neigh_ifinfo* %50
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, %struct.batadv_hard_iface*) #1

declare dso_local %struct.batadv_neigh_ifinfo* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
