; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_flags_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_mla_flags_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.batadv_mcast_mla_flags }
%struct.batadv_mcast_mla_flags = type { i32 }
%struct.batadv_tvlv_mcast_data = type { i32, i32 }

@BATADV_TVLV_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_mcast_mla_flags*)* @batadv_mcast_mla_flags_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_mcast_mla_flags_update(%struct.batadv_priv* %0, %struct.batadv_mcast_mla_flags* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_mcast_mla_flags*, align 8
  %5 = alloca %struct.batadv_tvlv_mcast_data, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_mcast_mla_flags* %1, %struct.batadv_mcast_mla_flags** %4, align 8
  %6 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %7 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %8 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @memcmp(%struct.batadv_mcast_mla_flags* %6, %struct.batadv_mcast_mla_flags* %9, i32 4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %15 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %16 = call i32 @batadv_mcast_bridge_log(%struct.batadv_priv* %14, %struct.batadv_mcast_mla_flags* %15)
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %18 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %19 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @batadv_mcast_flags_log(%struct.batadv_priv* %17, i32 %20)
  %22 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %23 = getelementptr inbounds %struct.batadv_mcast_mla_flags, %struct.batadv_mcast_mla_flags* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.batadv_tvlv_mcast_data, %struct.batadv_tvlv_mcast_data* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.batadv_tvlv_mcast_data, %struct.batadv_tvlv_mcast_data* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %30 = load i32, i32* @BATADV_TVLV_MCAST, align 4
  %31 = call i32 @batadv_tvlv_container_register(%struct.batadv_priv* %29, i32 %30, i32 2, %struct.batadv_tvlv_mcast_data* %5, i32 8)
  %32 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %33 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags** %4, align 8
  %36 = bitcast %struct.batadv_mcast_mla_flags* %34 to i8*
  %37 = bitcast %struct.batadv_mcast_mla_flags* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %38

38:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @memcmp(%struct.batadv_mcast_mla_flags*, %struct.batadv_mcast_mla_flags*, i32) #1

declare dso_local i32 @batadv_mcast_bridge_log(%struct.batadv_priv*, %struct.batadv_mcast_mla_flags*) #1

declare dso_local i32 @batadv_mcast_flags_log(%struct.batadv_priv*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @batadv_tvlv_container_register(%struct.batadv_priv*, i32, i32, %struct.batadv_tvlv_mcast_data*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
