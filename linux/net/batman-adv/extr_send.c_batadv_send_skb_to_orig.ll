; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_to_orig.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_send_skb_to_orig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.batadv_orig_node = type { %struct.batadv_priv* }
%struct.batadv_priv = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.batadv_neigh_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_send_skb_to_orig(%struct.sk_buff* %0, %struct.batadv_orig_node* %1, %struct.batadv_hard_iface* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca %struct.batadv_neigh_node*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %5, align 8
  store %struct.batadv_hard_iface* %2, %struct.batadv_hard_iface** %6, align 8
  %10 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %11 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %10, i32 0, i32 0
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  store %struct.batadv_priv* %12, %struct.batadv_priv** %7, align 8
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %14 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %15 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %16 = call %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv* %13, %struct.batadv_orig_node* %14, %struct.batadv_hard_iface* %15)
  store %struct.batadv_neigh_node* %16, %struct.batadv_neigh_node** %8, align 8
  %17 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %18 = icmp ne %struct.batadv_neigh_node* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %24 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %23, i32 0, i32 0
  %25 = call i64 @atomic_read(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %32 = getelementptr inbounds %struct.batadv_neigh_node, %struct.batadv_neigh_node* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %30, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %42 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %43 = call i32 @batadv_frag_send_packet(%struct.sk_buff* %40, %struct.batadv_orig_node* %41, %struct.batadv_neigh_node* %42)
  store i32 %43, i32* %9, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %60

44:                                               ; preds = %27, %22
  %45 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %46 = icmp ne %struct.batadv_hard_iface* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %50 = call i64 @batadv_nc_skb_forward(%struct.sk_buff* %48, %struct.batadv_neigh_node* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINPROGRESS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %59

55:                                               ; preds = %47, %44
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %58 = call i32 @batadv_send_unicast_skb(%struct.sk_buff* %56, %struct.batadv_neigh_node* %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %55, %52
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %8, align 8
  %62 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %61)
  br label %63

63:                                               ; preds = %60, %19
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local %struct.batadv_neigh_node* @batadv_find_router(%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @batadv_frag_send_packet(%struct.sk_buff*, %struct.batadv_orig_node*, %struct.batadv_neigh_node*) #1

declare dso_local i64 @batadv_nc_skb_forward(%struct.sk_buff*, %struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_send_unicast_skb(%struct.sk_buff*, %struct.batadv_neigh_node*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
