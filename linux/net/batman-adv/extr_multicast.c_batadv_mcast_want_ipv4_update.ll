; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_want_ipv4_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_want_ipv4_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.hlist_head }
%struct.hlist_head = type { i32 }
%struct.batadv_orig_node = type { i32, i32, %struct.hlist_node }
%struct.hlist_node = type { i32 }

@BATADV_MCAST_WANT_ALL_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i32)* @batadv_mcast_want_ipv4_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_mcast_want_ipv4_update(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i32 %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hlist_node*, align 8
  %8 = alloca %struct.hlist_head*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %10 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %9, i32 0, i32 2
  store %struct.hlist_node* %10, %struct.hlist_node** %7, align 8
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store %struct.hlist_head* %13, %struct.hlist_head** %8, align 8
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %15 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV4, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %3
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %23 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV4, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %21
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %30 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %34 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.hlist_node*, %struct.hlist_node** %7, align 8
  %38 = call i32 @hlist_unhashed(%struct.hlist_node* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.hlist_node*, %struct.hlist_node** %7, align 8
  %44 = load %struct.hlist_head*, %struct.hlist_head** %8, align 8
  %45 = call i32 @hlist_add_head_rcu(%struct.hlist_node* %43, %struct.hlist_head* %44)
  %46 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %47 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  br label %81

50:                                               ; preds = %21, %3
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV4, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %50
  %56 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %57 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BATADV_MCAST_WANT_ALL_IPV4, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %55
  %63 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %64 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @atomic_dec(i32* %65)
  %67 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %68 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.hlist_node*, %struct.hlist_node** %7, align 8
  %72 = call i32 @hlist_unhashed(%struct.hlist_node* %71)
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.hlist_node*, %struct.hlist_node** %7, align 8
  %75 = call i32 @hlist_del_init_rcu(%struct.hlist_node* %74)
  %76 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %77 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  br label %80

80:                                               ; preds = %62, %55, %50
  br label %81

81:                                               ; preds = %80, %28
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hlist_unhashed(%struct.hlist_node*) #1

declare dso_local i32 @hlist_add_head_rcu(%struct.hlist_node*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(%struct.hlist_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
