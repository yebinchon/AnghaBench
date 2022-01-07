; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c___batadv_mcast_mla_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c___batadv_mcast_mla_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.batadv_mcast_mla_flags = type { i32 }

@HLIST_HEAD_INIT = common dso_local global %struct.hlist_head zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*)* @__batadv_mcast_mla_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__batadv_mcast_mla_update(%struct.batadv_priv* %0) #0 {
  %2 = alloca %struct.batadv_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hlist_head, align 4
  %5 = alloca %struct.batadv_mcast_mla_flags, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_mcast_mla_flags, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %2, align 8
  %8 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %9 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = bitcast %struct.hlist_head* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.hlist_head* @HLIST_HEAD_INIT to i8*), i64 4, i1 false)
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %13 = call i32 @batadv_mcast_mla_flags_get(%struct.batadv_priv* %12)
  %14 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = bitcast %struct.batadv_mcast_mla_flags* %5 to i8*
  %16 = bitcast %struct.batadv_mcast_mla_flags* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @batadv_mcast_mla_softif_get(%struct.net_device* %17, %struct.hlist_head* %4, %struct.batadv_mcast_mla_flags* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @batadv_mcast_mla_bridge_get(%struct.net_device* %23, %struct.hlist_head* %4, %struct.batadv_mcast_mla_flags* %5)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %30 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %34 = call i32 @batadv_mcast_mla_tt_retract(%struct.batadv_priv* %33, %struct.hlist_head* %4)
  %35 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %36 = call i32 @batadv_mcast_mla_tt_add(%struct.batadv_priv* %35, %struct.hlist_head* %4)
  %37 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %38 = call i32 @batadv_mcast_mla_flags_update(%struct.batadv_priv* %37, %struct.batadv_mcast_mla_flags* %5)
  %39 = load %struct.batadv_priv*, %struct.batadv_priv** %2, align 8
  %40 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %28, %27, %21
  %44 = call i32 @batadv_mcast_mla_list_free(%struct.hlist_head* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @batadv_mcast_mla_flags_get(%struct.batadv_priv*) #2

declare dso_local i32 @batadv_mcast_mla_softif_get(%struct.net_device*, %struct.hlist_head*, %struct.batadv_mcast_mla_flags*) #2

declare dso_local i32 @batadv_mcast_mla_bridge_get(%struct.net_device*, %struct.hlist_head*, %struct.batadv_mcast_mla_flags*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @batadv_mcast_mla_tt_retract(%struct.batadv_priv*, %struct.hlist_head*) #2

declare dso_local i32 @batadv_mcast_mla_tt_add(%struct.batadv_priv*, %struct.hlist_head*) #2

declare dso_local i32 @batadv_mcast_mla_flags_update(%struct.batadv_priv*, %struct.batadv_mcast_mla_flags*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @batadv_mcast_mla_list_free(%struct.hlist_head*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
